run_env:
	docker run \
		-it \
		--rm \
		--name "$$(basename $$PWD)" \
		-v `pwd`:/usr/src/app \
		-w /usr/src/app \
		starefossen/ruby-node:latest \
		bash -c "bundle install && npm install -g mjml && bash"
