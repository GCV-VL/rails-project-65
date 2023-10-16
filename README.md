[![Actions Status](https://github.com/GCV-VL/rails-project-65/actions/workflows/CI.yml/badge.svg)](https://github.com/GCV-VL/rails-project-65/actions/workflows/CI.yml)
[![Actions Status](https://github.com/GCV-VL/rails-project-65/workflows/hexlet-check/badge.svg)](https://github.com/GCV-VL/rails-project-65/actions)

# Bulletin board

Bulletin board is a service where you can post ads and search for existing ones. Each ad is pre-moderated by the service administrators. Administrators can return an ad for revision, publish it, or archive it.

(production deployed on [render](https://bulletin-board-ztlu.onrender.com/))

## Local installation
```
make install-without-production
```
(after that fill *.env* file with correct values)
## Start dev-server
```
make dev-start
```
## Start linters
```
make lint
```
## Start tests
```
make test
```
## Start system tests
You need Firefox first
```
sudo apt install firefox
```
then
```
make test-system
```
or
```
make test-system-headless
```

