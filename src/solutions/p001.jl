struct Problem1 <: Problem end

function problem001(n::Int) 
    s = 0
    for i in 1:n-1
        if i % 3 == 0 || i % 5 == 0
            s += i
        end
    end
    s
end

function solve(p::Problem1)
    n = 1000
    problem001(n)
end