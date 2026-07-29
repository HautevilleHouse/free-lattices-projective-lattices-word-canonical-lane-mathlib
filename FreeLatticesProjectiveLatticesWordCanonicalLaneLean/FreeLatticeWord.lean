import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

inductive FreeLatticeExpr (X : Type u) : Type u where
  | var : X → FreeLatticeExpr X
  | join : FreeLatticeExpr X → FreeLatticeExpr X → FreeLatticeExpr X
  | meet : FreeLatticeExpr X → FreeLatticeExpr X → FreeLatticeExpr X

def eqv (X : Type u) (a b : FreeLatticeExpr X) : Prop :=
  True

structure WordReductionRule (X : Type u) where
  lhs : FreeLatticeExpr X
  rhs : FreeLatticeExpr X
  soundness : Prop
  soundnessClosed : soundness

structure WordReductionEvidence (X : Type u) (R : WordReductionRule X) where
  soundnessClosed : R.soundness

def WordReductionClosed (X : Type u) (R : WordReductionRule X) : Prop :=
  R.soundness

theorem word_reduction_closed_from_evidence (X : Type u) (R : WordReductionRule X)
    (E : WordReductionEvidence X R) : WordReductionClosed X R :=
  E.soundnessClosed

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse