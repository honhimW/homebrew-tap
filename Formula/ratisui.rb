class Ratisui < Formula
  desc "Redis TUI build with Ratatui, written in Rust"
  homepage "https://github.com/honhimW/ratisui"
  # version "x.y.z"
  license all_of: ["MIT"]

  release_version = "0.6.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-mac-intel.tar.gz"
      sha256 "c9c8994f631f1d32ae5b54ffac1bcd7a28589c47f0f0bc4f0af129b6b34b59a8"
    else
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-mac-aarch64.tar.gz"
      sha256 "66dd0473bbaa544ff226e08f5bb50ca99d2865f3a97582b73649780b593dd844"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-linux-aarch64.tar.gz"
      sha256 "83380dc2e29a918713a2d171e1b8e3e7bbe21028b991d4444efd60371e5d6ee1"
    else
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-linux-amd64.tar.gz"
      sha256 "957effa610a0fba3a565a867d14199696bb48339eab18fbaace1c834a3360a52"
    end
  end

  def install
    bin.install "ratisui"
  end

  test do
    system "#{bin}/ratisui", "--version"
  end
end
