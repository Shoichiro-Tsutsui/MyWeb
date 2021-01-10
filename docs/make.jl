using MyWeb
using Documenter
using DocumenterTools: Themes

# Generate Sass files.
for w in ("light", "dark")
    header = read(joinpath(@__DIR__, "style.scss"), String)
    theme = read(joinpath(@__DIR__, "$(w)defs.scss"), String)
    write(joinpath(@__DIR__, "$(w).scss"), header*"\n"*theme)
end

# Compile Sass files.
Themes.compile(joinpath(@__DIR__, "light.scss"), joinpath(@__DIR__, "src/assets/themes/documenter-light.css"))
Themes.compile(joinpath(@__DIR__, "dark.scss"), joinpath(@__DIR__, "src/assets/themes/documenter-dark.css"))

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
        "CV" => "cv.md",
        "Publications" => "publications.md",
        "Presentations" => "presentations.md",
        "Links" => "links.md"
    ],
)

deploydocs(;
    repo="github.com/Shoichiro-Tsutsui/MyWeb.jl",
)
