using MyPkg48
using Aqua
using JET
using Test

@testset "Aqua.jl" begin
    Aqua.test_all(MyPkg48)
end

@testset "JET.jl" begin
    JET.test_package(MyPkg48; target_modules = (MyPkg48,))
end

@testset "MyPkg48.hello" begin
    @test MyPkg48.hello() == "Hello, World!"
end
