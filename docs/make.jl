using MyWeb
using Documenter

makedocs(;
    modules=[MyWeb],
    repo="https://github.com/Shoichiro-Tsutsui/MyWeb.jl/blob/{commit}{path}#L{line}",
    sitename = "Shoichiro Tsutsui's Web Page",
    authors = "Shoichiro Tsutsui",
    doctest = false,
    linkcheck = false,
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Shoichiro-Tsutsui.github.io/MyWeb.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Shoichiro-Tsutsui/MyWeb.jl",
)
