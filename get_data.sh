#!/bin/bash
base_url="https://danepubliczne.imgw.pl/data/dane_pomiarowo_obserwacyjne/dane_meteorologiczne/dobowe/klimat"

for year in {2001..2021}
do
	for month in 01 02 03 04 05 06 07 08 09 10 11 12
	do
		wget -N "${base_url}/${year}/${year}_${month}_k.zip"
		tar xvkf "${year}_${month}_k.zip"	
	done
done		
