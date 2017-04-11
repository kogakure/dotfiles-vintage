#!/bin/sh

############
### Taps ###
############

brew tap homebrew/versions
brew tap homebrew/bundle
brew tap homebrew/completions
brew tap homebrew/dupes
brew tap homebrew/services

# Install Java as dependency
brew cask install java

#############
### Brews ###
#############

# Search tool like grep, but optimized for programmers
brew install ack

# Bourne-Again SHell, a UNIX command interpreter
brew install bash

# Remove large files or passwords from Git history like git-filter-branch
brew install bfg

# Vector graphics library with cross-device output support
brew install cairo

# Statistics utility to count lines of code
brew install cloc

# JavaScript optimizing compiler
brew install closure-compiler

# Reimplementation of ctags(1)
brew install ctags

# GNU File, Shell, and Text utilities
brew install coreutils

# Get a file from an HTTP, HTTPS or FTP server
brew install curl

# Load/unload environment variables based on $PWD
brew install direnv

# Pack, ship and run any application as a lightweight container
brew install docker

# Create Docker hosts locally and on cloud providers
brew install docker-machine

# Maintain consistent coding style between multiple editors
brew install editorconfig

# Distributed search & analytics engine
brew install elasticsearch

# Tools to convert fonts from OTF/TTF to EOT format
brew install eot-utils

# Play, record, convert, and stream audio and video
brew install ffmpeg --with-libsass --with-fontconfig

# Command-line outline and bitmap font editor/converter
brew install fontforge

# CLI program that accepts piped input and presents files for selection
# https://facebook.github.io/PathPicker/
brew install fpp

# Software library to render fonts
brew install freetype

# GNU compiler collection
brew install gcc

# GIF library using patented LZW algorithm
brew install giflib

# Distributed revision control system
brew install git

# Small git utilities
brew install git-extras

# Git extension for versioning large files
brew install git-lfs

# The Go programming language
brew install go

# Version Control Visualization Tool
brew install gource

# Numerical library for C and C++
brew install gsl

# User-friendly cURL replacement (command-line HTTP client
brew install httpie

# Configurable static site generator
brew install hugo

# Tools and libraries to manipulate images in many formats
brew install imagemagick --with-fontconfig

# Tool to capture still images from an iSight or other video source
brew install imagesnap

# Image manipulation library
brew install jpeg

# Library for manipulating PNG images
brew install libpng

# Powerful, lightweight programming language
# ➜ Hammerspoon
brew install lua

# GUI for vim, made for OS X
brew install macvim --with-lua

# Mac App Store command-line interface
brew install mas

# High performance, distributed memory object caching system
brew install memcached

# High-performance, schema-free, document-oriented database
brew install mongodb

# Turn marked-up plain text into well-formatted documents
brew install multimarkdown

# Open source relational database management system
brew install mysql

# ISO-C API and CLI for generating UUIDs
brew install ossp-uuid

# Swiss-army knife of markup format conversion
brew install pandoc

# Framework for layout and rendering of i18n text
brew install pango

# Manage compile and link flags for libraries
brew install pkg-config

# Interpreted, interactive, object-oriented programming language
brew install python

# Messaging broker
brew install rabbitmq

# Ruby version manager
brew install rbenv

# Make aliases for Ruby versions
brew install rbenv-aliases

# Safely sets global and per-project environment variables
brew install rbenv-vars

# Reattach process (e.g., tmux) to background
brew install reattach-to-user-namespace

# Persistent key-value database, with built-in net interface
brew install redis

# Library for command-line editing
brew install readline

# Convert between TOML, YAML and JSON
# ➜ toml2yaml -i test.toml -o test.yml; json2toml, yaml2toml etc.
brew install remarshal

# Utility that provides fast incremental file transfer
brew install rsync

# Powerful, clean, object-oriented scripting language
brew install ruby

# Install various Ruby versions and implementations
brew install ruby-build

# Command-line interface for SQLite
brew install sqlite

# Add a public key to a remote machine's authorized_keys file
brew install ssh-copy-id

# Open source continuous file synchronization application
brew install syncthing

# File watcher intended for use with Syncthing
brew install syncthing-inotify

# Code-search similar to ack
# ➜ ag
brew install the_silver_searcher

# Terminal multiplexer
brew install tmux

# Display directories as trees (with optional color/HTML output)
brew install tree

# URL extractor/launcher (needed for tmux-urlview)
brew install urlview

# Vi "workalike" with many additional features
brew install vim --with-lua

# Internet file retriever
brew install wget

# Tracks most-used directories to make cd smarter
brew install z

# High-performance, asynchronous messaging library
brew install zeromq

# UNIX shell (command interpreter)
brew install zsh

# Fish shell like syntax highlighting for zsh
brew install zsh-syntax-highlighting
