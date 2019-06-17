const request = require('request');
const xmlParser = require('xml2json');
const express = require('express');
const mysql = require('mysql');
const cheerio = require('cheerio');

const app = express();

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'podcast'
});

db.connect((err) => {
    if (err) {
        throw err;
    }
});

app.listen('3000', () => {
    console.log('sever is running');
});

var allCategories = {};

app.get('/getcategories', (req, res) => {
    request('https://itunes.apple.com/us/genre/podcasts-health/id1307?', (error, response, html) => {
        if (!error && response.statusCode == 200) {
            const $ = cheerio.load(html);

            const column_first = $('.grid3-column a');
            $('.grid3-column a').each((i, el) => {
                let catName = $(el).text();
                let catHref = $(el).attr('href');

                allCategories[catName] = catHref;
            })

            stripeId(allCategories);
        }
    });

    function stripeId(categories) {
        for (category in categories) {
            var urlChunks = categories[category].split('/');
            var urlChunks_id = urlChunks[urlChunks.length - 1].slice(2);
            grabval(urlChunks_id);
        }
    }

    function grabval(id) { 
        var url = 'https://itunes.apple.com/lookup?id=' + id;
        request(url, function (err, resp, body) {
            const val = JSON.parse(body);
            const feedDataUrl = val.results[0]['feedUrl'];
            grabXml(feedDataUrl);
        })
    }

    function grabXml(feedurl) {
        request(feedurl, function (err, resp, xmlbodyval) {
            let xmlval = xmlParser.toJson(xmlbodyval);
            const jsonval = JSON.parse(xmlval);

            for (var j = 0; j < jsonval.rss.channel.item.length; j++) {

                let post = { title: jsonval.rss.channel.item[j].title, description: jsonval.rss.channel.item[j].description, pubDate: jsonval.rss.channel.item[j].pubDate, author: jsonval.rss.channel.item[j]['itunes:author'], copyright: jsonval.rss.channel.item[j].copyright, music: jsonval.rss.channel.item[j].enclosure.url };
                let sql = 'INSERT INTO library SET ?';
                let query = db.query(sql, post, (err, result) => {
                    if (err) throw err;
                    console.log('post ' + jsonval.rss.channel.item[j].title + ' added');
                    res.send('Post 1 added...');
                });
            }
        })
    };

});
