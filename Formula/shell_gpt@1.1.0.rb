class ShellGptAT110 < Formula
  desc "A command-line productivity tool powered by GPT-3 and GPT-4, will help you accomplish your tasks faster and more efficiently"
  homepage "https://github.com/TheR1D/shell_gpt"
  url "https://github.com/vanyauhalin/test-action/releases/download/shell_gpt%401.1.0/shell_gpt.tar.zst"
  sha256 "a45c67354d6b131c105196f7212042583ca17835a368881f8deff8eba3d5b2d0"
  license "MIT"
  head "https://github.com/TheR1D/shell_gpt", branch: "main"

  depends_on "zstd" => :build

  def install
    bin.install "sgpt"
  end
end
