#!/bin/sh

commands="[start|stop|logs|bye]"

echo ">> docker-compose admin script ... "
echo "<< provide command $commands ..."
while :
do
	read INPUT_ARG
	case $INPUT_ARG in
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
			echo ">> done"
			;;
		bye)
			echo ">> have a nice day ..."
			break
			;;
		*)
			echo "<< ? , i know how to handle just $commands"
			;;
	esac
done
echo ">> bye! ..."
