cask "claude-codex-usage-codex" do
  version "1.4"
  sha256 "655682a4c687345e6f4c3674974851abe34220423e5da76ca7e3b062c5d15b12"

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
