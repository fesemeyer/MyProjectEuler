struct Problem4 <: Problem end

function problem004(n::Int) 
    # nested loop checking
    current_candidate = 0
    for i in 10^n-1:-1:10^(n-1)
        if i^2 < current_candidate
            break
        end
        for j in i:-1:10^(n-1)
            if i*j < current_candidate
                break
            elseif is_palindrome(i*j)
                current_candidate = i*j
                break
            end
        end
    end
    current_candidate
end

function is_palindrome(n::Int)
    num_str = string(n)
    for i in 1:div(length(num_str),2)
        if num_str[i] != num_str[end-i+1]
            return false
        end
    end
    true
end

function solve(p::Problem4)
    n = 3
    problem004(n)
end