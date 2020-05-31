module JuliaPackageDemo

using MittagLeffler

export coolfunction1, coolfunction2

"""
    coolfunction1(x)

Computes `2*x + x^2` and returns the value.
"""
function coolfunction1(x)
    2*x + x^2
end

"""
    coolfunction2(x)

Computes `50*mittleff(0.5, -x) - 10` and returns the value.
"""
function coolfunction2(x)
    50*mittleff(0.5, -x) - 10
end

end # module
