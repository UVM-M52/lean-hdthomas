-- Math 52: Week 4

import .utils.int_refl

-- Lakins Definition 1.2.1:
definition is_even (n : ℤ) := ∃ (k : ℤ), n = 2 * k
definition is_odd (n : ℤ) := ∃ (k : ℤ), n = 2 * k + 1

-- Lakins Definition 2.1.1:
definition divides (a b : ℤ) : Prop := ∃ (k : ℤ), a * k = b

-- The notation `a ∣ b` can be used for `divides a b`
local infix ∣ := divides

-- Lakins Example 2.1.2:
example : 3 ∣ 12 :=
begin
unfold divides,
existsi (4:ℤ),
refl,
end

theorem divides_refl : ∀ (a : ℤ), a ∣ a :=
begin
intro a,
unfold divides,
existsi (1:ℤ),
calc a * 1 = a : by rw mul_one,
end
-- Proof: Let a ∈ ℤ be arbitrary. We must show that a ∣ a; 
-- i.e., we must find an integer k such that a = a * k. 
-- Since a = a * 1 and 1 is an integer, we see that
-- a ∣ a is true. □

-- Lakins Proposition 2.1.3:
theorem divides_trans : ∀ (a b c : ℤ), a ∣ b ∧ b ∣ c → a ∣ c :=
begin
sorry
end
-- Proof: Let a,b,c ∈ ℤ be arbitrary and assume that 
-- a ∣ b and b ∣ c. We must show that a ∣ c; i.e., we
-- must find an integer k such that c = a * k.
-- 
-- Since a ∣ b, by Definition 2.1.1 we may fix n ∈ ℤ
-- such that b = a * n. Similarly, since b | c, we may
-- fix m ∈ ℤ such that c = b * m, again by Definition
-- 2.1.1. Then
--   c = b * m = (a * n) * m = a * (n * m),
-- since multiplication of integers is associative
-- (Basic Properties of Integers 1.2.3). Since 
-- n * m ∈ ℤ, we have proved that a ∣ c, by
-- Definition 2.1.1, as desired. 􏰟

-- Lakins Exercise 2.1.1:
theorem L211 : ∀ (a b c m n : ℤ), a ∣ b ∧ a ∣ c → a ∣ (b * m + c * n) :=
begin
sorry
end

theorem is_even_iff_two_divides : ∀ (n : ℤ), is_even n ↔ 2 ∣ n :=
begin
sorry
end

-- We will prove this fact later after we discuss induction.
axiom even_or_odd (n : ℤ) : is_even n ∨ is_odd n

-- Lakins Theorem 2.1.9 (reworded)
theorem even_product : ∀ (a : ℤ), is_even (a * (a + 1)) :=
begin
sorry
end
