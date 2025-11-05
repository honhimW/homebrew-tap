class Ratisui < Formula
  desc "Redis TUI build with Ratatui, written in Rust"
  homepage "https://github.com/honhimW/ratisui"
  # version "x.y.z"
  license all_of: ["MIT"]

  release_version = "0.6.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-mac-intel.tar.gz"
      sha256 "9072f909770f68b05182dc5f343e678022330b05f6490729c000cb6fdb408b9f"
    else
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-mac-aarch64.tar.gz"
      sha256 "ef7b6faf0e72e23f868c1ba06abcb66c6f1ad609a33e0ecb391abebb6fd3996c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-linux-aarch64.tar.gz"
      sha256 "c56292a5ebfcce86663e90cee4577eaad115a12ab8ad64ce7cf4378914535b28"
    else
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-linux-amd64.tar.gz"
      sha256 "12d5f954279337427bfea67099b89b6b9807062fde232245a8eee4916d961b2b"
    end
  end

  def install
    bin.install "ratisui"
  end

  test do
    system "#{bin}/ratisui", "--version"
  end
end
