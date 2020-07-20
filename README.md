# Docker ESP-IDF

[![](https://images.microbadger.com/badges/version/gabrielmilan/esp-idf.svg)](https://hub.docker.com/r/gabrielmilan/esp-idf/tags "Show all tags")

This is the repository for the `gabrielmilan/esp-idf` Docker image.

It's supposed to be similar to the `espressif/idf` image but with ESP-IDF versions unsupported by the current existing tags.

I've built this image in order to use it for CI on other projects. If you need a specific version of ESP-IDF not supported by my image nor by `espressif/idf` images, please let me know.

## Available tags:

* `gabrielmilan/esp-idf:3.2.4` for ESP-IDF v3.2.4

## Usage

- Pull it:

```
docker pull gabrielmilan/esp-idf
```

- Run it inside your project!

```
docker run --rm -v $PWD:/project -w /project gabrielmilan/esp-idf:<TAG> make
```
