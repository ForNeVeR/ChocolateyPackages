$sha256 = 'C794EA03BC2631FFF468F4D97FA6726C536FC98EE579529779AA6F45E94E4F6D'
$url = 'http://www.graphviz.org/pub/graphviz/stable/windows/graphviz-2.38.msi'

Install-ChocolateyPackage 'Graphviz' `
    -FileType 'msi' `
    -SilentArgs '/Q' `
    -Checksum $sha256 `
    -ChecksumType 'sha256' `
    -Url $url
