cask "claude-codex-usage-codex" do
  version "1.2"
  sha256 "bfef27bbb0b556689f88e39cb55b39c763e750e637b6d1b4b63c3600fb5d7ba7"

  url "https://github.com/ShipItAndPray/claude-codex-usage/releases/download/v#{version}/CodexUsage-#{version}.zip",
      verified: "github.com/ShipItAndPray/claude-codex-usage/"
  name "Codex Usage"
  desc "Menu bar telemetry for Codex usage windows"
  homepage "https://github.com/ShipItAndPray/claude-codex-usage"

  depends_on macos: ">= :ventura"

  app "Codex Usage.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-dr", "com.apple.quarantine", "#{appdir}/Codex Usage.app"],
                   must_succeed: false
  end
end
