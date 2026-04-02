cask "claude-codex-usage" do
  version "1.2"
  sha256 "31305adb9b8ccc74caa5be389facee64e9eb26d1947e46b8cfaf937d12763070"

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
