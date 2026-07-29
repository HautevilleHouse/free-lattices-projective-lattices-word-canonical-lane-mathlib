import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure FreeLattice (X : Type) where
  carrier : Type
  generators : X → carrier
  join : carrier → carrier → carrier
  meet : carrier → carrier → carrier
  join_comm : ∀ a b, join a b = join b a
  join_assoc : ∀ a b c, join (join a b) c = join a (join b c)
  meet_comm : ∀ a b, meet a b = meet b a
  meet_assoc : ∀ a b c, meet (meet a b) c = meet a (meet b c)
  absorption_join_meet : ∀ a b, join a (meet a b) = a
  absorption_meet_join : ∀ a b, meet a (join a b) = a

structure FreeLatticeHom (L1 L2 : FreeLattice) where
  map : L1.carrier → L2.carrier
  map_join : ∀ a b, map (L1.join a b) = L2.join (map a) (map b)
  map_meet : ∀ a b, map (L1.meet a b) = L2.meet (map a) (map b)

structure FreeLatticeAdmittedObject where
  generators : Type
  freeLattice : FreeLattice generators
  wordEquivalence : Prop
  equivalenceWitness : wordEquivalence

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse
