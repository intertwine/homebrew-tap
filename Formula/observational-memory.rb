# typed: strict
# frozen_string_literal: true

# Formula for observational-memory.
class ObservationalMemory < Formula
  include Language::Python::Virtualenv

  desc "Local cross-agent memory and search for coding agents"
  homepage "https://github.com/intertwine/observational-memory"
  url "https://files.pythonhosted.org/packages/3b/d2/86d98433b65fcca43549d6afe78b2bd29f37101f0a2e7a60ec743ce2ee8a/observational_memory-0.9.0.tar.gz"
  sha256 "c9fa924847a01e4e25b91acf638cb1ee1d73392b33d49899f43bacda28f9f599"
  license "MIT"

  depends_on "jq"
  depends_on "python@3.13"

  on_arm do
    resource "cffi" do
      url "https://files.pythonhosted.org/packages/4a/d2/a6c0296814556c68ee32009d9c2ad4f85f2707cdecfd7727951ec228005d/cffi-2.0.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "45d5e886156860dc35862657e1494b9bae8dfa63bf56796f2fb56e1679fc0bca"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/9b/22/adf66990e63584a68dfb50c24f48a125c07b1699899381c8151e63ed458c/cryptography-49.0.0-cp311-abi3-macosx_11_0_arm64.whl"
      sha256 "966fe0e9c67490071f14c0d2b1cb2dfb3023c5ce39457343931415f08382f2db"
    end

    resource "jiter" do
      url "https://files.pythonhosted.org/packages/d0/2b/c3eaf16f5d7c9bad66ea32f40a95bd169b29a91217fcc7f081375157e99c/jiter-0.16.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "d28bb3c26762358dadf3e5bf0bccd29ae987d65e6988d2e6f49829c76b003c09"
    end

    resource "numpy" do
      url "https://files.pythonhosted.org/packages/85/4b/953118a730ee3b35e28645e0eb4cf9beec5bdbb954e1ac2f5fcefba6bbc3/numpy-2.5.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "146b81cdd3967fdb6beca8ba25f00c58741d8f3cbd797f55af0fbe0bfec3469c"
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
      url "https://files.pythonhosted.org/packages/8a/33/07675aaad7f26ea013d5e884d9a0d784b79c6bd7566c333f5a52fa3c610b/numpy-2.5.0-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "520e6b8be0a4b65840ac8090d4f51cef4bed66e2b0894d5a520f099adc24a9b2"
    end

    resource "pydantic-core" do
      url "https://files.pythonhosted.org/packages/51/a2/5d30b469c5267a17b39dec53208222f76a8d351dfac4af661888c5aee77d/pydantic_core-2.46.4-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "5d5902252db0d3cedf8d4a1bc68f70eeb430f7e4c7104c8c476753519b423008"
    end
  end

  preserve_rpath

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end

  resource "anthropic" do
    url "https://files.pythonhosted.org/packages/85/3c/501c58a8f8c68811079e218a25d8672fe4fb9a650a4655e499e24d9375e9/anthropic-0.115.1-py3-none-any.whl"
    sha256 "685fa94964c1b9428f6a76e42d0dbae49aa2016f5ad386a96becac04c5e80ef9"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/b0/7b/90df4a0a816d98d6ea26f559d87836d494a2cf1fcf063be67df50a7bcc30/anyio-4.14.1-py3-none-any.whl"
    sha256 "4e5533c5b8ff0a24f5d7a176cbe6877129cd183893f66b537f8f227d10527d72"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/ef/2f/c5464532e965badff2f4c4c1a3a83f5697f0d7c407ed0cda44aaa99bb451/certifi-2026.6.17-py3-none-any.whl"
    sha256 "2227dcbaafe0d2f59279d1762ddddc37783ed4354594f194ffc31d20f41fc3db"
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
    url "https://files.pythonhosted.org/packages/ae/f4/561ed79fd94876160018a5e75254cfcb9b0e62d4dded9dcb20072e86d623/openai-2.44.0-py3-none-any.whl"
    sha256 "0a2a3ab2e29aeda368700f662ff9ba0f9df17ba4c54577a64e08b8115a3cc0ad"
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
    url "https://files.pythonhosted.org/packages/d8/8e/bb97bb0c71802080bfc8952937d174e49cfc50de5c951dd47b2496f0dcdb/tqdm-4.68.3-py3-none-any.whl"
    sha256 "39832cc2def2789a6f29df83f172db7416cea70052c0907a57801c5f2fdccb03"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
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
