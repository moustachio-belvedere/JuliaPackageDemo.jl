# # Simple Examples
#md # [![](https://mybinder.org/badge_logo.svg)](@__BINDER_ROOT_URL__/notebooks/simpleexamples.ipynb)
#md # [![](https://img.shields.io/badge/show-nbviewer-579ACA.svg)](@__NBVIEWER_ROOT_URL__/notebooks/simpleexamples.ipynb)

# To begin using JuliaPackageDemo.jl we first need to load in the package with the `using` syntax. We will also load in PyPlot.jl so we can plot some of the data.

using JuliaPackageDemo
using Plots

# Next we will generate a time vector and use this as an input to the function [`coolfunction1`](@ref). The result is plotted.

## get time vector
timevec = collect(0:0.1:10)

## get function values at time points
data = coolfunction1.(timevec)

#src test that coolfunction1 returns array as expected
@test typeof(data)==Array{Float64,1} && length(data)==length(timevec) #src
## plot the data
plot(timevec, data)

# For more information on [`coolfunction1`](@ref) please see the [API](@ref) section. Now we can try something similar with [`coolfunction2`](@ref):
#md # !!! note "Beware!"
#md #     Admonitions are a useful feature of Documenter.jl which would be tricky to use directly from Notebooks.

## get time vector
timevec = collect(0:0.1:10)

## get function values at time points
data = coolfunction2.(timevec)

#src test that coolfunction2 returns array as expected
@test typeof(data)==Array{Float64,1} && length(data)==length(timevec) #src
## plot the data
plot(timevec, data)

# For more complex examples, see [Complex Examples](@ref) section.