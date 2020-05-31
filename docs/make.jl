using Documenter
using Literate
using JuliaPackageDemo

"""
    docprepare()

Convert all source documentation (.jl and .md files)
into markdown, ready for documentation build, and 
relevant .jl files into Jupyter notebooks ready for
deployment to notebooks branch.
"""
function docprepare()
    # remove remnants of previous build and recreate staging dir
    rm("docs/staging-docs", force=true, recursive=true)
    mkdir("docs/staging-docs")

    # copy readme to staging-docs
    cp("README.md", "docs/staging-docs/index.md")

    # iterate through src and convert/copy as appropriate
    for file in readdir("docs/src")
        if endswith(file, "md")
            cp("docs/src/$file", "docs/staging-docs/$file")
        elseif endswith(file, "jl")
            Literate.markdown("docs/src/$file", "docs/staging-docs/")
        end
    end
end

function maindocbuilder()
    # prepare doc files from source
    docprepare()

    # build docs from staging area
    makedocs(modules=[JuliaPackageDemo],
            doctest= false, clean=true,
            format = Documenter.HTML(),
            sitename="JuliaPackageDemo",
            source = "staging-docs",
            authors="Louis Kaplan",
            pages = ["Home" => "index.md",
                     "Simple Examples" => "simpleexamples.md",
                     "Complex Examples" => "complexexamples.md",
                     "API" => "API.md"])

    # deploydocs(repo = "github.com/JuliaRheology/RHEOS.jl.git",
    #            deps = nothing,
    #            make = nothing,
    #            target = "build")

end

maindocbuilder()