class Rein < Formula
  desc "Declarative language and runtime for AI agent orchestration"
  homepage "https://github.com/delamain-labs/rein"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/delamain-labs/rein/releases/download/v0.2.1/rein-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "55beae4a130739887af70d5af46f4fbf91976161133eed60e809f8489b578106"
    else
      url "https://github.com/delamain-labs/rein/releases/download/v0.2.1/rein-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "b8283f4968e51c8fc748927a7052c407979012502746a10b5deb9614d98448d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/delamain-labs/rein/releases/download/v0.2.1/rein-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "acc809c84aadeeb8b8d69dd555e179a04fdbe02548653f0ae1d0e149f078a77a"
    else
      url "https://github.com/delamain-labs/rein/releases/download/v0.2.1/rein-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c33fb2c98f73a8385cda8fad411155f2d20e12fe6fd2ef33d5f30c6cdadff192"
    end
  end

  def install
    bin.install "rein"
  end

  test do
    assert_match "rein", shell_output("#{bin}/rein --version")
  end
end
