cask "claude-codex-usage-claude" do
  version "1.3"
  sha256 "1287837e21f3af8c1b75083d1ecb7b2520191f875b5cec8743520756c9eda9ac"

  url "https://github.com/ShipItAndPray/claude-codex-usage/releases/download/v#{version}/ClaudeUsage-#{version}.zip",
      verified: "github.com/ShipItAndPray/claude-codex-usage/"
  name "Claude Usage"
  desc "Menu bar telemetry for Claude usage windows"
  homepage "https://github.com/ShipItAndPray/claude-codex-usage"

  depends_on macos: ">= :ventura"

  app "Claude Usage.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-dr", "com.apple.quarantine", "#{appdir}/Claude Usage.app"],
                   must_succeed: false
  end
end
