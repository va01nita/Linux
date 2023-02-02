cd /home/prashant/Desktop/pst
file='space_saperated_file.csv'
cat space_saperated_file.csv | while read line
do
$line
done > copied.txt
