# no extra requirements.
# Define versions
SQLWHAT_VERSION="v0.0.3"
SQLBACKEND_VERSION="master"

# Install sqlwhat and sqlbackend
pip3 install git+https://github.com/datacamp/pythonwhat@master
pip3 install git+https://github.com/datacamp/sqlwhat@$SQLWHAT_VERSION
pip3 install git+https://$GITHUB_TOKEN@github.com/datacamp/sqlbackend.git/@$SQLBACKEND_VERSION
