
#Verbinde dich mit deinem Cluster

#ssh bd01@cl-h.....

mkdir Senden

cd Senden

for i in AAPL  AMZN  CLDR  CSCO  DBX  FB  GOOGL  HPQ  IBM  JNPR  MSFT  NFLX  NTAP  ORCL  RHT  SNAP  SPOT  TSLA  TWTR  VMW

do
     wget "https://api.unibit.ai/historicalstockprice/$i?range=20y&interval=100&AccessKey=demo"
     wget "https://api.unibit.ai/companyprofile/$i?AccessKey=demo"
     wget "https://api.unibit.ai/companyprofile/$i?datatype=csv&AccessKey=demo"
     wget "https://api.unibit.ai/historicalstockprice/$i?range=20y&interval=10&datatype=csv&AccessKey=demo"
done


cd ..

hadoop fs -mkdir AufgabeFetch



hadoop fs -put Senden/ AufgabeFetch


hadoop fs -ls AufgabeFetch/Senden
