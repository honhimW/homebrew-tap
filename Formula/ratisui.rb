class Ratisui < Formula
  desc "Redis TUI build with Ratatui, written in Rust"
  homepage "https://github.com/honhimW/ratisui"
  # version "x.y.z"
  license all_of: ["MIT"]

  release_version = "0.6.3"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-mac-intel.tar.gz"
      sha256 "2873b348a201e26bed976c06e461f6cbdeadb8c60ec38434ad0cbf019dcd14d6"
    else
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-mac-aarch64.tar.gz"
      sha256 "d00afa624192d03fa00b05724b0f89fbbe5eaf9de42fc5be97079121f80b54ef"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-linux-aarch64.tar.gz"
      sha256 "fdfb3093ae9e00e24aa7e5b720cb158a1dde1b5b538db3d381035759bd1f9e77"
    else
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-linux-amd64.tar.gz"
      sha256 "407b3f50f7878e7fd7b51646129109efea05fab7055baafeec0a6bfa212ac092"
    end
  end

  def install
    bin.install "ratisui"
  end

  test do
    system "#{bin}/ratisui", "--version"
  end
end
