ChocolateyPackages
==================
This is my repository of all my Chocolatey packages, as recommended by Chocolatey documentation.

[Chocolatey](https://chocolatey.org/) is a package manager for Windows.

Currently added packages are:
- cask: [![Chocolatey page for cask](https://img.shields.io/chocolatey/v/cask)](https://chocolatey.org/packages/cask/)

Pack
----

To pack the package, issue the following command like this:

```console
$ choco pack ./<PACKAGE>/<PACKAGE>.nuspec
```

To install the resulting package (for example, to test it), run the following
command with the administrator permissions:

```console
$ choco install <PACKAGE> -dv --source "'.;https://chocolatey.org/api/v2/'"
```

Push
----

To push the package to Chocolatey.org, invoke the following:

```console
$ choco push ./<PACKAGE>.<VERSION>.nupkg --api-key <API_KEY>
```
