cask "jonquil" do
  version "0.4.2"
  sha256 "ac935164c30e7fd90ebb676dcb21aefe21c543a3568a3086f93c0fbded270270"

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
