#Verbinde dich mit deinem Cluster

#ssh bd01@cl-h.....

mkdir Senden

cd Senden

#  


for i in AAPL AMZN
do
#Historicalstockprice in Json
     wget "https://api.unibit.ai/historicalstockprice/$i?range=1y&interval=100&AccessKey=demo"
#Historicalstockprice in CSV
     wget "https://api.unibit.ai/historicalstockprice/$i?range=1y&interval=10&datatype=csv&AccessKey=demo"
#Companyprofile in Json
     wget "https://api.unibit.ai/companyprofile/$i?AccessKey=demo"
#Companyprofile in CSV
     wget "https://api.unibit.ai/companyprofile/$i?datatype=csv&AccessKey=demo"

done


cd ..

hadoop fs -mkdir AufgabeFetch



hadoop fs -put Senden/ AufgabeFetch


hadoop fs -ls AufgabeFetch/Senden

