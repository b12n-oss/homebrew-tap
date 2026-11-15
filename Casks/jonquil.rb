cask "jonquil" do
  version "0.4.1"
  sha256 "ebbe17696ecd4fbd7ffbfabee89b85e8167bae0c023b4f9885cca57f69b62937"

  url "https://github.com/b12n-oss/jonquil/releases/download/v#{version}/Jonquil-#{version}-macos-arm64.dmg"
  name "Jonquil"
  desc "DrRacket-style Clojure IDE written in Jolt"
  homepage "https://jonquil.b12n.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Jonquil.app"
  binary "#{appdir}/Jonquil.app/Contents/Resources/bin/jonquil"

  uninstall quit: "net.b12n.jonquil"

  zap trash: "~/.config/jonquil"
end
