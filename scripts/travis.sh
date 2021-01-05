curl https://www.worldcubeassociation.org/results/misc/WCA_export.sql.zip --output wca_export
echo "EXPORT DOWNLOADED"
yes|unzip -d wca_unzipped wca_export 
echo "EXPORT UNZIPPED"
mv wca_unzipped/metadata.json stats
cp README.md stats
mysql -u root --password="" < scripts/sql/setup.sql
mysql -u root --password="" wca <  wca_unzipped/WCA_export.sql
echo "EXPORT IMPORTED"