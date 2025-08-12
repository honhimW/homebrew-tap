class Ratisui < Formula
  desc "Redis TUI build with Ratatui, written in Rust"
  homepage "https://github.com/honhimW/ratisui"
  # version "x.y.z"
  license all_of: ["MIT"]

  release_version = ""

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-mac-intel.tar.gz"
      sha256 "6739d0d6aaf4b48e6d5c00edca23693f5f46b41170b0f2e98d9f3b83f47975be"
    else
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-mac-aarch64.tar.gz"
      sha256 "a36155558aa57aa07bf1f368e7ec5c68727bab01efb81092c0e5e2a10bca3aef"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-linux-aarch64.tar.gz"
      sha256 "5b99976a49e6a64fb7609d38a040c902b9a7938bc621c1a7d21d43b0fbe766fa"
    else
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-linux-amd64.tar.gz"
      sha256 "603a82f530c98f891325bf22e2ea132322231517eadbe3deddffbe7a27f44078"
    end
  end

  def install
    bin.install "ratisui"
  end

  test do
    system "#{bin}/ratisui", "--version"
  end
end
