#!/usr/bin/env bash 

zypper in -y ffmpeg gstreamer-plugins-{good,bad,ugly,libav} libavcodec vlc-codecs && \
    mkdir -p /var/lib/provision && \
    touch /var/lib/provision/codecs-installed
