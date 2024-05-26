class Mysqldef < Formula
  desc 'The easiest idempotent schema management by SQL.'
  homepage 'https://github.com/k0kubun/sqldef'
  url 'https://github.com/k0kubun/sqldef.git', tag: 'v0.17.11'
  head 'https://github.com/k0kubun/sqldef.git'

  def install
    os = `uname -s`.strip.downcase
    arch = {
      'x86_64'  => 'amd64',
      'aarch64' => 'arm64',
      'arm64'   => 'arm64',
    }.fetch(`uname -m`.strip)

    system 'curl', '-o', 'mysqldef.zip', '-sL', "https://github.com/k0kubun/sqldef/releases/download/v#{version}/mysqldef_#{os}_#{arch}.zip"
    system 'unzip', 'mysqldef.zip'
    bin.install 'mysqldef'
  end
end
