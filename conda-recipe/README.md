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
git clone -b conda-build https://github.com/stas00/hub
cd hub
make conda-build
```

Hopefully it gets merged into https://github.com/github/hub.

HELP NEEDED: currently only unix is supported, someone with windows know-how and access, needs to port `build.sh` to `bld.bat` in this directory. It should take only a few minutes if you know what you're doing, as it's just a few lines of code.


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

## To upload to anaconda.org

Prep:

Register for free at https://anaconda.org/

Upload:

Either do it manually:

```
anaconda upload conda-dist/linux-64/hub-v2.5.1-1.tar.bz2
```

Or replace `YOUR_CONDA_USERNAME` inside `Makefile`, and then run:

```
make conda-upload
```

Then tell others that to install this package they need to know your channel name, so the installation command will be:

```
conda install hub -c YOUR_CONDA_USERNAME
```
