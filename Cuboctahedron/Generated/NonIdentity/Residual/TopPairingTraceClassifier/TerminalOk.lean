import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted
import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.All

/-!
Terminal trace split bridge for the top-pairing classifier.

The full terminal classifier should eventually prove that a closed semantic
word lands in `TerminalTraceLabels`.  This bridge keeps the next theorem small:
the semantic cancellation equality rules out the cancellation-reject side,
leaving the `TerminalOkTraceLabels` surface consumed by the accepted-trace
classifier.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TerminalOk

open Cuboctahedron

def TerminalTraceLabels (labels : List Face) : Prop :=
  Terminal.TerminalRejectTraceLabels labels \/
    Accepted.TerminalOkTraceLabels labels

theorem terminalOk_of_terminalTrace_and_cancellation
    {labels : List Face}
    (hc :
      triangularCancellationSummaryOfFaceLabels labels =
        topPairingTargetSummary)
    (hterm : TerminalTraceLabels labels) :
    Accepted.TerminalOkTraceLabels labels := by
  unfold TerminalTraceLabels at hterm
  rcases hterm with hreject | hok
  · exact False.elim (Terminal.terminal_rejects_false hc hreject)
  · exact hok

theorem terminal_ok_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TerminalOk
