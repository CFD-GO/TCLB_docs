
# About TCLB_docs repo
This repo contains documentation for the tclb solver: https://github.com/CFD-GO/TCLB

Tutorials are hosted at https://docs.tclb.io/

## Tutorial

This short tutorial will show you how to serve the webpage at you local machine and test your changes.

First, it is safe to isolate your enviroment.

Install virtual enviroment:
```sh
$ pip3 install virtualenv virtualenvwrapper
$ source /usr/local/bin/virtualenvwrapper.sh
```

Depending on the version install, the source location can differ and environment paths need to be exported:
```sh
$ export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
$ export VIRTUALENVWRAPPER_VIRTUALENV=/home/<user>/.local/bin/virtualenv
$ source ~/.local/bin/virtualenvwrapper.sh
```

You can lookup your pythons' distributions using `$ whereis python` or just pick the default one...

```sh
$ mkvirtualenv --python=$(which python3) tclb-docs-env
```

To activate `$ workon tclb-docs-env`, to deactive enter `$ deactivate`

Install dependencies:
```sh
(tclb-docs-env) $  pip install -r requirements.txt
```

Run server on you local machine:
```sh
(tclb-docs-env) $ mkdocs serve
```
To deploy:
```sh
(tclb-docs-env) $ mkdocs gh-deploy
```

More questions? Visit original documentation: http://www.mkdocs.org/
