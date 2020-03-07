# Permanent Proxy Server

A proxy server configured for [Permanent Proxy](https://labs.xda-developers.com/store/app/nl.jolanrensen.permanentproxy), ready to run in GCP.

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/felipecassiors/permanent-proxy-server)](https://hub.docker.com/r/felipecassiors/permanent-proxy-server/builds)
[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/felipecassiors/permanent-proxy-server)](https://hub.docker.com/r/felipecassiors/permanent-proxy-server/builds)
[![Docker Pulls](https://img.shields.io/docker/pulls/felipecassiors/permanent-proxy-server)](https://hub.docker.com/r/felipecassiors/permanent-proxy-server)

## Usage

``` sh
docker run -d --restart always --name permanent-proxy-server felipecassiors/permanent-proxy-server 
```
