#!/bin/bash

repository="frog-is-mine"
name="minecraft.rcon"
version="1.0.0"
mcrcon_version="0.7.2"

docker build -t "$repository/$name:$version-$mcrcon_version" .
