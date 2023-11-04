# Vistula Workout App

<p align="center">

  ![Ruby](https://img.shields.io/badge/Ruby-v3.2+-red.svg)
  ![Rails](https://img.shields.io/badge/Rails-v7.1+-darkred.svg)

</p>

## Setup

1. Pull down the app from version control
2. Make sure you have Postgres running
3. 'bin/setup'

## Running the app

1. 'redis-server'
2. 'bundle exec sidekiq'
3. 'bin/run'

## Tests and CI
1. 'bin/ci' contains all the tests and checks for the app
2. 'tmp/test.log' will use the production logging format *not* the development one.

## Production

* All runtime configuration should be supplied in the UNIX environment
* Rails logging uses lograge. 'bin/setup help' can tell you how to see this locally
