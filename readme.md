ChocolateyPackages
==================
This is my repository of all my Chocolatey packages, as recommended by Chocolatey documentation.

[Chocolatey](https://chocolatey.org/) is a package manager for Windows.

Feel free to contact me by email or through this repository issues page. Pull requests are welcome.

All package code is licensed under the terms of the MIT License.

Pack
----

To pack the package, issue the following command like this:

```console
> choco pack ./Graphviz/Graphviz.nuspec
```

To install the resulting package (for example, to test it):

```console
> choco install ./Graphviz.2.38.0.1.nupkg -f
```

Push
----

To push the package to Chocolatey.org, invoke the following:

```console
> choco push ./Graphviz.2.38.0.1.nupkg --api-key [your API key]
```
