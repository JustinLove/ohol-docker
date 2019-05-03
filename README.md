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

#### Historical builds

```
SERVER_VERSION=58 DATA_VERSION=57 ./build_server_fetch.sh
./build_server.sh
./package_server_old.sh
docker volume create oholdatav57 # optional, must match run command
./package_server_run_v58.sh
```

#### Windows (Docker Toolbox)

Must run from provided docker shell.

Change -it to -i in run script. ctrl-c will detach and not kill.

Will need to edit the docker VirtualBox to forward port 8005.

### Configuration

Default configuration disables most official services, except the ticketing server.

To override settings on a per-instance basis, mount over the /ohol/configure_settings.sh

```
  --mount type=bind,source=$(pwd)/local_settings.sh,target=/ohol/configure_settings.sh \
```


### Running in the cloud

I've got setup working with AWS and [docker-machine](https://docs.docker.com/machine/overview/) Refer to the documentation for docker-machine and your machine driver for detailed setup instructions

```
docker-machine create --driver amazonec2 my-ohol
eval $(docker-machine env my-ohol) # this is on Mac. May want to look up for your environment
docker volume create ...
docker run ...
```

The `machine_run.sh` script has an example of running a command with the machine environment set.

Note that the eval command makes all `docker` commands operate on the remote virtual machine.

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

## Windows Client Cross Compile

### Usage

```
./windows_client_fetch.sh
./windows_client_build.sh
# copy config/example.s3cfg to config/.s3cfg and fill in access and secret keys
# currently uploads to fixed s3 bucket
./windows_client_upload.sh
```
