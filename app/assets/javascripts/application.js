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
//= require_tree .
//= require jquery
//= require materialize-sprockets
//= require materialize/extras/nouislider




function filterList(filter, role) {
  $.ajax({
  url: '/courses/filter',
  method: 'post',
  data: {
    filter: filter,
    role: role, 
  },
  success: function(data) {
    console.log(data)
    $('.results').empty();
    data.forEach(function(d) {
        $('.results').append("<div class='col s6'>\
          <div class='card medium hoverable'>\
            <div class='card-image'>\
              <img class='activator' src=" + d.image.url + ">\
            </div>\
            <span class='center-align course-card'>" + d.name + "</span>\
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

  // Default role is set to none
  var role = ""
  // Default value of the search bar is set to it's contents
  var filter = $('.filter').find('input').val();

    tinymce.init({
      selector: '.tinymce',
      plugins: [
          "advlist autolink lists link image charmap print preview anchor",
          "searchreplace visualblocks code fullscreen",
          "insertdatetime media table contextmenu paste"
      ],
      toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
    });

    // Logout toast
    $('.logout').on('click', function() {
      Materialize.toast('You have been logged out.', 1000)
    })

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

    function iconOpacity() {
      $('#sales').css({"opacity":"1"});
      $('#editor').css({"opacity":"1"});
      $('#reporter').css({"opacity":"1"});
      $('#publisher').css({"opacity":"1"});
    }

    $('#publisher').on('click', function() {
      iconOpacity();
      if (role != "publisher") {
        $(this).css({"opacity":"0.5"});
        role = "publisher";
      } else {
        role = null;
      }
      filterList(filter, role)
      console.log(role);
    });

    $('#sales').on('click', function() {
      iconOpacity();
      if (role != "sales") {
        $(this).css({"opacity":"0.5"});
        role = "sales";
      } else {
        role = "";
      }
      filterList(filter, role);
      console.log(role);
    });

    $('#editor').on('click', function() {
      iconOpacity();
      if (role != "editor") {
        $(this).css({"opacity":"0.5"});
        role = "editor";
      } else {
        role = "";
      }
      filterList(filter, role)
      console.log(role);
    });

    $('#reporter').on('click', function() {
      iconOpacity();
      if (role != "reporter") {
        $(this).css({"opacity":"0.5"});
        role = "reporter";
      } else {
        role = "";
      }
      filterList(filter, role)
      console.log(role);
    });

    $('.filter').find('input').keyup(function(e) {
      console.log("Value: " + $(this).val());
      filter = $(this).val();
      console.log("Role: " + role)
      // var publisher = $('.publisher-button').data('publisher');
      filterList(filter, role);
    });

  });
         