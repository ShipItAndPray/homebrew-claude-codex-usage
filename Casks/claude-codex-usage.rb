cask "claude-codex-usage" do
  version "1.1"
  sha256 "27101de2ff46d0b2b442131e56d2a59f4fc59f5ad4758c003fde0ab6b08e5696"

  url "https://github.com/ShipItAndPray/claude-codex-usage/releases/download/v#{version}/ClaudeCodexUsage-#{version}.zip",
      verified: "github.com/ShipItAndPray/claude-codex-usage/"
  name "Claude Codex Usage"
  desc "Menu bar telemetry for Claude and Codex"
  homepage "https://github.com/ShipItAndPray/claude-codex-usage"

  depends_on macos: ">= :ventura"

  app "Claude Codex Usage.app"
end
