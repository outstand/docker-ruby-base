#!/bin/sh
set -e

# bundler is installed outside of GEM_HOME
SYSTEM_GEM_HOME=/usr/local/lib/ruby/gems/$(ls /usr/local/lib/ruby/gems)
gem uninstall -i ${SYSTEM_GEM_HOME} bundler
gem install bundler -i ${SYSTEM_GEM_HOME} -v "$BUNDLER_VERSION"
