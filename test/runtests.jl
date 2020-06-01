using JuliaPackageDemo
using MittagLeffler
using Test

const testx = 0.5

function _coolfunction1(x)
    (2*x + x^2) == coolfunction1(x)
end
@test _coolfunction1(testx)

function _coolfunction2(x)
    (50*mittleff(0.5, -x) - 10) == coolfunction2(x)
end
@test _coolfunction2(testx)

include(joinpath(@__DIR__, "..", "docs", "src", "simpleexamples.jl"))
include(joinpath(@__DIR__, "..", "docs", "src", "complexexamples.jl"))