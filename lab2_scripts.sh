#!/bin/bash
# Authors : Kiana Harkema 106102554
# Date: 1/30/19

#Problem 1 Code:
#Make sure to document how you are solving each problem!1/1/2019

echo "Enter a regular expression: "
read regEx
echo "Enter a file name: "
read fileName
phoneNum='[0-9]{3}-[0-9]{3}-[0-9]{4}'
email='@'
areaCode='303-'
geoEmail='@geocities.com'

grep -E $regEx $fileName > command_results.txt

echo "Total Phone Numbers: "
grep -E $phoneNum $fileName | wc -l

echo "Total Emails: "
grep -E $email $fileName | wc -l

grep -E $areaCode $fileName > phone_results.txt

grep -E $geoEmail $fileName > email_results.txt
