class Pr0be < Formula
  desc "Finds code on your disk that is uncommitted, unpushed or not in git"
  homepage "https://github.com/coderscantina/pr0be"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/coderscantina/pr0be/releases/download/v#{version}/pr0be-aarch64-apple-darwin.tar.gz"
      sha256 "756dbf60c6b4293a2a250c71ab9b35a039954fa42fcece256f0f6307deae845c"
    end
    on_intel do
      url "https://github.com/coderscantina/pr0be/releases/download/v#{version}/pr0be-x86_64-apple-darwin.tar.gz"
      sha256 "3ecd2b44b9e0fd53e8d568455726d0bbf6796406bd6c3912c3355d8e2fbf9512"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coderscantina/pr0be/releases/download/v#{version}/pr0be-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c2b607d07e566c5f1b21c9c6d8deaa78696cf37468b5ea584a5e10ba3bd7b639"
    end
    on_intel do
      url "https://github.com/coderscantina/pr0be/releases/download/v#{version}/pr0be-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "606340879d7b7f7180fbdf31ca099245845a5dc8282f83caace735bc6a5b7463"
    end
  end

  def install
    bin.install "pr0be"
  end

  test do
    system bin/"pr0be", "--version"
  end
end
