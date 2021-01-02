using MyWeb
using Documenter

makedocs(;
    modules=[MyWeb],
    authors="tsutsui <shoppa99.nanone@hotmail.co.jp> and contributors",
    repo="https://github.com/Shoichiro-Tsutsui/MyWeb.jl/blob/{commit}{path}#L{line}",
    sitename="MyWeb.jl",
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
