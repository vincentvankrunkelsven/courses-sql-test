# set up database
apt-get update && apt-get install -y unzip
zipfile=dvdrental.zip
tarfile=dvdrental.tar
dbname=dvdrental
url=https://s3.amazonaws.com/assets.datacamp.com/course/sql/$zipfile
wget $url
unzip -q $zipfile

service postgresql start \
  && sudo -u postgres createdb -O repl $dbname \
  && sudo -u repl pg_restore -d $dbname $tarfile \
  && service postgresql stop

rm $zipfile $tarfile

# Define versions
SQLWHAT_VERSION="v0.0.4"
SQLBACKEND_VERSION="v0.0.10"
#
# Install sqlwhat and sqlbackend
pip3 install git+https://github.com/datacamp/pythonwhat@master
pip3 install git+https://github.com/datacamp/sqlwhat@$SQLWHAT_VERSION
pip3 install git+https://$GITHUB_TOKEN@github.com/datacamp/sqlbackend.git/@$SQLBACKEND_VERSION
