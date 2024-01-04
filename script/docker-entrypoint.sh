#!usr/bin/env sh

DIR="/root/.aws"

echo "Create credentials..."
sed -i 's/{{ REGION }}/${AWS_REGION}/g' $DIR/config
sed -i 's/{{ ACCESS_KEY_ID }}/${AWS_ACCESS_KEY_ID}/g' $DIR/credentials
sed -i 's/{{ SECRET_ACCESS_KEY }}/${AWS_SECRET_ACCESS_KEY}/g' $DIR/credentials
chmod -R 500 $DIR/
echo "Create credentials - OK"
