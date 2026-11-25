class Druck < Formula
  desc "Typesetter for Markdown documents"
  homepage "https://github.com/coderscantina/druck"
  version "26.10.11-6fda127"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/coderscantina/druck/releases/download/v#{version}/druck-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ec564af5fbed1b1aa1faa0c92963d6f69a2edf7c5483725cd96bb9ed954901ea"
    end
    on_intel do
      url "https://github.com/coderscantina/druck/releases/download/v#{version}/druck-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d8640cfd148d44e9e25b2642344267db01cb10a6ec472e8d9d47a2640635cad2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/coderscantina/druck/releases/download/v#{version}/druck-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea3de50be083a022b0cc0c348f393831f4417743ca86e05830658f16350dbc9f"
    end
    on_intel do
      url "https://github.com/coderscantina/druck/releases/download/v#{version}/druck-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bafafa3d0ca0cb107530e45a55032eaa288ebf0d848d86b050afd5c4f62ef62"
    end
  end

  def install
    bin.install "druck"
  end

  test do
    system bin/"druck", "--version"
  end
end
