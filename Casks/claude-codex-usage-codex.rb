cask "claude-codex-usage-codex" do
  version "1.1"
  sha256 "7b63582428f324a9e515ab907ac54036b9d1ab8123c085336d3fdbbf0c3bec85"

  url "https://github.com/ShipItAndPray/claude-codex-usage/releases/download/v#{version}/CodexUsage-#{version}.zip",
      verified: "github.com/ShipItAndPray/claude-codex-usage/"
  name "Codex Usage"
  desc "Menu bar telemetry for Codex usage windows"
  homepage "https://github.com/ShipItAndPray/claude-codex-usage"

  depends_on macos: ">= :ventura"

  app "Codex Usage.app"
end
