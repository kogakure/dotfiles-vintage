#!/bin/sh

# Bundler manages an application's dependencies
gem install bundler

# EventMachine implements a fast, single-threaded engine for arbitrary network communications.
gem install eventmachine -- --with-cppflags=-I/usr/local/opt/openssl/include

# Process manager for applications with multiple components
gem install foreman

# git command to fetch and rebase all branches
gem install git-up

# Language Savant.
gem install github-linguist

# lolcommits takes a snapshot with your webcam every time you git commit code
gem install lolcommits

# Friendly wrapper around launchctl
gem install lunchy

# Style checker/lint tool for markdown files
gem install mdl

# Octopress is an obsessively designed framework for Jekyll blogging.
gem install octopress

# A Ruby gem that vendors Pygments
gem install pygmentize

# Automatic Ruby code style checking tool. Aims to enforce the community-driven Ruby Style Guide.
gem install rubocop

# Get a report with seo relevant data for a given URL
gem install seo_report

# Create and manage complex tmux sessions easily.
gem install tmuxinator

# Create test user
gem install xing-users --source=http://gems.xing.com/

# Manage working with development enviroment
gem install xing-scripts --source=http://gems.xing.com/
