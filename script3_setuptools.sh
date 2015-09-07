#!/bin/sh

#1) Tool that generates the DDL CREATE TABLE COMMAND IN HQL based on an input JSON datafile


cd ~/tools_github
git clone https://github.com/quux00/hive-json-schema
cd hive-json-schema/
mvn package
cd ~

#2) SerDe for JSON In Hive  

cd ~/tools_github
git clone https://github.com/rcongiu/Hive-JSON-Serde
cd Hive-JSON-Serde/
mvn -Pcdh5 clean package -Dmaven.test.skip=true
cd json-serde
cd target/
hdfs dfs -put ./json-serde-1.3.6-SNAPSHOT-jar-with-dependencies.jar /tmp
hdfs dfs -ls /tmp
cd ~


#3) For basic GEOSPATIAL PROCESSING IN HIVE

cd ~/tools_github
git clone https://github.com/Esri/geometry-api-java/
cd geometry-api-java
mvn package
cd target
hdfs dfs -put ./esri-geometry-api-1.2.1.jar /tmp

cd ~/tools_github
git clone https://github.com/Esri/spatial-framework-for-hadoop
cd spatial-framework-for-hadoop/
mvn package
cd hive/target
hdfs dfs -put ./spatial-sdk-hive-1.1.1-SNAPSHOT.jar /tmp
cd ../..
cd json/target
hdfs dfs -put ./spatial-sdk-json-1.1.1-SNAPSHOT.jar /tmp





