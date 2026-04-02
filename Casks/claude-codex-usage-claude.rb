cask "claude-codex-usage-claude" do
  version "1.2"
  sha256 "fe57ff72fd8c8128d0844fe25ddb1a9bd2bdb19dd1075583cf19fa7783156f72"

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
