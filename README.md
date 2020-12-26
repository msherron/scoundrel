# Lando Scoundrel

A [Lando-based](https://docs.lando.dev/) Drupal 9 project template, chock full of my favorite goodies - for the _discerning_ galactic smuggler.

### What's all this for, then?

I found myself adding a lot of local tooling stuff to most Drupal projects that either Lando or Core doesn't provide by default. I got sick of copying and tweaking the same lando file every time I created a project, so I decided to build Scoundrel as a Composer project and _step up my life_.

This project can be used as a local development environment for D9 builds, or to spin up a quick environment for Contrib or Core development. Inspired and partially extended from [Lando + Drupal Contributions](https://github.com/thinktandem/drupal-contributions).

### Prerequisites

1. [Install Composer](https://getcomposer.org/download/). "But I don't wanna install any php stuff locally, I want Lando to handle handle all that?!" No, you don't. It's hella slow running file I/O inside Docker. Trust me on this one.
1. [Install Lando](https://docs.lando.dev/basics/installation.html).

### Getting started

1. Run `composer create-project msherron/scoundrel`.
1. [Require any additional Composer dependencies](https://getcomposer.org/doc/03-cli.md#require) for your project. You know you want some Contrib stuff.
1. Run `scoundrel-start`. Lando will ask you some questions, and then start.
1. To install Drupal, run `lando si [profile-name]`. You can not provide a profile name, if you really like Standard .. I guess.

### Instructions on the goodies:

1. Drush - we handle the path to your Drupal for you, just run `lando drush [cmd]`. No URI required.
1. Xdebug - it's really easy to _use_ [XDebug w/ Lando](https://docs.lando.dev/guides/lando-with-vscode.html#getting-started), but you don't want to leave it on all the time, as it really tanks performance. I provide two handy commands: `xdebug-on` and `xdebug-off`.
1. Run-tests - Core's command line test execution script ([run-tests.sh](https://www.drupal.org/docs/testing/phpunit-in-drupal/running-tests-through-command-line-with-run-testssh)), handles Simpletest, PHPUnit, etc.
1. PHPUnit - Takes a path to a module/profile as an argument to run a targeted test.

### "Who is sniffing my _WHAT_ now?"

Oh, that's just [GrumPHP](https://phpqa.io/projects/grumphp.html). It does some basic code quality checking for you and blocks your commits if they don't pass. You want that. It makes you better.
