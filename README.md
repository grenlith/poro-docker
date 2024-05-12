# easy docker setup for pokerogue
## requirements

- docker
- git

## usage

### download/sync source code

a script has been included to clone or pull the appropriate repositories from github:

```bash
sh refresh_source.sh
```

### running

easy as cake:

```bash
docker compose up
```

## see also

the official repository has notes for setting this up to work with domain names/the local api and database instead of the official api server.

***please read that [here](https://github.com/pagefaultgames/rogueserver#tying-to-a-domain)***