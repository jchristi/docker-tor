# Make sure SElinux is permissive, firewalld is stopped, and docker is restarted
build:
	sudo docker build -t tor:latest .

run:
	sudo docker run -t -i -p 9010:9050 --rm --name tor01 tor
