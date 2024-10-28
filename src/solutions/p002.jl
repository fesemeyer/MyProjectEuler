struct Problem2 <: Problem end

function problem002(n::Int) 
    p = 1
    q = 1
    s = 0
    while q < n
        p, q = q, p + q
        if q % 2 == 0
            s += q
        end
    end
    s
end

function solve(p::Problem2)
    n = 4000000
    problem002(n)
end