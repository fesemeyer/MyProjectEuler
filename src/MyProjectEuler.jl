module MyProjectEuler

using BenchmarkTools

export solve
export Problem1

abstract type Problem end

function solve(ID::Int, benchmark = true)
    problem = try
        eval(Meta.parse("Problem$ID()"))
    catch
        error("Solution for problem $ID not yet implemented.")
    end

    if benchmark
        bench = @benchmark solve($problem)
        display(bench)
    end
    solve(problem)
end

# include all existing problem solutions
# include.(string.("src/solutions/", readdir("src/solutions/")))
# include.(filter(contains(r".jl$"), readdir("src/solutions/"; join=true)))
include("solutions/p001.jl")
include("solutions/p002.jl")
include("solutions/p003.jl")
include("solutions/p004.jl")

end # module MyProjectEuler
