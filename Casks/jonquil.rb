cask "jonquil" do
  version "0.6.0"
  sha256 "838133c9ca0fcd06463592d60cd0c37a58b486aa8eab84a6da007c8686d002c1"

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
