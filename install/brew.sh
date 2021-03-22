#!/bin/sh

############
### Taps ###
############

brew tap homebrew/core
brew tap homebrew/bundle
brew tap homebrew/services
brew tap jondot/tap

# Install Java as dependency
brew cask install java

#############
### Brews ###
#############

# Search tool like grep, but optimized for programmers
brew install ack

# Bourne-Again SHell, a UNIX command interpreter
brew install bash

# Clone of cat(1) with syntax highlighting and Git integration
brew install bat

# Remove large files or passwords from Git history like git-filter-branch
brew install bfg

# Vector graphics library with cross-device output support
brew install cairo

# Statistics utility to count lines of code
brew install cloc

# Cross-platform make
brew install cmake

# JavaScript optimizing compiler
brew install closure-compiler

# Reimplementation of ctags(1)
brew install ctags

# GNU File, Shell, and Text utilities
brew install coreutils

# Get a file from an HTTP, HTTPS or FTP server
brew install curl

# An interactive cheatsheet tool for the command-line
# ➜  navi
brew install denisidoro/tools/navi

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

# Static type checker for JavaScript
brew install flow

# Command-line outline and bitmap font editor/converter
brew install fontforge

# Simple, fast and user-friendly alternative to find
brew install fd

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

# Simple and efficient way to access statistics in git.
brew install git-quick-stats

# GitHub command-line tool
brew install github/gh/gh

# The Go programming language
brew install go

# Version Control Visualization Tool
brew install gource

# Command-line tool for generating regular expressions
brew install grex

# Numerical library for C and C++
brew install gsl

# GNU Pretty Good Privacy (PGP)
brew install gpg

# Convert source code to formatted text with syntax highlighting
brew install highlight

# User-friendly cURL replacement (command-line HTTP client
brew install httpie

# Add GitHub support to git on the command-line
brew install hub

# Configurable static site generator
brew install hugo

# The scalable code generator that saves you time.
brew install hygen

# C/C++ and Java libraries for Unicode and globalization
brew install icu4c

# Tools and libraries to manipulate images in many formats
brew install imagemagick --with-fontconfig

# Tool to capture still images from an iSight or other video source
brew install imagesnap

# Image manipulation library
brew install jpeg

# Simple terminal UI for git commands
brew install lazygit

# Access DVDs as block devices without the decryption
brew install libdvdcss

# Text-based web browser
brew install lynx

# Library for manipulating PNG images
brew install libpng

# Powerful, lightweight programming language
# ➜ Hammerspoon
brew install lua

# Mac App Store command-line interface
brew install mas

# High performance, distributed memory object caching system
brew install memcached

# High-performance, schema-free, document-oriented database
brew install mongodb

# Turn marked-up plain text into well-formatted documents
brew install multimarkdown

# NeoVim
brew install --HEAD neovim

# Open source relational database management system
brew install mysql

# ISO-C API and CLI for generating UUIDs
brew install ossp-uuid

# Swiss-army knife of markup format conversion
brew install pandoc

# Framework for layout and rendering of i18n text
brew install pango

# Password manager
brew install pass

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

# Search tool like grep and The Silver Searcher
# ➜ rg
brew install ripgrep

# Utility that provides fast incremental file transfer
brew install rsync

# Powerful, clean, object-oriented scripting language
brew install ruby

# Install various Ruby versions and implementations
brew install ruby-build

# JVM-based programming language
brew install scala

# Convert filenames and directories to a web friendly format
brew install slugify

# Command-line interface for SQLite
brew install sqlite

# Add a public key to a remote machine's authorized_keys file
brew install ssh-copy-id

# Cross-shell prompt for astronauts
brew install startship

# Open source continuous file synchronization application
brew install syncthing

# File watcher intended for use with Syncthing
brew install syncthing-inotify

# Code-search similar to ack
# ➜ ag
brew install the_silver_searcher

# Instant terminal sharing
brew install tmate

# Terminal multiplexer
brew install tmux

# Display directories as trees (with optional color/HTML output)
brew install tree

# URL extractor/launcher (needed for tmux-urlview)
brew install urlview

# Vi "workalike" with many additional features
brew install vim --with-lua

# Watch files and take action when they change
brew install watchman

# Internet file retriever
brew install wget

# JavaScript package manager
brew install yarn

# Download YouTube videos from the command-line
brew install youtube-dl

# Tracks most-used directories to make cd smarter
brew install z

# High-performance, asynchronous messaging library
brew install zeromq

# UNIX shell (command interpreter)
brew install zsh

# Fish shell like syntax highlighting for zsh
brew install zsh-syntax-highlighting
