#!/bin/sh

# Bundler manages an application's dependencies
gem install bundler

# EventMachine implements a fast, single-threaded engine for arbitrary network communications.
gem install eventmachine -- --with-cppflags=-I/usr/local/opt/openssl/include

# Process manager for applications with multiple components
gem install foreman

# git command to fetch and rebase all branches
gem install git-up

# Style checker/lint tool for markdown files
gem install mdl

# Octopress is an obsessively designed framework for Jekyll blogging.
gem install octopress

# A Ruby gem that vendors Pygments
gem install pygmentize

# Automatic Ruby code style checking tool. Aims to enforce the community-driven Ruby Style Guide.
gem install rubocop

# Create and manage complex tmux sessions easily.
gem install tmuxinator

# Manage working with development enviroment
gem install xing-scripts --source=http://gems.xing.com/
