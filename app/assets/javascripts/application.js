// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require materialize-sprockets
//= require materialize/extras/nouislider

 $(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();

    // Adds tab functionality
    $('ul.tabs').tabs();

    // course filter
    $('.filter').on('submit', function(e) {
      e.preventDefault();
      console.log("You hit enter!");
    });

    $('.filter').find('input').keyup(function(e) {
      console.log($(this).val());
      var filter = $(this).val();
      $.ajax({
        url: '/courses/filter',
        method: 'post',
        data: {filter: filter},
        success: function(data) {
          console.log(data)
          $('.results').empty();
          data.forEach(function(d) {
              $('.results').append("<div class='col s4'>\
                <div class='card'>\
                  <div class='card-image'>\
                    <img src= " + d.image + ">\
                    <span class='card-title'>" + d.name + "</span>\
                  </div>\
                  <div class='card-content'>\
                    <p>" + d.description + "</p>\
                  </div>\
                  <div class='card-action'>\
                    <a href='#'>View Course</a>\
                  </div>\
                </div>\
              </div>"
          )});
        }
      })
    });

  });
         