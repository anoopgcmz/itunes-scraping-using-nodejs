# itunes-scraping-using-nodejs
Paste the itunes podcast page link. The app will fetch all the categories link and fetch the require urls and insert the code to mysql DB
 
### Run the code

Requires [Node.js](https://nodejs.org/) v4+ to run.
xampp

Install the dependencies and devDependencies and start the server.

```sh
$ cd filename
$ npm install 
$ node scrape
Go to browser and type http://localhost:3000/getcategories
```

# NOTE!
 This is just a basic, consider it as a boilerplate code. it has note used settimeout or promsisechain to work async. So after writing first two data to the DB it will show some error and will exit the code. So for making it better users can download the code and make changes u need.
