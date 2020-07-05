class Mysqldef < Formula
  version = 'v0.5.20'
  desc 'The easiest idempotent schema management by SQL.'
  homepage 'https://github.com/k0kubun/sqldef'

  def install
    system 'curl', '-o', 'mysqldef.zip', '-sL', "https://github.com/k0kubun/sqldef/releases/download/#{version}/mysqldef_darwin_amd64.zip"
    system 'unzip', 'mysqldef.zip'
    bin.install 'mysqldef'
  end
end
