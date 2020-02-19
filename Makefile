persistent:
	sudo docker run -d --name alpine alpine tail -f /dev/null
connect:
	sudo docker exec -it alpine /bin/ash -
disposable:
	sudo docker run --rm alpine /bin/sh -c "apk add curl && curl https://raw.githubusercontent.com/au5ton/ishox/master/setup/install.sh | sh"