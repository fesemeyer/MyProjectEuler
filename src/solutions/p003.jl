struct Problem3 <: Problem end

function problem003(n::Int) 
    # divide until not possible (tried larger than n/2)
    p = 2
    while !is_prime(n)
        while n % p == 0
            n = div(n,p)
        end
        p += 1
    end
    max(n,p-1)
end

function is_prime(n::Int)
    f = 2
    while f <= sqrt(n)
        if n % f == 0
            return false
        end
        f += 1
    end
    true
end

function solve(p::Problem3)
    n = 600851475143
    problem003(n)
end