#include <bits/stdc++.h>
using namespace std;
struct Mat{ double a[3][3]; };
struct Vec{ double x[3]; };
struct Aff{ Mat M; Vec b; };
Mat mul(const Mat&A,const Mat&B){Mat C{}; for(int i=0;i<3;i++)for(int j=0;j<3;j++){double s=0; for(int k=0;k<3;k++)s+=A.a[i][k]*B.a[k][j]; C.a[i][j]=s;} return C;}
Vec mv(const Mat&A,const Vec&v){Vec r{}; for(int i=0;i<3;i++){double s=0; for(int k=0;k<3;k++)s+=A.a[i][k]*v.x[k]; r.x[i]=s;} return r;}
Vec addv(const Vec&a,const Vec&b){return Vec{{a.x[0]+b.x[0],a.x[1]+b.x[1],a.x[2]+b.x[2]}};}
Vec subv(const Vec&a,const Vec&b){return Vec{{a.x[0]-b.x[0],a.x[1]-b.x[1],a.x[2]-b.x[2]}};}
Vec scalev(const Vec&a,double s){return Vec{{a.x[0]*s,a.x[1]*s,a.x[2]*s}};}
double dot(const Vec&a,const Vec&b){return a.x[0]*b.x[0]+a.x[1]*b.x[1]+a.x[2]*b.x[2];}
Vec crossv(const Vec&a,const Vec&b){return Vec{{a.x[1]*b.x[2]-a.x[2]*b.x[1],a.x[2]*b.x[0]-a.x[0]*b.x[2],a.x[0]*b.x[1]-a.x[1]*b.x[0]}};}
double norm(const Vec&a){return sqrt(dot(a,a));}
Vec rowv(const Mat&A,int i){return Vec{{A.a[i][0],A.a[i][1],A.a[i][2]}};}
Mat reflM(Vec n){ double nn=dot(n,n); Mat R{}; for(int i=0;i<3;i++)for(int j=0;j<3;j++) R.a[i][j]=(i==j?1.0:0.0)-2*n.x[i]*n.x[j]/nn; return R; }
Vec reflD(Vec n,double c){double nn=dot(n,n); return scalev(n,2*c/nn);}
Mat Iden(){Mat I{}; for(int i=0;i<3;i++) for(int j=0;j<3;j++) I.a[i][j]=(i==j); return I;}
Aff compose_aff(const Aff&T,const Aff&r){ Aff C; C.M=mul(T.M,r.M); C.b=addv(mv(T.M,r.b),T.b); return C; }
Vec apply_aff(const Aff&T,const Vec&p){return addv(mv(T.M,p),T.b);}
Vec reflect_vec(const Vec&v,const Vec&n){return subv(v, scalev(n, 2*dot(n,v)/dot(n,n)));}

Mat Rpair[7]; Vec ncan[7]; int facePlus[7], faceMinus[7];
Vec fn[14]; double fc[14]; Aff raff[14]; const char* fname[14]={"x+","x-","y+","y-","z+","z-","T---","T--+","T-+-","T-++","T+--","T+-+","T++-","T+++"};
int word[13]; int remc[7]; Mat pref[14];
long long leaves=0, ident=0, denpass=0, insideStart=0, simok=0, axisSolveFail=0;
const double EPS=1e-10;

bool eigen_axis(const Mat&M, Vec&u){
    Mat A=M; for(int i=0;i<3;i++) A.a[i][i]-=1.0;
    Vec best{{0,0,0}}; double bn=0;
    for(int i=0;i<3;i++) for(int j=i+1;j<3;j++){ Vec c=crossv(rowv(A,i), rowv(A,j)); double cn=norm(c); if(cn>bn){bn=cn; best=c;} }
    if(bn < 1e-8) return false;
    for(int i=0;i<3;i++) best.x[i]/=bn;
    Vec Au=mv(A,best); if(norm(Au)>1e-6) return false;
    u=best; return true;
}
double matdiffI(const Mat&M){double s=0; for(int i=0;i<3;i++)for(int j=0;j<3;j++){double d=M.a[i][j]-(i==j?1.0:0.0); s+=d*d;} return sqrt(s);}

bool solve4(double A[4][5], double sol[4]){
    for(int col=0; col<4; col++){
        int piv=col; for(int r=col+1;r<4;r++) if(fabs(A[r][col])>fabs(A[piv][col])) piv=r;
        if(fabs(A[piv][col])<1e-9) return false;
        if(piv!=col) for(int c=col;c<5;c++) swap(A[piv][c],A[col][c]);
        double div=A[col][col]; for(int c=col;c<5;c++) A[col][c]/=div;
        for(int r=0;r<4;r++) if(r!=col){double f=A[r][col]; if(f!=0) for(int c=col;c<5;c++) A[r][c]-=f*A[col][c];}
    }
    for(int i=0;i<4;i++) sol[i]=A[i][4]; return true;
}

int next_hit(Vec&p, Vec&v, Vec&q, double&tbest){
    tbest=1e100; int bi=-1;
    for(int i=0;i<14;i++){
        double den=dot(fn[i],v); if(den<=1e-9) continue;
        double t=(fc[i]-dot(fn[i],p))/den;
        if(t>1e-9 && t<tbest){tbest=t; bi=i;}
    }
    if(bi<0) return -1; q=addv(p,scalev(v,tbest)); return bi;
}

bool simulate_check(const int seq[14], Vec p, Vec v){
    Vec startp=p, startv=v;
    int expected[14]; for(int i=0;i<13;i++) expected[i]=seq[i+1]; expected[13]=seq[0];
    for(int k=0;k<14;k++){
        Vec q; double t; int hit=next_hit(p,v,q,t);
        if(hit!=expected[k]) return false;
        // interior margin
        for(int j=0;j<14;j++) if(j!=hit){ if(dot(fn[j],q)>fc[j]-1e-7) return false; }
        v=reflect_vec(v,fn[hit]); p=q;
    }
    if(norm(subv(p,startp))>1e-6*(1+norm(startp))) return false;
    if(norm(subv(v,startv))>1e-6*(1+norm(startv))) return false;
    return true;
}

void printseq(const int seq[14]){ for(int i=0;i<14;i++){ if(i) cerr<<" "; cerr<<fname[seq[i]];} cerr<<"\n"; }

void process_leaf(){
    leaves++;
    Mat Mlin=mul(pref[13], Rpair[0]);
    if(matdiffI(Mlin)<1e-8){ ident++; return; }
    Vec u; if(!eigen_axis(Mlin,u)) return;
    if(u.x[0] > 0) for(int i=0;i<3;i++) u.x[i]=-u.x[i];
    if(u.x[0] >= -1e-9) return;
    Vec mf=mv(pref[13], ncan[0]); if(dot(mf,u)<=1e-9) return;
    int signsum[7]={0}; int seq[14]; seq[0]=0;
    for(int i=0;i<13;i++){
        int L=word[i]; Vec m=mv(pref[i], ncan[L]); double d=dot(m,u);
        if(fabs(d)<=1e-9) return;
        int s=(d>0)?1:-1;
        if(L==0){ if(s!=-1) return; }
        else signsum[L]+=s;
        seq[i+1]=(s>0?facePlus[L]:faceMinus[L]);
    }
    for(int L=1;L<7;L++) if(signsum[L]!=0) return;
    denpass++;
    // affine T over seq[1..13]
    Aff T{Iden(), Vec{{0,0,0}}};
    for(int i=1;i<14;i++) T=compose_aff(T, raff[seq[i]]);
    Aff A=compose_aff(T, raff[seq[0]]);
    // sanity M same and not identity
    // solve (M-I)p + b = lambda u, x=1
    double aug[4][5]{};
    for(int r=0;r<3;r++){
        for(int c=0;c<3;c++) aug[r][c]=A.M.a[r][c]-(r==c?1.0:0.0);
        aug[r][3]=-u.x[r]; aug[r][4]=-A.b.x[r];
    }
    aug[3][0]=1; aug[3][1]=0; aug[3][2]=0; aug[3][3]=0; aug[3][4]=1;
    double sol[4]; double augcopy[4][5]; memcpy(augcopy,aug,sizeof(aug));
    if(!solve4(augcopy,sol)){axisSolveFail++; return;}
    Vec p{{sol[0],sol[1],sol[2]}};
    // start interior x+ face
    for(int j=0;j<14;j++) if(j!=0){ if(dot(fn[j],p)>fc[j]-1e-8) return; }
    insideStart++;
    Vec Ap=apply_aff(A,p); Vec w=subv(Ap,p);
    if(norm(w)<1e-8) return;
    if(dot(fn[0],w)>=-1e-8) return;
    if(simulate_check(seq,p,w)){
        simok++;
        cerr<<"FOUND axis\n"; printseq(seq); cerr<<setprecision(17)<<"p "<<p.x[0]<<" "<<p.x[1]<<" "<<p.x[2]<<" w "<<w.x[0]<<" "<<w.x[1]<<" "<<w.x[2]<<" lambda "<<sol[3]<<"\n"; exit(0);
    }
}
void rec(int pos){
    if(pos==13){ process_leaf(); return; }
    for(int L=0;L<7;L++) if(remc[L]>0){ remc[L]--; word[pos]=L; pref[pos+1]=mul(pref[pos], Rpair[L]); rec(pos+1); remc[L]++; }
}
int main(){
    ncan[0]=Vec{{1,0,0}}; ncan[1]=Vec{{0,1,0}}; ncan[2]=Vec{{0,0,1}}; ncan[3]=Vec{{1,1,1}}; ncan[4]=Vec{{1,1,-1}}; ncan[5]=Vec{{1,-1,1}}; ncan[6]=Vec{{-1,1,1}};
    for(int i=0;i<7;i++) Rpair[i]=reflM(ncan[i]);
    facePlus[0]=0; faceMinus[0]=1; facePlus[1]=2; faceMinus[1]=3; facePlus[2]=4; faceMinus[2]=5; facePlus[3]=13; faceMinus[3]=6; facePlus[4]=12; faceMinus[4]=7; facePlus[5]=11; faceMinus[5]=8; facePlus[6]=9; faceMinus[6]=10;
    // face normals/c in index order
    fn[0]=Vec{{1,0,0}}; fc[0]=1; fn[1]=Vec{{-1,0,0}}; fc[1]=1; fn[2]=Vec{{0,1,0}}; fc[2]=1; fn[3]=Vec{{0,-1,0}}; fc[3]=1; fn[4]=Vec{{0,0,1}}; fc[4]=1; fn[5]=Vec{{0,0,-1}}; fc[5]=1;
    int idx=6; for(int a=-1;a<=1;a+=2) for(int b=-1;b<=1;b+=2) for(int c=-1;c<=1;c+=2){ fn[idx]=Vec{{(double)a,(double)b,(double)c}}; fc[idx]=2; idx++; }
    for(int i=0;i<14;i++){ raff[i].M=reflM(fn[i]); raff[i].b=reflD(fn[i],fc[i]); }
    remc[0]=1; for(int i=1;i<7;i++) remc[i]=2; pref[0]=Iden();
    auto t0=chrono::high_resolution_clock::now(); rec(0); auto t1=chrono::high_resolution_clock::now();
    cerr<<"DONE leaves "<<leaves<<" ident "<<ident<<" denpass "<<denpass<<" insideStart "<<insideStart<<" simok "<<simok<<" solveFail "<<axisSolveFail<<" time "<<chrono::duration<double>(t1-t0).count()<<"\n";
}
