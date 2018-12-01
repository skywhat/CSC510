#!/bin/bash

level=(1 5 10 50 100 500 1000)
wwwroot="/data/www/default/"

for i in ${level[@]};do
	echo "visit http://54.209.125.163/jmeter${i}" 
	mkdir -p ${wwwroot}jmeter${i}
	chmod 777 ${wwwroot}jmeter${i}
	~/apache-jmeter-5.0/bin/jmeter.sh -n -t ./httpd${i}.hmx -l result${i} -e -o ${wwwroot}jmeter${i}/

done
