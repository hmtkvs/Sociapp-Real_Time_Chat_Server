var USER_id = document.getElementById('creator_id').value;
USER = new Object();
USER.id = 0;
USER.books = new Array();
USER.movies = new Array();
USER.sports = new Array();
USER.musics = new Array();
USER.age = '';
USER.degree = '';

var userScore = {};
var arrrarararaarar = {};
var done = 0;
var Results = {};
otherUSER = new Object();

var number = 0;

$(function(){

    $.ajax({
      url:'/allusers',
      type:'get',
      success: function(result){
        result.forEach((item, i) => {
          //item.user_name,item.user_age,item.book1 ...
            if (item.user_id == USER_id){
                USER.books.push(item.book1)
                USER.books.push(item.book2)
                USER.books.push(item.book3)
                USER.books.push(item.book4)
                USER.books.push(item.book5)

                USER.movies.push(item.movie1)
                USER.movies.push(item.movie2)
                USER.movies.push(item.movie3)
                USER.movies.push(item.movie4)
                USER.movies.push(item.movie5)

                USER.sports.push(item.sport1)
                USER.sports.push(item.sport2)
                USER.sports.push(item.sport3)
                USER.sports.push(item.sport4)
                USER.sports.push(item.sport5)

                USER.musics.push(item.music1)
                USER.musics.push(item.music2)
                USER.musics.push(item.music3)
                USER.musics.push(item.music4)
                USER.musics.push(item.music5)

                USER.id = item.user_id
                USER.age = item.user_age
                USER.degree = item.user_degree
                console.log(USER_id, "için bookS: ", USER.degree)

                done = 1
            }
        });

          result.forEach((item, j) => {
              if (USER.id !== item.user_id && done == 1){
                  let sum = 0;

                  otherUSER.books = new Array();
                  otherUSER.movies = new Array();
                  otherUSER.sports = new Array();
                  otherUSER.musics = new Array();
                  otherUSER.age = '';
                  otherUSER.degree = '';

                  otherUSER.books.push(item.book1)
                  otherUSER.books.push(item.book2)
                  otherUSER.books.push(item.book3)
                  otherUSER.books.push(item.book4)
                  otherUSER.books.push(item.book5)

                  otherUSER.movies.push(item.movie1)
                  otherUSER.movies.push(item.movie2)
                  otherUSER.movies.push(item.movie3)
                  otherUSER.movies.push(item.movie4)
                  otherUSER.movies.push(item.movie5)

                  otherUSER.sports.push(item.sport1)
                  otherUSER.sports.push(item.sport2)
                  otherUSER.sports.push(item.sport3)
                  otherUSER.sports.push(item.sport4)
                  otherUSER.sports.push(item.sport5)

                  otherUSER.musics.push(item.music1)
                  otherUSER.musics.push(item.music2)
                  otherUSER.musics.push(item.music3)
                  otherUSER.musics.push(item.music4)
                  otherUSER.musics.push(item.music5)

                  otherUSER.id = item.user_id
                  otherUSER.age = item.user_age
                  otherUSER.degree = item.user_degree

                  arrrarararaarar = calculateScore(otherUSER)
                  if (Object.keys(arrrarararaarar).length == 99){ //total number of users -1

                      get_value(arrrarararaarar);
                  };

                  // // Create items array
                  // var items = Object.keys(arrrarararaarar).map(function(key) {
                  //     return [key, arrrarararaarar[key]];
                  // });
                  //   // Sort the array based on the second element
                  // items.sort(function(first, second) {
                  //     return second[1] - first[1];
                  // });
                  //   // Create a new array with only the first 5 items
                  // console.log("Best 5 Match: ", items.slice(0, 5));
                  //
                  // if (otherUSER.age == USER.age && otherUSER.degree == USER.degree){
                  //     if (items[0][0] == otherUSER.id) {
                  //         console.log("Perfect match with: ", otherUSER.id)
                  //     }
                  // }
               }
          });
      },
      error:function(){
        alert("boo8");
      }
  });
});

function calculateScore(otherUSER) {
    let counts = {};

    booksArray = compare(USER.books, otherUSER.books);
    moviesArray = compare(USER.movies, otherUSER.movies);
    sportsArray = compare(USER.sports, otherUSER.sports);
    musicsArray = compare(USER.musics, otherUSER.musics);

    let allArray = [booksArray, sportsArray, sportsArray,musicsArray];

    var i;
    for (i = 0; i < 4; i++) {
        samesArray = allArray[i];
        number = 1;

        let cnt = samesArray.length;
        samesArray.forEach(function (x) {
            counts[x] = (counts[x] || 0) + 1;
        });
        if (Object.values(counts).includes(2)) {
            cnt += 2
        }
        if (Object.values(counts).includes(4)) {
            cnt += 4
        }
        if (Object.values(counts).includes(6)) {
            cnt += 6
        }
        if (Object.values(counts).includes(8)) {
            cnt += 8
        }
        if (Object.values(counts).includes(10)) {
            cnt += 10
        }

    userScore[otherUSER.id] = cnt;
    Results[i] = userScore;
    }
    return userScore;
    // }
}

function compare(bizimUser, nextUser){
    let finalarray =[];
    bizimUser.forEach((e1)=>nextUser.forEach((e2)=> {
        if (e1===e2){
            finalarray.push(e1)
        }}
    ));
    return finalarray;
}

function get_value(anasina){
  
    var participants_id = [15,12,17,1,3]
    var sum = 0;

    console.log("Same ones:", anasina);
    Object.keys(anasina).forEach(function (key) {
        if (participants_id.includes(parseInt(key))){
            sum += parseInt(anasina[key]);
            console.log("id", key, "value", anasina[key]);
        }
    });
    console.log("Toplam = ", sum);
    console.log("Average = ", sum/participants_id.length);
}
