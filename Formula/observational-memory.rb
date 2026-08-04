# typed: strict
# frozen_string_literal: true

# Formula for observational-memory.
class ObservationalMemory < Formula
  include Language::Python::Virtualenv

  desc "Local cross-agent memory and search for coding agents"
  homepage "https://github.com/intertwine/observational-memory"
  url "https://files.pythonhosted.org/packages/77/de/eed1e16a10d656b1c17404d3d97bf0018392a5e6268d9401fd8467aaf8c0/observational_memory-0.10.0.tar.gz"
  sha256 "3f8c04d20196f2d94cc1f12addab8ca5e07de8dc7bc6a011110d6e81f7b57a26"
  license "MIT"

  depends_on "jq"
  depends_on "python@3.13"

  on_arm do
    resource "cffi" do
      url "https://files.pythonhosted.org/packages/55/41/4c7042f317b9217502988f0873af87e16ad606dc20f84e546e3e6ce9764c/cffi-2.1.1-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "19ee6127ee34de7d83ce3d371ebc5ed91addbdcc39f9ab15ce4eb35a4e534971"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/c5/5c/59086b4aac5e879d38ddbcf74e4be7ade89cebc3eb199a55da998c3bb46a/cryptography-50.0.0-cp311-abi3-macosx_11_0_arm64.whl"
      sha256 "031e2d5dd4bb9caa3ca9c82e5a197fd8ae680232cee62603d1a813f3f07e3d03"
    end

    resource "jiter" do
      url "https://files.pythonhosted.org/packages/d0/2b/c3eaf16f5d7c9bad66ea32f40a95bd169b29a91217fcc7f081375157e99c/jiter-0.16.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "d28bb3c26762358dadf3e5bf0bccd29ae987d65e6988d2e6f49829c76b003c09"
    end

    resource "numpy" do
      url "https://files.pythonhosted.org/packages/ab/ab/ddb499fc4f8780354395face5b65c7fd107bcd6e1d667a5f07d046956f6f/numpy-2.5.1-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "30b44a6b53a7ae63c54c089a8726e5563ed302716c5b7ccc85afade40b0e7ff6"
    end

    resource "pydantic-core" do
      url "https://files.pythonhosted.org/packages/c1/81/4fa520eaffa8bd7d1525e644cd6d39e7d60b1592bc5b516693c7340b50f1/pydantic_core-2.46.4-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "c94f0688e7b8d0a67abf40e57a7eaaecd17cc9586706a31b76c031f63df052b4"
    end
  end

  on_intel do
    resource "cffi" do
      url "https://files.pythonhosted.org/packages/4b/8d/a0a47a0c9e413a658623d014e91e74a50cdd2c423f7ccfd44086ef767f90/cffi-2.0.0-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "00bdf7acc5f795150faa6957054fbbca2439db2f775ce831222b66f192f03beb"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/1b/bc/ee4137cbbe105652c0ee4252792b78fc8e7afa4b8e61d9d5dc05a7f45731/cryptography-48.0.1-cp311-abi3-macosx_10_9_universal2.whl"
      sha256 "3e4a1a3232eef2e6c732827d5722db29a0cc8b27af2a4d865b094cf954be9ca1"
    end

    resource "jiter" do
      url "https://files.pythonhosted.org/packages/91/c0/555fc60473d30d66894ba825e63615e3be7524fac23858356afa7a38906c/jiter-0.16.0-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "41977aa5654023948c2dae2a81cbf9c43343954bef1cd59a154dd15a4d84c195"
    end

    resource "numpy" do
      url "https://files.pythonhosted.org/packages/eb/07/ec2a3f0c91761581d4b7104a740791800025983f9a4dc4e73f91a99aeac4/numpy-2.5.1-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "0bfebd8695f9863592fe744be833a258120b14a9f39da255e8aa8fade2c0ddd1"
    end

    resource "pydantic-core" do
      url "https://files.pythonhosted.org/packages/51/a2/5d30b469c5267a17b39dec53208222f76a8d351dfac4af661888c5aee77d/pydantic_core-2.46.4-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "5d5902252db0d3cedf8d4a1bc68f70eeb430f7e4c7104c8c476753519b423008"
    end
  end

  preserve_rpath

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/99/91/8acff4f5e50511b911bbccb72b8628a49c68ce14148cd9f6431094859a90/annotated_types-0.8.0-py3-none-any.whl"
    sha256 "f072f4d804ea359e4eaf198b1af7a8b0943881a87f31bb764f8bf219bb9419e0"
  end

  resource "anthropic" do
    url "https://files.pythonhosted.org/packages/63/af/0f5db57b9397a0f3b7fc204cbef143401a7cadaf982330f97f1ce3d39f34/anthropic-0.120.2-py3-none-any.whl"
    sha256 "0f0bc2b381dc0eb41c8d886b815d79c2041cd2374f83aed36f574b6dc9c579c1"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/da/35/f2287558c17e29fafc8ef3daf819bb9834061cfa43bff8014f7df7f63bdc/anyio-4.14.2-py3-none-any.whl"
    sha256 "9f505dda5ac9f0c8309b5e8bd445a8c2bf7246f3ce950121e45ea15bc41d1494"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/0b/a7/71ac2cff56fec219ed242bb11b8efb69fcc4bec75db06fb7bfe35de520e6/certifi-2026.7.22-py3-none-any.whl"
    sha256 "62f22742b58a1a33014a2b6b706588a8d7e2a88ae7bd1a6ebe8c992928483775"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/fb/e2/79c688af8b210d232694e31e59da9f6ec747bae31c3f5946e4e9b98860d5/click-8.4.2-py3-none-any.whl"
    sha256 "e6f9f66136c816745b9d65817da91d61d957fb16e02e4dcd0552553c5a197b76"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/12/b3/231ffd4ab1fc9d679809f356cebee130ac7daa00d6d6f3206dd4fd137e9e/distro-1.9.0-py3-none-any.whl"
    sha256 "7bffd925d65168f85027d8da9af6bddab658135b840670a223589bc0c8ef02b2"
  end

  resource "docstring-parser" do
    url "https://files.pythonhosted.org/packages/a7/5f/ed01f9a3cdffbd5a008556fc7b2a08ddb1cc6ace7effa7340604b1d16699/docstring_parser-0.18.0-py3-none-any.whl"
    sha256 "b3fcbed555c47d8479be0796ef7e19c2670d428d72e96da63f3a40122860374b"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/1e/5e/d4e9f1a599fb8e573b7b87160658329fbf28d19eac2718f51fc3def3aa5a/idna-3.18-py3-none-any.whl"
    sha256 "7f952cbe720b688055e3f87de14f5c3e5fdaa8bc3928985c4077ca689de849a2"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/78/0f/cc6afea3542a5142c5d8fc8211c5e059a8375105d004a41dfa2c7948dbb0/openai-2.53.0-py3-none-any.whl"
    sha256 "c694ffc747a3c4d1663ef2b07b811315a476164ee5efa3a993967349ebca7618"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0c/c3/44f3fbbfa403ea2a7c779186dc20772604442dde72947e7d01069cbe98e3/pycparser-3.0-py3-none-any.whl"
    sha256 "b727414169a36b7d524c1c3e31839a521725078d7b2ff038656844266160a992"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/fd/7b/122376b1fd3c62c1ed9dc80c931ace4844b3c55407b6fb2d199377c9736f/pydantic-2.13.4-py3-none-any.whl"
    sha256 "45a282cde31d808236fd7ea9d919b128653c8b38b393d1c4ab335c62924d9aba"
  end

  resource "rank-bm25" do
    url "https://files.pythonhosted.org/packages/2a/21/f691fb2613100a62b3fa91e9988c991e9ca5b89ea31c0d3152a3210344f9/rank_bm25-0.2.2-py3-none-any.whl"
    sha256 "7bd4a95571adadfc271746fa146a4bcfd89c0cf731e49c3d1ad863290adbe8ae"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/e9/44/75a9c9421471a6c4805dbf2356f7c181a29c1879239abab1ea2cc8f38b40/sniffio-1.3.1-py3-none-any.whl"
    sha256 "2f6da418d1f1e0fddd844478f41680e794e6051915791a034ff65e5f100525a2"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/f9/1c/01bfd571a64e7f270e6bab5e33777debe0edc56759233ce84f27dec92d14/tqdm-4.70.0-py3-none-any.whl"
    sha256 "7f585706bfddbdebf89daac705b2dfcc16890130727d3197ca62c732b4310953"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl"
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end

  def install
    venv = virtualenv_create(libexec, "python3.13")
    python = Formula["python@3.13"].opt_bin/"python3.13"

    resources.each do |resource|
      wheel = buildpath/File.basename(resource.url)
      cp resource.cached_download, wheel
      system python, "-m", "pip", "--python=#{libexec/"bin/python"}", "install", "--no-deps", wheel
    end

    venv.pip_install_and_link(buildpath)
  end

  test do
    assert_match "Usage: om", shell_output("#{bin}/om --help")
    assert_match "Observational Memory Status", shell_output("#{bin}/om status")
  end
end
