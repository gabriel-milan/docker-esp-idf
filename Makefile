build:
	docker build --compress  -t gabrielmilan/esp-idf:$(VERSION) .

push:
	docker push gabrielmilan/esp-idf:$(VERSION)
