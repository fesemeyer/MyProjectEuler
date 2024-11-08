struct Problem6 <: Problem end

function problem006(n)
    gauss_sum = (n^2 + n) / 2
    res = 0
    for i in 1:n
        res += i^2
    end
    gauss_sum^2 - res
end

function solve(p::Problem6)
    n = 100
    problem006(n)
end