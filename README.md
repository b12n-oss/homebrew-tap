# b12n-oss Homebrew tap

Install [Jonquil](https://jonquil.b12n.app), a DrRacket-style Clojure IDE
written in Jolt, with Homebrew:

```sh
brew install b12n-oss/tap/jonquil
```

That downloads the signed, notarized `Jonquil.app` from Jonquil's
[releases](https://github.com/b12n-oss/jonquil/releases), copies it to
Applications, and puts a `jonquil` command on your `PATH`. It needs an
Apple Silicon Mac on macOS 26 or later.

```sh
brew upgrade jonquil     # a newer release
brew uninstall jonquil   # remove the app and the command
```

`brew uninstall --zap jonquil` also removes your settings in
`~/.config/jonquil`.
