build:
	docker build -t jmcarbo/docker-ultravncrepeater .

run:
	docker run -p 6900:5900 -p 5500:5500 --rm -ti jmcarbo/docker-ultravncrepeater /bin/bash
