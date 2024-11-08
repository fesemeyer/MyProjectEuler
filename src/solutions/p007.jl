struct Problem7 <: Problem end

function problem007_old(n)
    # find nth prime
    primes_found = 1
    curr = 1
    while primes_found < n
        curr += 2
        if is_prime(curr)
            primes_found += 1
        end
    end
    curr
end

function problem007(n)
    # find nth prime
    primes = [2]
    primes_found = 1
    curr = 1
    while primes_found < n
        curr += 2
        if !is_divisible(curr, primes)
            primes_found += 1
            push!(primes, curr)
        end
    end
    curr
end

function is_divisible(n::Int64, divisors::AbstractVector{Int64})
    for d in divisors
        if d*d > n
            break
        elseif  n % d == 0
            return true
        end
    end
    false
end

function solve(p::Problem7)
    n = 10001
    problem007(n)
end