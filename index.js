//use path module
const path = require('path');
//use express module
const express = require('express');
//use hbs view engine
const hbs = require('hbs');
//use bodyParser middleware
const bodyParser = require('body-parser');
//use mysql database
const mysql = require('mysql');
const app = express();

//Create connection
const conn = mysql.createConnection({
  host: 'localhost',
  user: 'hmtkvs',
  password: 'Asdasd94-35',
  database: 'sociapp_db'
});

//connect to database
conn.connect((err) =>{
  if(err) throw err;
  console.log('Mysql Connected...');
});

//set views file
app.set('views',path.join(__dirname,'views'));
//set view engine
app.set('view engine', 'hbs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
//set public folder as static folder for static file
app.use('/assets',express.static(__dirname + '/public'));

//route for homepage
app.get('/',(req, res) => {
  let sql = "SELECT * FROM user";
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.render('index_view',{
      all_results: results
    });
  });
});

function getUserProfile(id,res,mysql,context,complete){
  var count = 0;
  var userid = id;
  let sql = "SELECT * FROM user WHERE user_id="+userid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.user_results = results;
        if(results[0].book1>0)
          getWriter1Info(results[0].book1,res,mysql,context,complete);
        else complete();

        if(results[0].book2>0)
          getWriter2Info(results[0].book2,res,mysql,context,complete);
        else complete();

        if(results[0].book3>0)
          getWriter3Info(results[0].book3,res,mysql,context,complete);
        else complete();

        if(results[0].book4>0)
          getWriter4Info(results[0].book4,res,mysql,context,complete);
        else complete();

        if(results[0].book5>0)
          getWriter5Info(results[0].book5,res,mysql,context,complete);
        else complete();

        if(results[0].sport1>0)
          getSport1Info(results[0].sport1,res,mysql,context,complete);
        else complete();

        if(results[0].sport2>0)
          getSport2Info(results[0].sport2,res,mysql,context,complete);
        else complete();

        if(results[0].sport3>0)
          getSport3Info(results[0].sport3,res,mysql,context,complete);
        else complete();

        if(results[0].sport4>0)
          getSport4Info(results[0].sport4,res,mysql,context,complete);
        else complete();

        if(results[0].sport5>0)
          getSport5Info(results[0].sport5,res,mysql,context,complete);
        else complete();

        if(results[0].movie1>0)
          getMovies1Info(results[0].movie1,res,mysql,context,complete);
        else complete();

        if(results[0].movie2>0)
          getMovies2Info(results[0].movie2,res,mysql,context,complete);
        else complete();

        if(results[0].movie3>0)
          getMovies3Info(results[0].movie3,res,mysql,context,complete);
        else complete();

        if(results[0].movie4>0)
          getMovies4Info(results[0].movie4,res,mysql,context,complete);
        else complete();

        if(results[0].movie5>0)
          getMovies5Info(results[0].movie5,res,mysql,context,complete);
        else complete();

        if(results[0].music1>0)
          getMusic1Info(results[0].music1,res,mysql,context,complete);
        else complete();

        if(results[0].music2>0)
          getMusic2Info(results[0].music2,res,mysql,context,complete);
        else complete();

        if(results[0].music3>0)
          getMusic3Info(results[0].music3,res,mysql,context,complete);
        else complete();

        if(results[0].music4>0)
          getMusic4Info(results[0].music4,res,mysql,context,complete);
        else complete();

        if(results[0].music5>0)
          getMusic5Info(results[0].music5,res,mysql,context,complete);

        else complete();
        complete();
    });

};
function getWriter1Info(writer,res,mysql,context,complete){

  var writerid = parseInt(writer);
  let sql = "SELECT * FROM writers WHERE writer_id="+writerid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.writers1=results;
        complete();
    });
};
function getWriter2Info(writer,res,mysql,context,complete){

  var writerid = parseInt(writer);
  let sql = "SELECT * FROM writers WHERE writer_id="+writerid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.writers2=results;
        complete();
    });
};
function getWriter3Info(writer,res,mysql,context,complete){

  var writerid = parseInt(writer);
  let sql = "SELECT * FROM writers WHERE writer_id="+writerid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.writers3=results;
        complete();
    });
};
function getWriter4Info(writer,res,mysql,context,complete){

  var writerid = parseInt(writer);
  let sql = "SELECT * FROM writers WHERE writer_id="+writerid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.writers4=results;
        complete();
    });
};
function getWriter5Info(writer,res,mysql,context,complete){

  var writerid = parseInt(writer);
  let sql = "SELECT * FROM writers WHERE writer_id="+writerid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.writers5=results;
        complete();
    });
};
function getSport1Info(sport,res,mysql,context,complete){

  var sportid = parseInt(sport);
  let sql = "SELECT * FROM sports WHERE sports_id="+sportid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.sports1=results;
        complete();
    });
};
function getSport2Info(sport,res,mysql,context,complete){

  var sportid = parseInt(sport);
  let sql = "SELECT * FROM sports WHERE sports_id="+sportid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.sports2=results;
        complete();
    });
};
function getSport3Info(sport,res,mysql,context,complete){

  var sportid = parseInt(sport);
  let sql = "SELECT * FROM sports WHERE sports_id="+sportid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.sports3=results;
        complete();
    });
};
function getSport4Info(sport,res,mysql,context,complete){

  var sportid = parseInt(sport);
  let sql = "SELECT * FROM sports WHERE sports_id="+sportid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.sports4=results;
        complete();
    });
};
function getSport5Info(sport,res,mysql,context,complete){

  var sportid = parseInt(sport);
  let sql = "SELECT * FROM sports WHERE sports_id="+sportid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.sports5=results;
        complete();
    });
};
function getMovies1Info(movie,res,mysql,context,complete){

  var movieid = parseInt(movie);
  let sql = "SELECT * FROM movies WHERE movie_id="+movieid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.movies1=results;
        complete();
    });
};
function getMovies2Info(movie,res,mysql,context,complete){

  var movieid = parseInt(movie);
  let sql = "SELECT * FROM movies WHERE movie_id="+movieid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.movies2=results;
        complete();
    });
};
function getMovies3Info(movie,res,mysql,context,complete){

  var movieid = parseInt(movie);
  let sql = "SELECT * FROM movies WHERE movie_id="+movieid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.movies3=results;
        complete();
    });
};
function getMovies4Info(movie,res,mysql,context,complete){

  var movieid = parseInt(movie);
  let sql = "SELECT * FROM movies WHERE movie_id="+movieid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.movies4=results;
        complete();
    });
};
function getMovies5Info(movie,res,mysql,context,complete){

  var movieid = parseInt(movie);
  let sql = "SELECT * FROM movies WHERE movie_id="+movieid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.movies5=results;
        complete();
    });
};

function getMusic1Info(music,res,mysql,context,complete){

  var musicid = parseInt(music);
  let sql = "SELECT * FROM music WHERE music_id="+musicid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.music1=results;
        complete();
    });
};

function getMusic2Info(music,res,mysql,context,complete){

  var musicid = parseInt(music);
  let sql = "SELECT * FROM music WHERE music_id="+musicid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.music2=results;
        complete();
    });
};
function getMusic3Info(music,res,mysql,context,complete){

  var musicid = parseInt(music);
  let sql = "SELECT * FROM music WHERE music_id="+musicid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.music3=results;
        complete();
    });
};
function getMusic4Info(music,res,mysql,context,complete){

  var musicid = parseInt(music);
  let sql = "SELECT * FROM music WHERE music_id="+musicid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.music4=results;
        complete();
    });
};
function getMusic5Info(music,res,mysql,context,complete){

  var musicid = parseInt(music);
  let sql = "SELECT * FROM music WHERE music_id="+musicid;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.music5=results;
        complete();
    });
};
//route for profile
app.get('/user/profile/:id',(req, res) => {
  var callbackCount = 0;
  var context={};
  getUserProfile(req.params.id,res,mysql,context,complete);


  //getWriterInfo(req.body.book2,res,mysql,context,complete);
  function complete(){
    callbackCount++;
    if(callbackCount==21){

      res.render('profile_view',context);
    }
  };
});
//route for profile
app.get('/register/:name',(req, res) => {
  var name = req.params.name;

  let sql = "SELECT * FROM user WHERE user_email='"+req.params.name+"'";
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.render('register_view',{
      this_user: results
    });
  });
});
//post profile
app.post('/register',(req, res) => {
  var userid = req.body.user_id;
  let user_age,user_degree,user_job,book1,book2,book3,book4,book5,movie1,movie2,movie3,movie4,movie5;
  let sport1,sport2,sport3,sport4,sport5,music1,music2,music3,music4,music5;

  if(req.body.user_age === "Choose..."){
    user_age = "";
  }
  else {
    user_age = req.body.user_age;
  }
  if(req.body.user_degree === "Choose..."){
    user_degree = "";
  }
  else{
    user_degree = req.body.user_degree;
  }
  if(req.body.user_job === "Choose..."){
    user_job = "";
  }
  else{
    user_job = req.body.user_job;
  }
  if(req.body.book1 === "Choose..."){
    book1 = 0;
  }
  else{
    book1 = req.body.book1;
  }
  if(req.body.book2 === "Choose..."){
    book2 = 0;
  }
  else{
    book2 = req.body.book2;
  }
  if(req.body.book3 === "Choose..."){
    book3 = 0;
  }
  else{
    book3 = req.body.book3;
  }
  if(req.body.book4 === "Choose..."){
    book4 = 0;
  }
  else{
    book4 = req.body.book4;
  }
  if(req.body.book5 === "Choose..."){
    book5 = 0;
  }
  else{
    book5 = req.body.book5;
  }
  if(req.body.movie1 === "Choose..."){
    movie1 = 0;
  }
  else{
    movie1 = req.body.movie1;
  }
  if(req.body.movie2 === "Choose..."){
    movie2 = 0;
  }
  else{
    movie2 = req.body.movie2;
  }
  if(req.body.movie3 === "Choose..."){
    movie3 = 0;
  }
  else{
    movie3 = req.body.movie3;
  }
  if(req.body.movie4 === "Choose..."){
    movie4 = 0;
  }
  else{
    movie4 = req.body.movie4;
  }
  if(req.body.movie5 === "Choose..."){
    movie5 = 0;
  }
  else{
    movie5 = req.body.movie5;
  }
  if(req.body.sport1 === "Choose..."){
    sport1 = 0;
  }
  else{
    sport1 = req.body.sport1;
  }
  if(req.body.sport2 === "Choose..."){
    sport2 = 0;
  }
  else{
    sport2 = req.body.sport2;
  }
  if(req.body.sport3 === "Choose..."){
    sport3 = 0;
  }
  else{
    sport3 = req.body.sport3;
  }
  if(req.body.sport4 === "Choose..."){
    sport4 = 0;
  }
  else{
    sport4 = req.body.sport4;
  }
  if(req.body.sport5 === "Choose..."){
    sport5 = 0;
  }
  else{
    sport5 = req.body.sport5;
  }
  if(req.body.music1 === "Choose..."){
    music1 = 0;
  }
  else{
    music1 = req.body.music1;
  }
  if(req.body.music2 === "Choose..."){
    music2 = 0;
  }
  else{
    music2 = req.body.music2;
  }
  if(req.body.music3 === "Choose..."){
    music3 = 0;
  }
  else{
    music3 = req.body.music3;
  }
  if(req.body.music4 === "Choose..."){
    music4 = 0;
  }
  else{
    music4 = req.body.music4;
  }
  if(req.body.music5 === "Choose..."){
    music5 = 0;
  }
  else{
    music5 = req.body.music5;
  }
  let sql = "UPDATE user SET user_age='"+user_age+"', user_degree='"+user_degree+"', user_job='"+user_job+"',book1='"+book1+"',book2='"+book2+"',book3='"+book3+"',book4='"+book4+"',book5='"+book5+"',movie1='"+movie1+"',movie2='"+movie2+"',movie3='"+movie3+"',movie4='"+movie4+"',movie5='"+movie5+"',sport1='"+sport1+"',sport2='"+sport2+"',sport3='"+sport3+"',sport4='"+sport4+"',sport5='"+sport5+"',music1='"+music1+"',music2='"+music2+"',music3='"+music3+"',music4='"+music4+"',music5='"+music5+"' WHERE user_id="+req.body.user_id ;
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.redirect('/user/'+userid);
  });
  });
//route for insert data
app.post('/user/save',(req, res) => {
  var name = req.body.user_email;
  //name = name.split('@')[0];
  let data = {user_name: req.body.user_name, user_email: req.body.user_email, user_password:req.body.user_password, user_bio: req.body.user_bio, book1:0, book2:0, book3:0, book4:0, book5:0, movie1:0, movie2:0, movie3:0, movie4:0, movie5:0, sport1:0, sport2:0, sport3:0, sport4:0, sport5:0, music1:0, music2:0, music3:0, music4:0, music5:0};
  let sql = "INSERT INTO user SET ?";
  let query = conn.query(sql, data,(err, results) => {
    if(err){
      if(err.code === 'ER_DUP_ENTRY') {
        res.redirect('/#form1-e');
      }
      else throw err;
  }
    else res.redirect('/register/'+name);
  });
});

// Login
app.post('/login',(req, res) => {
  var s;
  let data = {user_email: req.body.user_email, user_password: req.body.user_password};
  let sql = "SELECT * FROM user WHERE user_email='"+req.body.user_email+"' AND user_password="+req.body.user_password;
  let query = conn.query(sql, data,(err, results) => {
    if(err) throw err;
    res.redirect('/user/'+results[0].user_id);
  });
});

// New chat
app.post('/newchatroom',(req, res) => {
  let data = {creator_id: req.body.creator_id, room_name: req.body.room_name};

  let sql = "INSERT INTO chatroom SET ?";
  let query = conn.query(sql, data,(err, results) => {
    if(err) throw err;
    res.redirect('/user/'+req.body.creator_id);
  });

});

function getUserInfo(req,res,mysql,context,complete){
  let sql = "SELECT * FROM user WHERE user_id="+req.params.id;
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.results = results;
        complete();
    });
};

function getChatRoomInfo(req,res,mysql,context,complete){
  let sql = "SELECT * FROM chatroom";
  let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        context.chatrooms = results;
        complete();
    });
};

// Login
app.get('/user/:id',(req, res) => {
var callbackCount = 0;
var context={};

getUserInfo(req,res,mysql,context,complete);
getChatRoomInfo(req,res,mysql,context,complete);

function complete(){
  callbackCount++;
  if(callbackCount==2){
    res.render('user_view',context);
  }
}



});
// New chat
app.post('/user/chat',(req, res) => {
  let data = {sender_id: req.body.sender_id, room: req.body.room, message: req.body.message};

  let sql = "INSERT INTO chat SET ?";
  let query = conn.query(sql, data,(err, results) => {
    if(err) throw err;
    res.status(204).send();
  });

});


// Get all users
app.get('/allusers',(req, res) => {
  let sql = "SELECT * FROM user";
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.send(results);
  });
});
// Get all chat
app.get('/userChat',(req, res) => {
  let sql = "SELECT * FROM chat";
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.send(results);
  });
});
// New event
app.post('/user/event',(req, res) => {
  let data = {creator_id: req.body.creator_id, event_title: req.body.event_title, event_address: req.body.event_address, event_message: req.body.event_message, participants:""};
  let sql = "INSERT INTO event SET ?";
  let query = conn.query(sql, data,(err, results) => {
    if(err) throw err;
    res.redirect('/user/'+req.body.creator_id);
  });

});

//route for event page
app.get('/userEvent',(req, res) => {
  let sql = "SELECT * FROM event";
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.send(results);
  });
});

//server listening
app.listen(3000, () => {
  console.log('Server is running at port 3000');
});
