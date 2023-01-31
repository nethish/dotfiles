# Installation and initial setup
1. Install postgresql
2. Run below commands to initialise data and storage
~~~
sudo -iu postgres
initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data/'
~~~

# Run the custom script
1. Initializes a database (master) and user (nethish with password n)
2. Creates a table box
3. Script name postgresinit.sh
