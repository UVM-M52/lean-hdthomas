-- Math 52: Week 3

definition is_even (n : ℤ) := ∃ (k : ℤ), n = 2 * k

definition is_odd (n : ℤ) := ∃ (k : ℤ), n = 2 * k + 1

-- Lakins 1.2.4: For every integer n, 4*n+7 is odd.
theorem L124 : ∀ (n : ℤ), is_odd (4*n+7) :=
begin
intro n,
unfold is_odd,
existsi (2*n+3:ℤ),
symmetry,
calc 2*(2*n+3) + 1
= (2*(2*n) + 2*3) + 1 : by rw mul_add ...
= 2*(2*n) + (2*3 + 1) : by rw add_assoc ...
= (2*2)*n + (2*3 + 1) : by rw mul_assoc ...
= 4*n + 7 : by refl,
end
-- Proof: Let n be a given integer. By definition of odd,
-- we want to show that there is an integer k such that
-- 4*n+7 = 2*k+1. Take k = 2*n+3, then:
--   2*k+1 = 2*(2*n+3)+1 = 4*n+7,
-- as required. □

-- Lakins 1.2.1(a) : For every integer n, if n is even then n² is even.
theorem L121a : ∀ (n : ℤ), is_even n → is_even (n * n) :=
begin
sorry
end

-- Lakins 1.2.3(a): For all integers m and n, if m is even then m*n is even.
theorem L123a : ∀ (m n : ℤ), is_even m → is_even (m * n) :=
begin
sorry
end

-- Lakins 1.2.2(a) : For all integers m and n, if m and n are even then m+n is even.
theorem L122a : ∀ (m n : ℤ), is_even m ∧ is_even n → is_even (m + n) :=
begin
sorry
end

-- Lakins 1.2.2(b) : For all integers m and n, if m and n are odd then m+n is even.
theorem L122b : ∀ (m n : ℤ), is_odd m ∧ is_odd n → is_even (m + n) :=
begin
sorry
end
