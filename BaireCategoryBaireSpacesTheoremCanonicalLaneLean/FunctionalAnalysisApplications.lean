import BaireCategoryBaireSpacesTheoremCanonicalLaneLean.CompleteMetricSpaceBaireTheorem
import BaireCategoryBaireSpacesTheoremCanonicalLaneLean.LocallyCompactHausdorffBaireTheorem

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

structure OpenMappingTheoremPackage (X Y : Type u) [NormedAddCommGroup X] [NormedAddCommGroup Y] where
  boundedLinearMap : X → Y  -- In practice, a continuous linear map
  isSurjective : Function.Surjective boundedLinearMap
  isOpenMapping : Prop
  theoremProved : isOpenMapping

theorem open_mapping_theorem (X Y : Type u) [NormedAddCommGroup X] [NormedAddCommGroup Y] [CompleteSpace X] [CompleteSpace Y] (T : X → Y) [ContinuousLinearMap T] (hsurj : Function.Surjective T) : IsOpenMap T :=
  by
    -- Use Baire category theorem.
    sorry

structure UniformBoundednessPackage (X Y : Type u) [NormedAddCommGroup X] [NormedAddCommGroup Y] where
  family : Set (X → Y)
  pointwiseBounded : ∀ x : X, BddAbove (Set.range (fun f : family => f x))
  uniformBounded : Prop
  theoremProved : uniformBounded

theorem uniform_boundedness_principle (X Y : Type u) [NormedAddCommGroup X] [NormedAddCommGroup Y] [CompleteSpace X] (F : Set (X → Y)) (h : ∀ x : X, BddAbove (Set.range (fun f : F => f x))) : ∃ M, ∀ f : F, ∀ x : X, ‖f x‖ ≤ M * ‖x‖ :=
  by
    -- Use Baire category theorem.
    sorry

end HautevilleHouse.BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse