#!/bin/sh

commands="[start|stop|status|logs|bye]"

echo ">> docker-compose admin script ... "
echo ">> supported commands $commands ..."
while :
do
	read INPUT_ARG
	case $INPUT_ARG in
		status)
			echo "<< showing status ..."
			docker ps
			echo ">> done ..."
			;;
    		start)
      			echo "<< starting ..."
      			docker-compose up -d
      			docker ps
			echo ">> done ..."
      			;;
    		stop)
     			echo "<< stopping ..."
			docker-compose stop
			docker ps
			echo ">> done ..."
			;;
		logs)
			echo "<< showing logs ..."
			docker-compose logs
			echo ">> done ..."
			;;
		bye)
			echo ">> have a nice day ..."
			break
			;;
		*)
			echo "<< ? , type in either of these commands: $commands"
			;;
	esac
done
echo ">> bye! ..."
