#
# Makefile to create a node typescript project
# with mocha testing framework and nyc coverage report
#
# requieres node and npm installed
#
# packages:
# 	chai
# 	mocha
# 	nyc
# 	ts-node
#
# types:
# 	chai
# 	mocha
# 	node


.DEFAULT_GOAL := help
.PHONY: help
.PHONY: setup
.PHONY: install
.PHONY: init

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

setup: ## initializes npm project and installs necessary dependencies
	@make init && make install
	@echo "creating src folder"
	@mkdir src
	@echo "removing git reference"
	@rm -rf .git
	@rm -f .gitignore

init: 	
	@echo "initializing project"
	@npm init -y > /dev/null
	@echo "setting test command"
	@sed -i.bak 's|echo.*[^"\n]|nyc --cache --reporter=text-summary mocha -r ts-node/register -R tap ./\*\*/\*\*/__tests__/\*.test.ts|g' package.json && rm package.json.bak

install: 	
	@echo "installing npm dependencies"
	@npm i -D @types/chai @types/mocha @types/node chai mocha ts-node nyc
