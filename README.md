# MyWeb

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://Shoichiro-Tsutsui.github.io/MyWeb.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://Shoichiro-Tsutsui.github.io/MyWeb.jl/dev)
[![Coverage](https://codecov.io/gh/Shoichiro-Tsutsui/MyWeb.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/Shoichiro-Tsutsui/MyWeb.jl)

This package generates [Shoichiro Tsutsui's web page](https://shoichiro-tsutsui.github.io/MyWeb.jl/stable).


## ローカルでビルドする
以下を実行する。
```
julia> using Pkg
julia> Pkg.develop(PackageSpec(path=pwd()))
julia> Pkg.instantiate()
julia> using Documenter: doctest
julia> using MyWeb
julia> doctest(MyWeb)
julia> include("docs/make.jl")'
```
ビルドされたページをブラウザで開く。
```
julia> using LiveServer
julia> serve(dir="docs/build")
```



## 自動デプロイ
GitHub Actionを使う。`GITHUB_TOKEN`で認証する。
`push`すると、`dev`バージョンのドキュメントが更新される。
次に`code/Releases`から`Draft a new release`を押し、適当にリリース内容を入力して`Publish release`する。
このとき、リリースバージョンは`v1.x`のようにする。すると再びworkflowが走り、`stable`バージョンのドキュメントが更新される。


## Note
- `docs/make.jl` 中でJuliaのパッケージを使用する場合、docs/Project.toml を編集する必要がある。（travisでパッケージが見つかりませんエラーが出る。）
