cask "jonquil" do
  version "0.4.0"
  sha256 "e8a38bf5c534783f5500e454e856564eef9cfa6b0f2fc4f992942d91a7d916c4"

  url "https://github.com/b12n-oss/jonquil/releases/download/v#{version}/Jonquil-#{version}-macos-arm64.dmg",
      verified: "github.com/b12n-oss/jonquil/"
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
