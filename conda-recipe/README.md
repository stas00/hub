# conda package

## To build

Prep:

```
apt install golang
conda install conda-build
```

Build:

For now, it's under this branch:
```
git clone https://github.com/stas00/hub/tree/conda-build
cd hub
conda-build conda-recipe --output-folder conda-dist
```

XXX: currently only unix is supported, someone with windows know-how and access, needs to port `build.sh` here.


## To Install

Until someone gets it onto conda servers, just install it from the conda package you just built:

```
$ conda install conda-dist/linux-64/hub-v2.5.1-1.tar.bz2
```

adjust the path to whatever package name was created - the version will change.

and test:

```
$ hub --version
```

## Integration

The `conda-build` target:

```
conda-build:
	conda-build conda-recipe --output-folder conda-dist
```
can be added to hub's `Makefile` should they support it.
