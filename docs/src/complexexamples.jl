# # Complex Examples
# To begin using JuliaPackageDemo.jl we first need to load in the package with the `using` syntax. We will also load in DelimitedFiles.jl so we can import some data.

using JuliaPackageDemo
using DelimitedFiles

# Let's load in some data and use it as the input arguments for [`coolfunction1`](@ref).
inputdataraw = readdlm("assets/data.csv", ',')
inputdata = vcat(inputdataraw...) 

## get function values at time points
data = coolfunction1.(inputdata)

# For more information on [`coolfunction1`](@ref) please see the [API](@ref) section. Now we can try something similar with [`coolfunction2`](@ref):

## get function values at time points
data = coolfunction2.(inputdata)

# For more complex examples, see [Simple Examples](@ref) section.