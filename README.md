# One Hour One Life Docker

## Server

### Usage

```
./build_server_fetch.sh
./build_server.sh
./package_server.sh
docker volume create oholdata1 # optional, must match package_server_run.sh
./package_server_run.sh
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

## Windows Client Cross Compile

### Usage

```
./windows_client_fetch.sh
./windows_client_build.sh
# copy config/example.s3cfg to config/.s3cfg and fill in access and secret keys
# currently uploads to fixed s3 bucket
./windows_client_upload.sh
```
