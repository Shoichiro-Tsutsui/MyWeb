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
すると
```
[ Info: add the public key below to https://github.com/Shoichiro-Tsutsui/MyWeb.jl/settings/keys with read/write access:

ssh-rsa （文字列） Documenter

[ Info: add a secure environment variable named 'DOCUMENTER_KEY' to https://travis-ci.com/Shoichiro-Tsutsui/MyWeb.jl/settings (if you deploy using Travis CI)
or https://github.com/Shoichiro-Tsutsui/MyWeb.jl/settings/secrets (if you deploy using GitHub Actions) with value:

（長い文字列）
```
が出力される。前者を`Settings/Deploy keys`に`Allow write access`にチェックはを入れて登録し、
後者を`Settings/Secrets/Environment secrets `に`DOCUMENTER_KEY`の名で登録する。



## 自動デプロイ
ssh認証のための鍵を生成する
```
julia> using DocumenterTools
julia> DocumenterTools.genkeys(MyWeb)
```

## Note
- `docs/make.jl` 中でJuliaのパッケージを使用する場合、docs/Project.toml を編集する必要がある。（travisでパッケージが見つかりませんエラーが出る。）
