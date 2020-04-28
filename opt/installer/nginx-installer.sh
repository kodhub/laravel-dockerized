#!/usr/bin/env bash
echo "Nginx installer starting.."

apt clean

apt update

apt install nginx -y
