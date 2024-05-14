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

#### notes
- if you wish to use the account system instead of sessions being tied to devices, change `VITE_BYPASS_LOGIN` to `0` in `pokerogue/.env.development`
  - if you do this after you already have session data, creating an account will not carry over your session data. you will have to start over.
- you can add the `-d` flag, making this `docker compose up -d`, if you don't want to see the server logs. this is recommended.

### updating

development on [pokerogue](https://github.com/pagefaultgames/pokerogue) is currently at breakneck pace, so do this at your own discretion as bugs are fixed or features implemented that you would like to use.

```bash
docker compose down
sh refresh_source.sh
docker compose up --build server client
```

if you have modified any of the source, you may be in for a certified Fun Time™️ here, but normally you should be fine.

*again recommended but not required to use the `-d` flag here*

## see also

the official repository has notes for setting this up to work with domain names/the local api and database instead of the official api server.

***please read that [here](https://github.com/pagefaultgames/rogueserver#tying-to-a-domain)***