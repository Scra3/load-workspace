WORKSPACE=/home/scra/Documents/TRAVAUX/arcade-crm

load_workspace:
	./load_workspace.sh ${WORKSPACE}

run_docker_daemon:
	sudo dockerd

run_postgres_container: stop_postgres
	docker run --name postgres -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 postgres


stop_postgres:
	sudo service postgresql stop
	-docker stop postgres
	-docker rm postgres
