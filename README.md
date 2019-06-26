# itunes-scraping-using-nodejs
Paste the itunes podcast page link in the code. The app will fetch all the categories link and fetch the require urls and insert the data
to mysql DB
 
### Run the code

Requires [Node.js](https://nodejs.org/) v4+ to run.
<br> xampp
<br> import the sql file to phpmyadmin

Install the dependencies and devDependencies and start the server.

```sh
import the sql file to phpmyadmin
$ cd filename
$ npm install 
$ node scrape
Go to browser and type http://localhost:3000/getcategories
```

# NOTE!
 This is just a basic, consider it as a boilerplate code. it has not used settimeout or promise chain to work async. So after writing first two data to the DB it will show some error and will exit the code.
