# scaffoldly/homebrew-tap

Homebrew tap for [scaffoldly](https://github.com/scaffoldly) tools.

## tush

```sh
brew tap scaffoldly/tap
brew install tush
```

Installs the prebuilt [`tush`](https://github.com/scaffoldly/tush) release
binary (macOS and Linux, x86_64 and arm64).

## kubectl-add

```sh
brew tap scaffoldly/tap
brew install kubectl-add
```

Installs the prebuilt [`kubectl-add`](https://github.com/scaffoldly/kubectl-add)
release binary (macOS and Linux, x86_64 and arm64). kubectl discovers it as
`kubectl add`.

## Auto-updating

`Formula/kubectl-add.rb` and `Formula/tush.rb` are kept current by
[`.github/workflows/update-formula.yml`](./.github/workflows/update-formula.yml):
it runs hourly (and on demand), reads each tool's latest public release, and
re-renders the formulas (`render.sh` fills the templates with the version and
per-arch sha256s). The workflow commits to this repo with its own `GITHUB_TOKEN`
— no cross-repo token or PAT.
