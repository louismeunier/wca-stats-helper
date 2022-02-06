curl -k https://www.worldcubeassociation.org/results/misc/WCA_export.sql.zip --output wca_export
echo "EXPORT DOWNLOADED"
yes|unzip -d wca_unzipped wca_export 
echo "EXPORT UNZIPPED"
mv wca_unzipped/metadata.json stats
cp README.md stats
mysql -h 127.0.0.1 -u root -ppassword < scripts/sql/setup.sql
mysql -h 127.0.0.1 -u root -ppassword wca <  wca_unzipped/WCA_export.sql
echo "EXPORT IMPORTED"
