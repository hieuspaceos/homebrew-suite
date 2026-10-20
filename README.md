# homebrew-suite

Homebrew tap for the **pet suite** — free, open-source macOS utilities.

```sh
brew tap hieuspaceos/suite
brew trust hieuspaceos/suite        # one-time — Homebrew guards non-core taps

brew install --cask swiftshot    # CleanShot X alternative — screenshots + annotate
brew install --cask clipspot     # Paste alternative — clipboard manager
brew install --cask swishlite    # Swish alternative — trackpad window gestures
brew install --cask flipswitch   # One Switch alternative — menubar toggles
```

All binaries are **built by GitHub Actions** from the tagged source — see each
repo's Releases page for the workflow-run link and `*.sha256` file.

All binaries are **Developer ID signed + Apple notarized** — installs open
with no Gatekeeper warning, no right-click workaround needed.
