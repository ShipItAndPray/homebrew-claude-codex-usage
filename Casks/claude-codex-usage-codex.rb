cask "claude-codex-usage-codex" do
  version "1.3"
  sha256 "4397cce7636522952fcd2129e6809a2262c7475b4b4964b88cdc361d6a314e25"

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
