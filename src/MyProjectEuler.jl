module MyProjectEuler

using BenchmarkTools

export solve
export Problem1

abstract type Problem end

function solve(ID::Int, benchmark = true)
    problem = try
        eval(Meta.parse("Problem$ID()"))
    catch
        error("Problem $ID is not supported.")
    end

    solution = solve(problem) 
    if benchmark
        bench = @benchmark solve($problem)
        display(bench)
    end
    solution
end

# include all existing problem solutions
include.(string.("solutions/", filter(contains(r".jl$"), readdir("src/solutions/"))))

end # module MyProjectEuler
