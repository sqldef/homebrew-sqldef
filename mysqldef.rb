class Mysqldef < Formula
  desc 'The easiest idempotent schema management by SQL.'
  homepage 'https://github.com/k0kubun/sqldef'
  url 'https://github.com/k0kubun/sqldef.git', tag: 'v0.5.20'
  head 'https://github.com/k0kubun/sqldef.git'

  def install
    system 'curl', '-o', 'mysqldef.zip', '-sL', "https://github.com/k0kubun/sqldef/releases/download/v#{version}/mysqldef_darwin_amd64.zip"
    system 'unzip', 'mysqldef.zip'
    bin.install 'mysqldef'
  end
end
