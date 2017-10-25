#!/bin/bash
#
# Install rbenv rails-express version
# Usage: install-railsexpress <version>

repopath="~/Code/xing/rbenv-railsexpress"
version=$1

RUBY_BUILD_DEFINITIONS=$repopath rbenv install $version-railsexpress
rbenv alias --auto
