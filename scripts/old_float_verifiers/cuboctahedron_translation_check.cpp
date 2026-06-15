#include <bits/stdc++.h>
using namespace std; struct Mat{double a[3][3];}; struct Vec{double x[3];}; struct Pt{double y,z;};
Mat mul(const Mat&A,const Mat&B){Mat C{}; for(int i=0;i<3;i++)for(int j=0;j<3;j++){double s=0;for(int k=0;k<3;k++)s+=A.a[i][k]*B.a[k][j];C.a[i][j]=s;}return C;}
Vec mv(const Mat&A,const Vec&v){Vec r{}; for(int i=0;i<3;i++){double s=0;for(int k=0;k<3;k++)s+=A.a[i][k]*v.x[k];r.x[i]=s;}return r;}
Vec addv(Vec a,Vec b){return Vec{{a.x[0]+b.x[0],a.x[1]+b.x[1],a.x[2]+b.x[2]}};} Vec subv(Vec a,Vec b){return Vec{{a.x[0]-b.x[0],a.x[1]-b.x[1],a.x[2]-b.x[2]}};} Vec scalev(Vec a,double s){return Vec{{a.x[0]*s,a.x[1]*s,a.x[2]*s}};}
double dot(Vec a,Vec b){return a.x[0]*b.x[0]+a.x[1]*b.x[1]+a.x[2]*b.x[2];} double norm(Vec a){return sqrt(dot(a,a));}
Mat refl(Vec n){double nn=dot(n,n); Mat R{}; for(int i=0;i<3;i++)for(int j=0;j<3;j++)R.a[i][j]=(i==j)-2*n.x[i]*n.x[j]/nn;return R;} Mat Iden(){Mat I{};for(int i=0;i<3;i++)for(int j=0;j<3;j++)I.a[i][j]=(i==j);return I;} double matdiffI(Mat M){double s=0;for(int i=0;i<3;i++)for(int j=0;j<3;j++){double d=M.a[i][j]-(i==j);s+=d*d;}return sqrt(s);}
Vec reflect_vec(Vec v,Vec n){return subv(v,scalev(n,2*dot(n,v)/dot(n,n)));}
Vec ncan[7], dcan[7], fn[14]; double fc[14]; Mat R[7]; int word[13], remc[7]; Mat pref[14]; int facePlus[7]={0,2,4,13,12,11,9}; int faceMinus[7]={1,3,5,6,7,8,10}; const char* fname[14]={"x+","x-","y+","y-","z+","z-","T---","T--+","T-+-","T-++","T+--","T+-+","T++-","T+++"};
long long leaves=0, ident=0, signassign=0, inward=0, denpass=0, polypos=0, simok=0;

vector<Pt> clip_poly(vector<Pt>&poly,double A,double B,double C){
    vector<Pt> res; if(poly.empty()) return res; const double EPS=1e-10;
    int n=poly.size(); res.reserve(n+1);
    auto val=[&](const Pt&p){return A*p.y+B*p.z-C;};
    for(int i=0;i<n;i++){
        Pt P=poly[i], Q=poly[(i+1)%n]; double vP=val(P), vQ=val(Q); bool inP=vP<=EPS, inQ=vQ<=EPS;
        if(inP && inQ){res.push_back(Q);}
        else if(inP && !inQ){ double den=A*(Q.y-P.y)+B*(Q.z-P.z); if(fabs(den)>1e-15){double t=(C-A*P.y-B*P.z)/den; res.push_back(Pt{P.y+t*(Q.y-P.y), P.z+t*(Q.z-P.z)});} }
        else if(!inP && inQ){ double den=A*(Q.y-P.y)+B*(Q.z-P.z); if(fabs(den)>1e-15){double t=(C-A*P.y-B*P.z)/den; res.push_back(Pt{P.y+t*(Q.y-P.y), P.z+t*(Q.z-P.z)});} res.push_back(Q); }
    }
    return res;
}
double area_poly(const vector<Pt>&p){double a=0;int n=p.size();for(int i=0;i<n;i++){auto P=p[i],Q=p[(i+1)%n];a+=P.y*Q.z-P.z*Q.y;}return fabs(a)*0.5;}
Pt centroid_poly(const vector<Pt>&p){double A=0,cy=0,cz=0;int n=p.size();for(int i=0;i<n;i++){auto P=p[i],Q=p[(i+1)%n];double cr=P.y*Q.z-Q.y*P.z;A+=cr;cy+=(P.y+Q.y)*cr;cz+=(P.z+Q.z)*cr;} if(fabs(A)<1e-20){double sy=0,sz=0;for(auto &P:p){sy+=P.y;sz+=P.z;}return Pt{sy/n,sz/n};} return Pt{cy/(3*A),cz/(3*A)};}

int next_hit(Vec p,Vec v,Vec&q,double&tbest){tbest=1e100;int bi=-1;for(int i=0;i<14;i++){double den=dot(fn[i],v);if(den<=1e-9)continue;double t=(fc[i]-dot(fn[i],p))/den;if(t>1e-9&&t<tbest){tbest=t;bi=i;}}if(bi<0)return -1;q=addv(p,scalev(v,tbest));return bi;}
bool simulate_check(const int seq[14], Vec p, Vec v){Vec sp=p,sv=v;int expected[14];for(int i=0;i<13;i++)expected[i]=seq[i+1];expected[13]=seq[0];for(int k=0;k<14;k++){Vec q;double t;int hit=next_hit(p,v,q,t);if(hit!=expected[k])return false;for(int j=0;j<14;j++)if(j!=hit){if(dot(fn[j],q)>fc[j]-1e-7)return false;}v=reflect_vec(v,fn[hit]);p=q;}return norm(subv(p,sp))<1e-6*(1+norm(sp))&&norm(subv(v,sv))<1e-6*(1+norm(sv));}
void printseq(const int seq[14]){for(int i=0;i<14;i++){if(i)cerr<<" ";cerr<<fname[seq[i]];}cerr<<"\n";}

bool add_half(vector<Pt>&poly,double A,double B,double C){poly=clip_poly(poly,A,B,C); return area_poly(poly)>1e-12;}

bool feasible_polygon(const int seq[14], const Vec b, Vec bpref[14]){
    vector<Pt> poly={{1,0},{0,1},{-1,0},{0,-1}}; // y,z on x=1 square face
    // Precompute alphas for i=1..14: alpha = c0 + cy*y + cz*z
    double ac[15], ay[15], az[15]; ac[0]=0; ay[0]=az[0]=0;
    for(int i=1;i<=14;i++){
        int hitface = (i<14? seq[i] : seq[0]);
        Mat M = pref[i-1]; Vec t = bpref[i-1]; Vec n=fn[hitface]; double c=fc[hitface];
        Vec m=mv(M,n); double h=c+dot(m,t); double den=dot(m,b); if(den<=1e-9)return false;
        ac[i]=(h-m.x[0])/den; ay[i]=-m.x[1]/den; az[i]=-m.x[2]/den;
        // order alpha_i - alpha_{i-1} >=0 -> (ayprev-ay)y +(azprev-az)z <= ac - acprev
        if(!add_half(poly, ay[i-1]-ay[i], az[i-1]-az[i], ac[i]-ac[i-1])) return false;
        // hit point in face: for all g != hitface in copy i-1
        for(int g=0; g<14; g++) if(g!=hitface){
            Vec a=mv(M,fn[g]); double hg=fc[g]+dot(a,t); double ab=dot(a,b);
            double A=a.x[1]+ab*ay[i]; double B=a.x[2]+ab*az[i]; double C=hg - a.x[0] - ab*ac[i];
            if(!add_half(poly,A,B,C)) return false;
        }
    }
    double ar=area_poly(poly); if(ar<=1e-10)return false; polypos++;
    Pt cen=centroid_poly(poly); Vec p{{1,cen.y,cen.z}};
    if(simulate_check(seq,p,b)){
        simok++; cerr<<"FOUND translation area "<<ar<<" centroid "<<cen.y<<" "<<cen.z<<" b "<<setprecision(17)<<b.x[0]<<" "<<b.x[1]<<" "<<b.x[2]<<"\n"; printseq(seq); return true;
    } else {
        // Try vertices average slightly? print diagnostic maybe false positive due non-strict/numeric
        // cerr<<"poly positive but sim fail area "<<ar<<"\n";
        return false;
    }
}

void process_identity(){
    ident++; int pos[7][2]; int cnt[7]={0}; for(int i=0;i<13;i++){int L=word[i]; pos[L][cnt[L]++]=i;}
    for(int mask=0;mask<64;mask++){
        int sgn[13]; sgn[pos[0][0]]=-1; for(int L=1;L<7;L++){int bit=(mask>>(L-1))&1; sgn[pos[L][0]]=bit?1:-1; sgn[pos[L][1]]=bit?-1:1;}
        signassign++;
        Vec bpref[14]; bpref[0]=Vec{{0,0,0}}; int seq[14]; seq[0]=0;
        for(int i=0;i<13;i++){int L=word[i]; bpref[i+1]=addv(bpref[i], scalev(mv(pref[i],dcan[L]),sgn[i])); seq[i+1]=sgn[i]>0?facePlus[L]:faceMinus[L];}
        Vec b=addv(bpref[13], mv(pref[13], dcan[0])); double nb=norm(b); if(nb<1e-9)continue; if(b.x[0]>=-1e-9)continue; inward++;
        if(dot(mv(pref[13],ncan[0]),b)<=1e-9)continue; bool ok=true; for(int i=0;i<13;i++){int L=word[i]; if(sgn[i]*dot(mv(pref[i],ncan[L]),b)<=1e-9){ok=false;break;}} if(!ok)continue; denpass++;
        if(feasible_polygon(seq,b,bpref)){ exit(0); }
    }
}
void leaf(){leaves++; Mat M=mul(pref[13],R[0]); if(matdiffI(M)<1e-8) process_identity();}
void rec(int p){ if(p==13){leaf();return;} for(int L=0;L<7;L++) if(remc[L]){remc[L]--; word[p]=L; pref[p+1]=mul(pref[p],R[L]); rec(p+1); remc[L]++;}}
int main(){ncan[0]=Vec{{1,0,0}};ncan[1]=Vec{{0,1,0}};ncan[2]=Vec{{0,0,1}};ncan[3]=Vec{{1,1,1}};ncan[4]=Vec{{1,1,-1}};ncan[5]=Vec{{1,-1,1}};ncan[6]=Vec{{-1,1,1}};for(int i=0;i<7;i++){R[i]=refl(ncan[i]);double nn=dot(ncan[i],ncan[i]);double c=i<3?1.0:2.0;dcan[i]=scalev(ncan[i],2*c/nn);}fn[0]=Vec{{1,0,0}};fc[0]=1;fn[1]=Vec{{-1,0,0}};fc[1]=1;fn[2]=Vec{{0,1,0}};fc[2]=1;fn[3]=Vec{{0,-1,0}};fc[3]=1;fn[4]=Vec{{0,0,1}};fc[4]=1;fn[5]=Vec{{0,0,-1}};fc[5]=1;int idx=6;for(int a=-1;a<=1;a+=2)for(int b=-1;b<=1;b+=2)for(int c=-1;c<=1;c+=2){fn[idx]=Vec{{(double)a,(double)b,(double)c}};fc[idx]=2;idx++;}remc[0]=1;for(int i=1;i<7;i++)remc[i]=2;pref[0]=Iden();auto t=chrono::high_resolution_clock::now();rec(0);auto e=chrono::high_resolution_clock::now();cerr<<"DONE leaves "<<leaves<<" ident "<<ident<<" signassign "<<signassign<<" inward "<<inward<<" denpass "<<denpass<<" polypos "<<polypos<<" simok "<<simok<<" time "<<chrono::duration<double>(e-t).count()<<"\n";}
