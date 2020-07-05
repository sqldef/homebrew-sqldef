class Mysqldef < Formula
  desc 'The easiest idempotent schema management by SQL.'
  homepage 'https://github.com/k0kubun/sqldef'
  url 'https://github.com/k0kubun/sqldef.git',
    tag: 'v0.5.20',
    revision: '28ca2e18783d28717772750cc93fa12da8d16c38'
  head 'https://github.com/k0kubun/sqldef.git'

  depends_on 'go' => :build

  def install
    system 'make', 'build', 'GOPATH=/tmp/gopath'
    bin.install Dir.glob('build/*-*/mysqldef').first
  end
end
