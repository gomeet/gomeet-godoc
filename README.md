# gomeet-godoc

Available from docker hub as [gomeet/gomeet-godoc](https://hub.docker.com/r/gomeet/gomeet-godoc/).

## Usage with a regular gomeet-<SERVICE_NAME>

### In docker-compose

```yaml
services:
  ...snip...
  godoc:
    container_name: godoc
    image: gomeet/gomeet-godoc
    volumes:
        - ./:/go/src/github.com/gomeet/gomeet-<SERVICE_NAME>
    ports:
      - 6060:6060
  ...snip...
```

### Docker cli

```bash
docker run -p 6060:6060 \
           -v $(pwd):/go/src/github.com/gomeet/gomeet-<SERVICE_NAME> \
           --rm gomeet/gomeet-godoc
```

Open [http://localhost;6060/docs](http://localhost;6060/docs) in a browser.

## Build

Requirements :

  * [Docker](https://docs.docker.com/engine/installation/) of course

```bash
make
```

## Publish

Requirements :

  * [Docker](https://docs.docker.com/engine/installation/) of course

```bash
make push
```
