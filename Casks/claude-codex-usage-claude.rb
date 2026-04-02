cask "claude-codex-usage-claude" do
  version "1.1"
  sha256 "370d478dcddb4016da4f4bb2a7da7ec581dbaccf842e7bea256af2364655cde3"

  url "https://github.com/ShipItAndPray/claude-codex-usage/releases/download/v#{version}/ClaudeUsage-#{version}.zip",
      verified: "github.com/ShipItAndPray/claude-codex-usage/"
  name "Claude Usage"
  desc "Menu bar telemetry for Claude usage windows"
  homepage "https://github.com/ShipItAndPray/claude-codex-usage"

  depends_on macos: ">= :ventura"

  app "Claude Usage.app"
end
