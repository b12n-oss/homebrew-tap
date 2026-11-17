cask "jonquil" do
  version "0.5.0"
  sha256 "c5b92fe87b27e99d372858df6b500682be434554d93ae17bd5b7786c8b3146d5"

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
