using Documenter, Literate, JuliaPackageDemo

function docprepare()
    # remove remnants of previous build and recreate staging dir
    rm("docs/src-staging", force=true, recursive=true)
    mkdir("docs/src-staging")

    # copy readme to src-staging
    cp("README.md", "docs/src-staging/index.md")

    # iterate through src and convert/copy as appropriate
    for file in readdir("docs/src")
        if endswith(file, "md")
            cp("docs/src/$file", "docs/src-staging/$file")
        end
    end

end

docprepare()

makedocs(modules=[JuliaPackageDemo],
         doctest= false, clean=true,
         format = Documenter.HTML(),
         sitename="JuliaPackageDemo",
         source = "src-staging",
         authors="Louis Kaplan",
         pages = ["Home" => "index.md",
                  "API" => "API.md"])

# deploydocs(repo = "github.com/JuliaRheology/RHEOS.jl.git",
#            deps = nothing,
#            make = nothing,
#            target = "build")
