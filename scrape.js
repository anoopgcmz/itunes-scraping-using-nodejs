const request = require('request');
const xmlParser = require('xml2json');
const express = require('express');
const mysql = require('mysql');

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

var categories = {
    "arts": "https://podcasts.apple.com/us/genre/podcasts-music/id513611341?"
}

app.get('/getpodcast', (req, res) => {

    for (category in categories) {
        var urlChunks = categories[category].split('/');
        var urlChunks_id = urlChunks[urlChunks.length - 1].slice(2, -1);
        grabval(urlChunks_id);
    }

    function grabval(id) {
        var url = 'https://itunes.apple.com/lookup?id=' + id;
        request(url, function (err, resp, body) {
            const val = JSON.parse(body);
            constfeedurl = val.results[0]['feedUrl'];
            grabXml(constfeedurl);
        })
    }

    function grabXml(feedurl) {
        request(constfeedurl, function (err, resp, xmlbodyval) {
            let xmlval = xmlParser.toJson(xmlbodyval);
            const jsonval = JSON.parse(xmlval);

            for (var j = 0; j < jsonval.rss.channel.item.length; j++) {
                console.log(jsonval.rss.channel.item[j])

                let post = { title: jsonval.rss.channel.item[j].title, description: jsonval.rss.channel.item[j].description,pubDate:jsonval.rss.channel.item[j].pubDate,author:'author'+j,copyright:jsonval.rss.channel.item[j].copyright,music:jsonval.rss.channel.item[j].enclosure.url };
                let sql = 'INSERT INTO library SET ?';
                let query = db.query(sql, post, (err, result) => {
                    if (err) throw err;
                    console.log('post '+jsonval.rss.channel.item[j].title+' added');
                    res.send('Post 1 added...');
                });
            }
        })
    }

});

