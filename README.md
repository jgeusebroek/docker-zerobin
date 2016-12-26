[![](https://images.microbadger.com/badges/image/jgeusebroek/zerobin.svg)](https://microbadger.com/images/jgeusebroek/zerobin "Get your own image badge on microbadger.com")
# Docker Zerobin image

A tiny image running [gliderlabs/docker-alpine](https://github.com/gliderlabs/docker-alpine) Linux and [Zerobin](https://github.com/elrido/ZeroBin).

## Usage

	docker run --restart=always -d \
		-p 0.0.0.0:80:80 \
		--hostname=zerobin \
		--name=zerobin \
		-v /<host_data_directory>:/zerobin/data \
		-v /<host_cfg_directory>:/zerobin/cfg \
		jgeusebroek/zerobin

On first run it will copy the sample config file if there isn't a config file already.

## Optional environment variables

* `UID` User ID php fpm daemon account (default: 991).
* `GID` Group ID php fpm daemon account (default: 991).

## License

MIT / BSD

## Author Information

[Jeroen Geusebroek](http://jeroengeusebroek.nl/) forked from [Wonderfall](https://github.com/Wonderfall/dockerfiles)
