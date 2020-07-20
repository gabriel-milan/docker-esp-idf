# Docker ESP-IDF

[![](https://images.microbadger.com/badges/version/gabrielmilan/esp-idf.svg)](https://hub.docker.com/r/gabrielmilan/cocalc-atlas/tags "Latest CPU tag")

This is the repository for the `gabrielmilan/esp-idf` Docker image.

It's supposed to be similar to the `espressif/idf` image but with ESP-IDF versions unsupported by the current existing tags.

I've built this image in order to use it for CI on other projects.

## Usage

- Pull it:

```
docker pull gabrielmilan/esp-idf
```

- Run it inside your project!

```
docker run --rm -v $PWD:/project -w /project gabrielmilan/esp-idf make
```
