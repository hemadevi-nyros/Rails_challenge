// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery-ui
//= require underscore
//= require gmaps/google
//= require turbolinks
//= require_tree .

$(document).ready(function(){
 $("#filter").change(function(){
 	  $.ajax({
 		  url: '/search',
 		  type:'GET',
 		  dataType: "script",
 		  data:{filter: this.value},
 		   success: function(response){	
 		  },
 	  });
  });
});

$(document).ready(function(){
 $("#rating").change(function(){
   $.ajax({
     url: '/search',
     type: 'GET',
     dataType: 'script',
     data: {rating: this.value},
       success: function(repsonse){
      },
    });
  });
});

$(document).ready(function(){
 $("#tags").change(function(){
   $.ajax({
     url: '/search',
     type: 'GET',
     dataType: 'script',
     data: {tags: this.value},
     success: function(repsonse){
     },
    });
 });
});

$(document).ready(function() {
  var slider = $("#slider").slider({
   range: true,
   min: 0,
   max: 500,
   values: [0, 500],
   slide: function(event, ui) {
     $("#range_min").val(ui.values[0]);
     $("#range_max").val(ui.values[1]);
     var dishes_range_min = ui.values[0];
     var dishes_range_max = ui.values[1];
     console.log(dishes_range_min, dishes_range_max)
     $('#range_min').text(ui.values[0])
     $('#range_max').text(ui.values[1])
     $.ajax({
       url: '/search',
       type: 'GET',
       dataType: 'script',
       data: {min_rangefilter: dishes_range_min, max_rangefilter: dishes_range_max},
         success: function(repsonse){}
     });
    }
  });  
});

function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 16.9707, lng: 82.2361},
    zoom: 8,
  });
  var marker = new google.maps.Marker({
    position: {lat: 16.9707, lng: 82.2361},
    map: map,
    title:'Yati'
  });  
}


