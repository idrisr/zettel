# Table of Contents

This is a table of contents for your project. It helps the reader navigate through the README quickly.
- [Quick Start Demo](#quick-start-demo)
- [Table of Contents](#table-of-contents)
- [Installation](#installation)

# Quick Start Demo

This is a simple vim plugin which defines a fold expression for the option
`foldexpr` for a filetype I'm calling `zettel`, which relies only on indentation
for folding.

From this original file, the difference in fold behavior can be seen

## Original
<img src="img/original.png" alt="original" width="358" height="462">

## Default Fold
<img src="img/bad-fold.png" alt="bad fold" width="358" height="462">

## Custom Fold
<img src="img/good-fold.png" alt="good fold" width="358" height="462">

# Installation

## nix
This repo defines an overlay, so you can add the overlay to your nixpkgs and
then import then install the package.

## non nix
Download the repo and put it in the right place.

# Status
[![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/idrisr/zettel?include_prereleases)](https://img.shields.io/github/v/release/idrisr/zettel?include_prereleases)
[![GitHub last commit](https://img.shields.io/github/last-commit/idrisr/zettel)](https://img.shields.io/github/last-commit/idrisr/zettel)
[![GitHub issues](https://img.shields.io/github/issues-raw/idrisr/zettel)](https://img.shields.io/github/issues-raw/idrisr/zettel)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/idrisr/zettel)](https://img.shields.io/github/issues-pr/idrisr/zettel)
[![GitHub](https://img.shields.io/github/license/idrisr/zettel)](https://img.shields.io/github/license/idrisr/zettel)
    ![workflow status](https://github.com/idrisr/zettel/actions/workflows/push.yml/badge.svg)

# Further Reading
See the fold related chapters from the book [Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com/chapters/48.html).
