class ShellGptAT110 < Formula
  include Language::Python::Virtualenv

  desc "A command-line productivity tool powered by GPT-3 and GPT-4, will help you accomplish your tasks faster and more efficiently"
  homepage "https://github.com/TheR1D/shell_gpt"
  url "https://github.com/TheR1D/shell_gpt/archive/refs/tags/1.1.0.tar.gz"
  sha256 "67b18d3042968f75c0c2aa82bb6d25a7e12d5f858ea4400301a1575669611dd1"
  license "MIT"
  head "https://github.com/TheR1D/shell_gpt", branch: "main"

  # https://github.com/aio-libs/aiohttp/issues/7739#issuecomment-1773868351
  depends_on "python@3.11"

  # shell_gpt
  # ├─ requests >= 2.28.2, < 3.0.0
  # │  ├─ charset_normalizer >= 2, < 4
  # │  ├─ idna >= 2.5, < 4
  # │  ├─ urllib3 >= 1.21.1, < 3
  # │  └─ certifi >= 2017.4.17
  # ├─ typer >= 0.7.0, < 1.0.0
  # │  ├─ click >= 7.1.1, < 9.0.0
  # │  └─ typing-extensions >= 3.7.4.3
  # ├─ click >= 7.1.1, < 9.0.0
  # ├─ rich >= 13.1.0, < 14.0.0
  # │  ├─ pygments ^2.13.0
  # │  └─ markdown-it-py >= 2.2.0
  # │     └─ mdurl ~= 0.1
  # ├─ distro >= 1.8.0, < 2.0.0
  # ├─ openai >= 1.6.1, < 2.0.0
  # │  ├─ httpx >= 0.23.0, < 1
  # │  │  ├─ certifi
  # │  │  ├─ httpcore == 1.*
  # │  │  │  ├─ certifi
  # │  │  │  └─ h11 >= 0.13, < 0.15
  # │  │  ├─ anyio
  # │  │  │  ├─ idna >= 2.8
  # │  │  │  └─ sniffio >= 1.1
  # │  │  ├─ idna
  # │  │  └─ sniffio
  # │  ├─ pydantic >= 1.9.0, < 3
  # │  │  ├─ typing-extensions >= 4.6.1
  # │  │  ├─ annotated-types >= 0.4.0
  # │  │  └─ pydantic-core == 2.14.6
  # │  ├─ typing-extensions >= 4.7, < 5
  # │  ├─ anyio >= 3.5.0, < 5
  # │  │  └─ ...
  # │  ├─ distro >= 1.7.0, < 2
  # │  ├─ sniffio
  # │  └─ tqdm > 4
  # └─ instructor >= 0.4.5, < 1.0.0
  #    ├─ openai ^1.1.0
  #    │  └─ ...
  #    ├─ pydantic ^2.0.2
  #    │  └─ ...
  #    ├─ docstring-parser ^0.15
  #    ├─ typer ^0.9.0
  #    │  └─ ...
  #    ├─ rich ^13.7.0
  #    │  └─ ...
  #    └─ aiohttp ^3.9.1
  #       ├─ attrs >= 17.3.0
  #       ├─ multidict >= 4.5, < 7.0
  #       ├─ yarl >= 1.0, < 2.0
  #       │  ├─ idna >= 2.0
  #       │  └─ multidict >= 4.0
  #       ├─ frozenlist >= 1.1.1
  #       └─ aiosignal >= 1.1.2
  #          └─ frozenlist >= 1.1.0

  resource "aiohttp@3.9.1" do
    url "https://github.com/aio-libs/aiohttp/archive/refs/tags/v3.9.1.tar.gz"
    sha256 "da28c58ea999161b5106b59f782ff272d0a690117ca5560d55c7d1cc5648fb3d"
  end

  resource "aiosignal@1.3.1" do
    url "https://github.com/aio-libs/aiosignal/archive/refs/tags/v1.3.1.tar.gz"
    sha256 "827fb86c405d66973ce41c0cc1afe92e97837c0dd9c7df068333b68404d53988"
  end

  resource "annotated-types@0.6.0" do
    url "https://github.com/annotated-types/annotated-types/archive/refs/tags/v0.6.0.tar.gz"
    sha256 "0b99aba34b87840d7578705968d87fe6265c1a1604bcf9ccc11902b1d8d39ad8"
  end

  resource "anyio@4.2.0" do
    url "https://github.com/agronholm/anyio/archive/refs/tags/4.2.0.tar.gz"
    sha256 "64e2b1158ace6fee6c990ab78ee79707c0dea3f7f833a9541cd6ad056802ff87"
  end

  resource "attrs@23.2.0" do
    url "https://github.com/python-attrs/attrs/archive/refs/tags/23.2.0.tar.gz"
    sha256 "9d90e6431ed237237d7a026e85d5b7ba6f317ed3c6361693adc1567672f90abd"
  end

  resource "certifi@2023.11.17" do
    url "https://github.com/certifi/python-certifi/archive/refs/tags/2023.11.17.tar.gz"
    sha256 "2e56b9110a17f488421f00d0d5700ac625e91aa4b8a9771ba5e8318a69658485"
  end

  resource "charset_normalizer@3.3.2" do
    url "https://github.com/Ousret/charset_normalizer/archive/refs/tags/3.3.2.tar.gz"
    sha256 "9948e5c17831916ef192cf3f26c744d539eb6f4e9e3b02eea649552c52b10d91"
  end

  resource "click@8.1.7" do
    url "https://github.com/pallets/click/archive/refs/tags/8.1.7.tar.gz"
    sha256 "89251974dba8552b4e22990ca34adfb93a47ba7deb27fe7358a6661a09ca8793"
  end

  resource "distro@1.9.0" do
    url "https://github.com/python-distro/distro/archive/refs/tags/v1.9.0.tar.gz"
    sha256 "6ede051357868ed427ea71d16fc27f4d63cc0d9c8a32788aa11c450ecefcc76f"
  end

  resource "docstring-parser@0.15" do
    url "https://github.com/rr-/docstring_parser/archive/refs/tags/0.15.tar.gz"
    sha256 "02a821470241bfc46bd4dd8785215b906dc422067abd7e132521e9b09a6a1613"
  end

  resource "frozenlist@1.4.1" do
    url "https://github.com/aio-libs/frozenlist/archive/refs/tags/v1.4.1.tar.gz"
    sha256 "8bb092d0f35ef68940496a86f6f4547e668b6e73f7285baae8d8adcfb3486b8e"
  end

  resource "h11@0.14.0" do
    url "https://github.com/python-hyper/h11/archive/refs/tags/v0.14.0.tar.gz"
    sha256 "d65a85d094b76846653fa7c3b45abdaf8b4f055c643bb6eec623f1311636a474"
  end

  resource "httpcore@1.0.2" do
    url "https://github.com/encode/httpcore/archive/refs/tags/1.0.2.tar.gz"
    sha256 "a4354cd7291b667110f2146875c0db38cf3151c33a83b81be74c30994ce246d6"
  end

  resource "httpx@0.26.0" do
    url "https://github.com/encode/httpx/archive/refs/tags/0.26.0.tar.gz"
    sha256 "c2c2db4a2d83420f96e48c80dacae4f079a02e7cf67a98bb85db6fdd70517c87"
  end

  resource "idna@3.6" do
    url "https://github.com/kjd/idna/archive/refs/tags/v3.6.tar.gz"
    sha256 "2e5a4c42fc276c042a16f71ddfdc7e6b8ad12787c8b6c34517567cb9e9629174"
  end

  resource "instructor@0.4.6" do
    url "https://github.com/jxnl/instructor/archive/refs/tags/0.4.6.tar.gz"
    sha256 "656f2444e7448d104619bf50bc1ec2893920ec5919b659ba9f53f846de4a69e8"
  end

  resource "markdown-it-py@3.0.0" do
    url "https://github.com/executablebooks/markdown-it-py/archive/refs/tags/v3.0.0.tar.gz"
    sha256 "60dffc950e61a2b4ec980087d79352293f138f7b41bf3d7f8e1907160986c886"
  end

  resource "mdurl@0.1.2" do
    url "https://github.com/executablebooks/mdurl/archive/refs/tags/0.1.2.tar.gz"
    sha256 "99d4fabddab7ee4a05fa458deb1a6f0d009966e4631c50d1b875767a1cd3896d"
  end

  resource "multidict@6.0.4" do
    url "https://github.com/aio-libs/multidict/archive/refs/tags/v6.0.4.tar.gz"
    sha256 "5d1441b0b0cf18aa11a8e564996775b6c4ca0e99dcd4147c515b2cb7345b0a84"
  end

  resource "openai@1.7.0" do
    url "https://github.com/openai/openai-python/archive/refs/tags/v1.7.0.tar.gz"
    sha256 "744172678306d346feb268609740efef482319b9b04f6f65af5151639ae7409e"
  end

  resource "pydantic-core@2.14.6" do
    url "https://github.com/pydantic/pydantic-core/archive/refs/tags/v2.14.6.tar.gz"
    sha256 "c9b7763bbeca12f51a97c578d71111519a4946e40ed23001aaed08c791615c0f"
  end

  resource "pydantic@2.5.3" do
    url "https://github.com/pydantic/pydantic/archive/refs/tags/v2.5.3.tar.gz"
    sha256 "c7f3e8252b2732bf6a25d82642c7dad74501c3275215c49a13e3d792a3f92c14"
  end

  resource "pygments@2.17.2" do
    url "https://github.com/pygments/pygments/archive/refs/tags/2.17.2.tar.gz"
    sha256 "163e0235b3739c24d7631bb7b0e5829f9ea081c10b26662354c3ba0e6e95f8ea"
  end

  resource "requests@2.31.0" do
    url "https://github.com/psf/requests/archive/refs/tags/v2.31.0.tar.gz"
    sha256 "24bc1acfdf14f8b94cb2b6a8c38ef9a99bdd146a2976b5a2db7706fba0bcb7cd"
  end

  resource "rich@13.7.0" do
    url "https://github.com/Textualize/rich/archive/refs/tags/v13.7.0.tar.gz"
    sha256 "04dbb741843f63af2523fb56cab01a9f9aa08ba8d3033f2f9ff69304e210611c"
  end

  resource "sniffio@1.3.0" do
    url "https://github.com/python-trio/sniffio/archive/refs/tags/v1.3.0.tar.gz"
    sha256 "9279dc8ca9a78186d14d5e5892c21bcf756381039997bf8f5d7ed90af884dda1"
  end

  resource "tqdm@4.66.1" do
    url "https://github.com/tqdm/tqdm/archive/refs/tags/v4.66.1.tar.gz"
    sha256 "eab2c737644e1eeeb4bca4165d0b0ff3e8ba3b1c91c81b60fe65744de0188d04"
  end

  resource "typer@0.9.0" do
    url "https://github.com/tiangolo/typer/archive/refs/tags/0.9.0.tar.gz"
    sha256 "64cec3f6cf47a0059b5c0f79ca04d2791101a9013c6e189590890fe796c7f8ec"
  end

  resource "typing-extensions@4.9.0" do
    url "https://github.com/python/typing_extensions/archive/refs/tags/4.9.0.tar.gz"
    sha256 "7c510df94f5766765c3ed2498bec488881ab6b0b98be8b8dc9f47585f4b08897"
  end

  resource "urllib3@2.1.0" do
    url "https://github.com/urllib3/urllib3/archive/refs/tags/2.1.0.tar.gz"
    sha256 "d1a274bdd1427b0604cd8e52a2a76281d08c6e7f9f37d1b056066581ee743475"
  end

  resource "yarl@1.9.4" do
    url "https://github.com/aio-libs/yarl/archive/refs/tags/v1.9.4.tar.gz"
    sha256 "d0df8ec8d4d41326406c4c2c27b795a12ace92e5cfcabcf934fa622b36a982f5"
  end

  def install
    virtualenv_install_with_resources(using: "python@3")
  end
end
