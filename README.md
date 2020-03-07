# Nodejs boilerplate

This boilerplate will help you cutting some time while setting up
a new -nodejs- project with -typescript- and -mocha- for testing.

## Contents

	- mocha
	- chai
	- nyc (for coverage reports and VS  Code TDD plugin)
	- typings for node, mocha and chai

## Requirements

	- [nodejs](https://nodejs.org/) & npm installed
	- [typescript](https://www.typescriptlang.org/#download-links) installed

## Usage

	- clone this repo
	- run `make setup`
	- customize the package.json
	- change tsconfig to your likings
	- delete the makefile or flesh it out

By default your code will reside in the `src` folder and the transpiled code will
be written to `dist`.
For testing testfiles should be named `-.test.ts` and live in a `/__tests__` folder
next to the code they are testing.

## Greetings

May you enjoy using this piece of software as much as I enjoyed writing it. Stay bug free and have an awesome day <3
