# Ce script sera exécuté dans le contexte d'un container docker mysql qui inclut mysqldump

DBNAME=tp1 # nom de la base de données à sauvegarder
TIME=$(date '+%Y-%m-%d_%H-%M-%S') # horodatage

mysqldump $DBNAME -uroot -p$MYSQL_ROOT_PASSWORD > dump/$DBNAME.$TIME.sql