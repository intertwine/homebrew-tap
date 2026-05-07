# typed: strict
# frozen_string_literal: true

# Formula for observational-memory.
class ObservationalMemory < Formula
  include Language::Python::Virtualenv

  desc "Cross-agent observational memory and local search for Claude Code, Codex CLI, Cowork, and Hermes Agent"
  homepage "https://github.com/intertwine/observational-memory"
  url "https://files.pythonhosted.org/packages/1f/81/07e1a0182694e880929c72ef05c351607e8f367e2bc3a17ba9e37d23d4df/observational_memory-0.5.4.tar.gz"
  sha256 "0844ef525de206637d2b18c943983f3896becd05722a61b3fa41960432a79005"
  license "MIT"

  depends_on "jq"
  depends_on "python@3.13"

  on_arm do
    resource "jiter" do
      url "https://files.pythonhosted.org/packages/d6/be/080c96a45cd74f9fce5db4fd68510b88087fb37ffe2541ff73c12db92535/jiter-0.14.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "4b77da71f6e819be5fbcec11a453fde5b1d0267ef6ed487e2a392fd8e14e4e3a"
    end

    resource "numpy" do
      url "https://files.pythonhosted.org/packages/c1/62/2b7a48fbb745d344742c0277f01286dead15f3f68e4f359fbfcf7b48f70f/numpy-2.4.4-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "e823b8b6edc81e747526f70f71a9c0a07ac4e7ad13020aa736bb7c9d67196115"
    end

    resource "pydantic-core" do
      url "https://files.pythonhosted.org/packages/c1/81/4fa520eaffa8bd7d1525e644cd6d39e7d60b1592bc5b516693c7340b50f1/pydantic_core-2.46.4-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "c94f0688e7b8d0a67abf40e57a7eaaecd17cc9586706a31b76c031f63df052b4"
    end
  end

  on_intel do
    resource "jiter" do
      url "https://files.pythonhosted.org/packages/97/2a/09f70020898507a89279659a1afe3364d57fc1b2c89949081975d135f6f5/jiter-0.14.0-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "af72f204cf4d44258e5b4c1745130ac45ddab0e71a06333b01de660ab4187a94"
    end

    resource "numpy" do
      url "https://files.pythonhosted.org/packages/14/1d/d0a583ce4fefcc3308806a749a536c201ed6b5ad6e1322e227ee4848979d/numpy-2.4.4-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "08f2e31ed5e6f04b118e49821397f12767934cfdd12a1ce86a058f91e004ee50"
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
    url "https://files.pythonhosted.org/packages/5d/a0/c775c59ab9445ecabb57ef3d5c24027de060139189a9e312ef9ef889a665/anthropic-0.100.0-py3-none-any.whl"
    sha256 "1c15769efa15d8fd5c1ebf900e25c57e3ee540f8554a29aa56e4edefffe2951d"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/da/42/e921fccf5015463e32a3cf6ee7f980a6ed0f395ceeaa45060b61d86486c2/anyio-4.13.0-py3-none-any.whl"
    sha256 "08b310f9e24a9594186fd75b4f73f4a4152069e3853f1ed8bfbf58369f4ad708"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/22/30/7cd8fdcdfbc5b869528b079bfb76dcdf6056b1a2097a662e5e8c04f42965/certifi-2026.4.22-py3-none-any.whl"
    sha256 "3cb2210c8f88ba2318d29b0388d1023c8492ff72ecdde4ebdaddbb13a31b1c4a"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/ae/44/c1221527f6a71a01ec6fbad7fa78f1d50dfa02217385cf0fa3eec7087d59/click-8.3.3-py3-none-any.whl"
    sha256 "a2bf429bb3033c89fa4936ffb35d5cb471e3719e1f3c8a7c3fff0b8314305613"
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
    url "https://files.pythonhosted.org/packages/5d/13/ad7d7ca3808a898b4612b6fe93cde56b53f3034dcde235acb1f0e1df24c6/idna-3.13-py3-none-any.whl"
    sha256 "892ea0cde124a99ce773decba204c5552b69c3c67ffd5f232eb7696135bc8bb3"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/9d/1c/5d43735b2553baae2a5e899dcbcd0670a86930d993184d72ca909bf11c9b/openai-2.36.0-py3-none-any.whl"
    sha256 "143f6194b548dbc2c921af1f1b03b9f14c85fed8a75b5b516f5bcc11a2a50c63"
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
    url "https://files.pythonhosted.org/packages/16/e1/3079a9ff9b8e11b846c6ac5c8b5bfb7ff225eee721825310c91b3b50304f/tqdm-4.67.3-py3-none-any.whl"
    sha256 "ee1e4c0e59148062281c49d80b25b67771a127c85fc9676d3be5f243206826bf"
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
