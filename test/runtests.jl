using SampleJuliaPackage
using Test

@testset "SampleJuliaPackage.jl" begin
    # Write your own tests here.
    @test test0([1,2,3], [4,5,6]) == 5
end
