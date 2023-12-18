###Transactional Table Initial Load ###

hostname="jdbc:postgresql://database-1.crp5jkwa45up.ap-south-1.rds.amazonaws.com:5432/PROD?ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory"
user="puser"
pwd="ppassword"

#BILLING
#CLAIM
#FAMILY_DETAIL
#PAIIENT
#STAFF

###BILLING

sqoop import --connect $hostname --username $user --password $pwd -m 1 --fetch-size 10 --table billing --create-hive-table --hive-table prod.billing_hve --hive-import

echo "billing_hve Table Imported"

#CLAIM

sqoop import --connect $hostname --username $user --password $pwd -m 1 --fetch-size 10 --table claim  --create-hive-table --hive-table prod.claim_hve --hive-import

echo "claim_hve Table Imported"

#FAMILY_DETAIL

sqoop import --connect $hostname --username $user --password $pwd -m 1 --fetch-size 10 --table family_detail --create-hive-table --hive-table prod.family_detail_hve --hive-import

echo "family_detail_hve Table Imported"
 
#PAIIENT

sqoop import --connect $hostname --username $user --password $pwd -m 1 --fetch-size 10 --table paiient --create-hive-table --hive-table prod.patient_hve --hive-import

echo "patient_hve Table Imported"

#STAFF

sqoop import --connect $hostname --username $user --password $pwd -m 1 --fetch-size 10 --table staff --create-hive-table --hive-table prod.staff_hve --hive-import

echo "staff_hve Table Imported"

echo "##############Transactional Table Incremental Load Completed################"   