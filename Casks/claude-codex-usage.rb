cask "claude-codex-usage" do
  version "1.4"
  sha256 "a7c23c4826bd80baa96f65eac1c148e81cfa31a263ffbc62f423972695b7aaa1"

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
