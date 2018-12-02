#! /bin/bash
#! cars.sh
#! Ethan Dang
echo "Menu:"
echo "1 - Add a new car"
echo "2 - List cars"
echo "Q - Quit program"
read choice
while [ "$choice" != "Q" ]
do
case "$choice" in
	"1") echo "What is the year of the car?"
		read year
		echo "What is the make of the car?"
		read make
		echo "What is the model of the car?"
		read model
		echo "$year:$make:$model" >> My_old_cars;;
	"2") sort My_old_cars;;
esac
if [ "$choice" != "Q" ]
then
	echo "Menu:"
	echo "1 - Add a new car"
	echo "2 - List cars"
	echo "Q - Quit program"
	read choice
fi
done
if [ "$choice" == "Q" ]
then
	echo "goodbye"
fi
