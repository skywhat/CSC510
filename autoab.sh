#!/bin/bash
static_url='localhost/hello.html'

level=(1 10 50 100 500 1000)

for i in ${level[@]}; do
	echo "concurency level" ${i} 
	ab -n ${i} -c ${i}  $static_url | grep -i "Requests per second"
	ab -n ${i} -c ${i} $static_url | grep -i "Time per request"
	ab -n ${i} -c ${i} $static_url | grep -i "Transfer rate"
done
