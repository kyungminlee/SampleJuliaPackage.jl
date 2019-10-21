using Documenter, SampleJuliaPackage

makedocs(;
    modules=[SampleJuliaPackage],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/kyungminlee/SampleJuliaPackage.jl/blob/{commit}{path}#L{line}",
    sitename="SampleJuliaPackage.jl",
    authors="Kyungmin Lee",
    assets=String[],
)

deploydocs(;
    repo="github.com/kyungminlee/SampleJuliaPackage.jl",
)
