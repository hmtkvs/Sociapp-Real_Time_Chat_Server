var geocoder;
var map;

$(function(){
    $.ajax({
      url:'/eventScores',
      type:'get',
      success: function(result){
        result.forEach((item, i) => {
          str = item.event_title;
          if((str.match(/eat/i)) || (str.match(/drink/i)) || (str.match(/restaurant/i)) || (str.match(/cafe/i)) || (str.match(/bar/i)) || (str.match(/pub/i)) || (str.match(/lunch/i)) || (str.match(/dinner/i)) || (str.match(/beer/i)) || (str.match(/breakfast/i)) )
            codeAddress(item.event_title,item.event_address,item.event_message);
        });

      },
      error:function(){

      }
  });
});
function initMap() {
  geocoder = new google.maps.Geocoder();
  const mapDiv = document.getElementById('google-map');

  const options = {
    zoom: 15,
    center: { lat: 41.405032, lng: 2.193474 }
  }
  map = new google.maps.Map(mapDiv, options);

}
function codeAddress(title,address,message) {

    geocoder.geocode( { 'address': address}, function(results, status) {
      if (status == 'OK') {
        map.setCenter(results[0].geometry.location);
        var marker = new google.maps.Marker({
            map: map,
            position: results[0].geometry.location,
            icon:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png'
        });
        const infoWindow = new google.maps.InfoWindow({
          content: '<h6>'+title+'</h6>'+'<p>'+message+'</p>'
        });
        marker.addListener('click', function () {
          infoWindow.open(map, marker)
        });
      } else {
        alert('Geocode was not successful for the following reason: ' + status);
      }
    });
  }
