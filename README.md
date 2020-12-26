# Lando Scoundrel

A Lando-based Drupal 9 project template, chock full of my favorite goodies - for the _discerning_ galactic smuggler.

### What's all this for, then?

I find myself adding a lot of local tooling stuff to most Drupal projects that either Lando or Core doesn't provide by default. I got sick of copying and tweaking the same lando file every time I created a project, so I decided to build Scoundrel and step up my life.

This project can be used as a local development environment for D9 builds, or to spin up a quick environment for Contrib or Core development.

### Prerequisites

1. [Install Composer](https://getcomposer.org/download/). "But I don't wanna install any php stuff locally, I want Lando to handle handle all that?!" No, you don't. It's hella slow running inside Docker. Trust me on this one.
1. [Install Lando](https://docs.lando.dev/basics/installation.html).

### Getting started

1. Run `composer create-project msherron/scoundrel`.
1. [Require any additional Composer dependencies](https://getcomposer.org/doc/03-cli.md#require) for your project. You know you want some Contrib stuff.
1. Run `scoundrel-start`. Lando will ask you some questions, and then start.
1. To install Drupal, run `lando si [profile-name]`. You can not provide a profile name, if you really like Standard .. I guess.

### Instructions on the goodies:

1. Drush - we handle the path to your Drupal for you, just run `lando drush [cmd]`. No URI required.
1. Xdebug - it's really easy to _use_ up in Lando, but you don't want to leave it on all the time, as it really tanks performance. I provide two handy commands: `xdebug-on` and `xdebug-off`.
1. Core tests - If you want to run a full Drupal regression test (`core/scripts/run-tests.sh`), same as the D.O. testbot would run, just do `lando core-tests`.
1. PHPUnit - just run *your* PHPUnit tests. Takes a path to a module/profile as an argument to run a targeted test.

### "Who is sniffing my _WHAT_ now?"

Oh, that's just [GrumPHP](https://phpqa.io/projects/grumphp.html). It does some basic code quality checking for you and blocks your commits if they don't pass. You want that. It makes you better.
