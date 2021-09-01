# Get token for Postgresql
export PGPASSWORD=$(az account get-access-token --resource-type oss-rdbms | jq .accessToken | tr -d '\"')

# Run sql command
psql --set=group="${GROUP_NAME}" -f postgresql_setup.sql