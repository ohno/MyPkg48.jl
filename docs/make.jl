using MyPkg48
using Documenter

DocMeta.setdocmeta!(MyPkg48, :DocTestSetup, :(using MyPkg48); recursive=true)

makedocs(;
    modules = [MyPkg48],
    authors = "Shuhei Ohno",
    sitename = "MyPkg48.jl",
    format = Documenter.HTML(;
        canonical = "https://ohno.github.io/MyPkg48.jl",
        edit_link = "main",
        assets = String[],
    ),
    pages = [
        "Home" => "index.md",
        "User Guide" => "user.md",
        "Developer Guide" => "developer.md",
        "API Reference" => "api.md",
    ],
)

deploydocs(;
    repo = "github.com/ohno/MyPkg48.jl",
    devbranch = "main",
)
