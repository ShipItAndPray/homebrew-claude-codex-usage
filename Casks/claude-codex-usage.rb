cask "claude-codex-usage" do
  version "1.3"
  sha256 "fa57f61352b23cf9ef9131a863fbfe2913cc0b5c7e7d9d1b9eba5f52baf14264"

  url "https://github.com/ShipItAndPray/claude-codex-usage/releases/download/v#{version}/ClaudeCodexUsage-#{version}.zip",
      verified: "github.com/ShipItAndPray/claude-codex-usage/"
  name "Claude Codex Usage"
  desc "Menu bar telemetry for Claude and Codex"
  homepage "https://github.com/ShipItAndPray/claude-codex-usage"

  depends_on macos: ">= :ventura"

  app "Claude Codex Usage.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-dr", "com.apple.quarantine", "#{appdir}/Claude Codex Usage.app"],
                   must_succeed: false
  end
end
