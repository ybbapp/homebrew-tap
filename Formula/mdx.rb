class Mdx < Formula
  desc "Terminal reader for Markdown and MDX"
  homepage "https://github.com/ybbapp/mdx"
  on_macos do
    on_arm do
      url "https://github.com/ybbapp/mdx/releases/download/v0.3.2/mdx_v0.3.2_darwin_arm64.tar.gz"
      sha256 "92cd93e14615719999c5c883aa4ca7a9c5e51a7f7976bc210de171bc64b0ce19"
    end
    on_intel do
      url "https://github.com/ybbapp/mdx/releases/download/v0.3.2/mdx_v0.3.2_darwin_amd64.tar.gz"
      sha256 "4f67c78b19c3ada4e16c6cbe00fc7827cdd12c3a2a403985f421df9c0f88884e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ybbapp/mdx/releases/download/v0.3.2/mdx_v0.3.2_linux_arm64.tar.gz"
      sha256 "51357eeb9270befe831713f3e0a8dde0bfe070b8ad97d2c7fa0e30eaeb158fe8"
    end
    on_intel do
      url "https://github.com/ybbapp/mdx/releases/download/v0.3.2/mdx_v0.3.2_linux_amd64.tar.gz"
      sha256 "a38b2058a020945b4757603f72f8be4fdd16a82e38a8e71158900cdf9866473d"
    end
  end

  def install
    bin.install "mdx"
    pkgshare.install "sample.mdx"
  end

  test do
    (testpath/"test.mdx").write "# Homebrew test\n"
    assert_match "Homebrew test", shell_output("#{bin}/mdx cat #{testpath}/test.mdx")
  end
end
