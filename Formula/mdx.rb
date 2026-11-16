class Mdx < Formula
  desc "Terminal reader for Markdown and MDX"
  homepage "https://github.com/ybbapp/mdx"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/ybbapp/mdx/releases/download/v0.3.1/mdx_v0.3.1_darwin_arm64.tar.gz"
      sha256 "b5a6b39a02e2a2629da4de8513ba7367e225d19050403e96f12d4f7e7f3439fa"
    end
    on_intel do
      url "https://github.com/ybbapp/mdx/releases/download/v0.3.1/mdx_v0.3.1_darwin_amd64.tar.gz"
      sha256 "6dd9288ee5cf2da56dfeb91c8ac105f22f4cc783a522e49898ffc91296b28b25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ybbapp/mdx/releases/download/v0.3.1/mdx_v0.3.1_linux_arm64.tar.gz"
      sha256 "3ee0b01367234ab22185dc1267cd54316c12884ef8fd358510496acba33f0c1c"
    end
    on_intel do
      url "https://github.com/ybbapp/mdx/releases/download/v0.3.1/mdx_v0.3.1_linux_amd64.tar.gz"
      sha256 "849eacd8efa2371b6581cbc2cb9cff3559bf26f058c3db5a729eb572f7c78e6b"
    end
  end

  def install
    bin.install "mdx"
    (share/"mdx").install "sample.mdx"
  end

  test do
    (testpath/"test.mdx").write "# Homebrew test\n"
    assert_match "Homebrew test", shell_output("#{bin}/mdx cat #{testpath}/test.mdx")
  end
end
