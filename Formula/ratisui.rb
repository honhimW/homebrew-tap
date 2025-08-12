class Ratisui < Formula
  desc "Redis TUI build with Ratatui, written in Rust"
  homepage "https://github.com/honhimW/ratisui"
  # version "0.5.4"
  license all_of: ["MIT"]

  release_version = ""

  if OS.mac?
    odie "Intel macOS is not supported" if Hardware::CPU.intel?
    url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-mac.tar.gz"
    sha256 "6f4d9805698b9309677a26f6e363167b687cdb7645150f614b418682648771c8"
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-linux-aarch64.tar.gz"
      sha256 "9534b956b7c9f0dc5c00a44febf2475d6f79bfd86880c2b384c3534063b72e91"
    else
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-linux-amd64.tar.gz"
      sha256 "3572c562053d27d5b52f570df1134fb1facc3451a50897d93a85d0ddd9c2987c"
    end
  end

  def install
    bin.install "ratisui"
  end

  test do
    system "#{bin}/ratisui", "--version"
  end
end
