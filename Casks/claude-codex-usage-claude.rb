cask "claude-codex-usage-claude" do
  version "1.4"
  sha256 "a8643fbd575e1687f589e8ba9d7b10fe4da52d3bd159def7f2f720c8a55de3e4"

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
