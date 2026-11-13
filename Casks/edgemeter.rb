cask "edgemeter" do
  version "0.1.0"
  sha256 "843601a67b9ddf250b94a2f054adc9ec0a5bea80ad171920a8dea0084172b705"

  url "https://github.com/Limatationz/EdgeMeter/releases/download/v#{version}/EdgeMeter-#{version}.dmg"
  name "EdgeMeter"
  desc "Measure anything on screen, snapped to the edges you see"
  homepage "https://github.com/Limatationz/EdgeMeter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "EdgeMeter.app"

  uninstall quit: "de.ErikRill.EdgeMeter"

  zap trash: "~/Library/Preferences/de.ErikRill.EdgeMeter.plist"
end
