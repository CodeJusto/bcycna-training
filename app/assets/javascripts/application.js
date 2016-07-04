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
//= require tinymce
//= require tinymce-jquery

  tinymce.init({
    selector: 'textarea'
  });


function filterList() {
  $.ajax({
  url: '/courses/filter',
  method: 'post',
  data: {
    filter: $('.filter').val(),
  },
  success: function(data) {
    console.log(data)
    $('.results').empty();
    data.forEach(function(d) {
        $('.results').append("<div class='col s3'>\
          <div class='card medium'>\
            <div class='card-image'>\
              <img class='activator' src= " + d.image + ">\
              <span class='activator card-title'>" + d.name + "</span>\
            </div>\
            <div class='card-content activator'>\
              <p>Learn more about this course by clicking here.</p>\
            </div>\
            <div class='card-action'>\
              <a href='/courses/" + d.id + "/lessons'>View Course</a>\
            </div>\
            <div class='card-reveal'>\
              <span class='card-title'>" + d.name + "</span>\
              <p>" + d.description + "</p>\
            </div>\
          </div>\
        </div>"
    )});
  }
})
} 

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

    // $('.publisher-button').on('click', function() {
    //   if ($(this).data('publisher') === true) {
    //     ($(this).data('publisher', false)
    //   } else {
    //     ($(this).data('publisher', true)
    //   }
    //   filterList();
    // });

    $('.filter').find('input').keyup(function(e) {
      console.log($(this).val());
      var filter = $(this).val();
      // var publisher = $('.publisher-button').data('publisher');
      filterList();
    });

  });
         