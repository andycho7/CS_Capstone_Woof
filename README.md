# README

## Configuration  
  **Mac**  
  _Install brew_  
  * `$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` https://brew.sh/  

  _Install rvm (ruby version manager)_  
* `$ curl -L get.rvm.io | bash`  
* Make sure this line is in your `~/.profile` so that it's loaded for every terminal session:  
   `[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"`  
  _Install the latest stable version of ruby (as of 3/12/2017)_  
	`$ rvm install 2.4.0`  
  _Create a gemset for our application (Do this so that you can isolate your ruby dependencies)_  
	`$ rvm gemset create woof`  
  _Switch to the woof gemset_  
	`$ rvm --default use 2.4.0@woof`  
  _Database initialization_  
* Follow the Database initilaization below  
  _Install Rails!_  
	`$ gem install rails -v 5.0.2`
  _Database creation_  
* Follow the Database creation below
  _Get the Codes_  
	• Fork the repo https://github.com/andycho7/CS_Capstone_Woof  
	• Navigate to where you want the project  
	• Clone the forked repo  
  
  **Ubuntu**  
  _Install a version of ruby to get going_ (as described at https://www.ruby-lang.org/en/documentation/installation/)  
	 `$ sudo apt-get install ruby-full`  
  _Install brew_  
	• http://linuxbrew.sh/  
	• Paste the commands in terminal and follow the directions  
  _Install curl_ (used by RVM)  
	`$ sudo apt-get curl`  
  _Install rvm (ruby version manager)_  
`$ curl -L get.rvm.io | bash`  
	Make sure this line is in your `~/.profile` so that it's loaded for every terminal session  
`[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"`  
  _Database initialization_
  * Follow the Database initilaization below  
  _Install the latest stable version of ruby (as of 3/12/2017)_  
	`$ rvm install 2.4.0`  
  _Create a gemset for our application (Do this so that you can isolate your ruby dependencies)_  
	`$ rvm gemset create woof`  
  _Switch to the woof gemset_  
	`$ rvm use 2.4.0@woof`  

  _Install Rails!_  
	`$ gem install rails -v 5.0.2`
  _Database creation  
  * Follow the Database creation below
  _Get the Codes_  
	• Fork the repo https://github.com/andycho7/CS_Capstone_Woof  
	• Navigate to where you want the project  
	• Clone the forked repo  
## Database creation
In your rails app directory, run the database migration  
* `$ rails db:create`  
* `$ rails db:migrate`  
## Environment variables  
We are using `dotenv` to load environment variables from the `.env` file in your directory. Make sure that the `.env` file exists. Credentials for the database are expected in the `config/database.yml` file. We will eventually add secret credentials for production.
```bash
DB_USER=
DB_PASSWORD=
DB_HOST=
SECRET_KEY_BASE=
EMAIL_USERNAME=
EMAIL_PASSWORD=
PROD_HOST='https://www.mywoofapp.com'
DEV_HOST='localhost:3000'
APN_GATEWAY_URI='gateway.sandbox.push.apple.com'
APN_CERTIFICATE='./apple_push_notification_dev.pem'
APN_CERTIFICATE_PASSPHRASE=
FEEDBACK_EMAIL_CC=comma,separated,email,list
ACTION_CABLE_HOST=mywoofapp.com
```
## Authentication 
I did something really bad and set SSL to not verify `config/application.rb`. REMOVE THIS LINE BEFORE DEPLOYING. 
#### db commands  
* `$ rails db:drop db:create db:migrate db:seed`
* `$ rails db:migrate` runs (single) migrations that have not run yet.  
* `$ rails db:create` creates the database  
* `$ rails db:drop` deletes the database  
* `$ rails db:schema:load` creates tables and columns within the (existing) database following schema.rb  
* `$ rails db:setup` does db:create, db:schema:load, db:seed  
* `$ rails db:reset` does db:drop, db:setup  
* `$ rails db:seed` this populates the database with stuff in the db/seed.rb  
## Database initialization
Install mysql with brew (follow the configuration process above to install brew)  
  	`$ brew install mysql`  
  _Start mysql_  
  	`$ mysql.server start`  
_MySQL Client_  
	I recommend that mac users use Sequel Pro, https://www.sequelpro.com/ , since it is simple and powerful.  
	After you have run the database migration to create the database, setup a socket conection with username as root and database as woof_development.  
	The database credentials are saved in app/config/database.yml  
## Common commands  
* Run rails server  
`$ rails s` make sure your in the application directory  
The server is accepting requests at localhost:3000  
* Run rails console  
`$ rails c` make sure your in the application directory
* Ruby version  
```
$ ruby -v
ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-darwin16]
```
* Rails version  
```
$ rails -v
Rails 5.0.2
```  
* System dependencies
- imagemagick (library for image manipulation)

## Services (job queues, cache servers, search engines, etc.)

- [Redis Server](https://redis.io/)   
`$ redis-server`
- [Resque](https://github.com/resque/resque)   
From the main directory run    
`$ PIDFILE=./resque.pid BACKGROUND=yes RAILS_ENV=production QUEUE=mailers bundle exec rake resque:work`


