struct Problem5 <: Problem end

function problem005(n::Int)
    factors = Dict{Int64,Int64}()
    for i in n:-1:1
        # compute prime factors
        p_factors = counter(prime_factors(i))
        # make sure that product of factors is divisible by i
        for p in keys(p_factors)
            factors[p] = max(p_factors[p], get(factors, p, 0))
        end
    end
    return prod([p^factors[p] for p in keys(factors)])
end

function prime_factors(n::Int)
    factors = Vector{Int16}()
    p = 2
    while !is_prime(n)
        while n % p == 0
            push!(factors,p)
            n = div(n,p)
        end
        p += 1
    end
    if n != 1 push!(factors, n) end
    factors
end

function solve(p::Problem5)
    n = 20
    problem005(n)
end