# One Hour One Life Docker

## Server

### Usage

```
./local_fetch.sh
./build.sh
./server.sh
docker volume create oholdata1 # optional, must match run.sh
./run.sh
```

#### Windows (Docker Toolbox)

Must run from provided docker shell.

Change -it to -i in run script. ctrl-c will detach and not kill.

Will need to edit the docker VirtualBox to forward port 8005.

### Storage layers


#### Build

- base system
- git, buildchain
- volume
- repo and build artifacts

- ohol/
  - x.sh
  - source/

#### Server

- base systems
- libc++
- server
- settings?

## Client Cross Compile

### Usage

```
./cross_fetch.sh
./compile.sh
# copy config/example.s3cfg to config/.s3cfg and fill in access and secret keys
# currently uploads to fixed s3 bucket
./upload.sh
```
