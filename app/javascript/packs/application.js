// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


import 'bootstrap'
require("bootstrap");
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("@fortawesome/fontawesome-free");
require("moment/locale/ja")
require("tempusdominus-bootstrap-4")
import '../stylesheets/application'


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

console.log('Hello from application.js')

$(function () {
    $('#datetimepicker').datetimepicker({
        locale: 'ru'
    });
});

(function() {
    jQuery(function() {
      $('form').on('click', '.remove_fields', function(event) {
        $(this).closest('.field').remove();
        return event.preventDefault();
      });
      return $('form').on('click', '.add_fields', function(event) {
        var regexp, time;
        time = new Date().getTime();
        regexp = new RegExp($(this).data('id'), 'g');
        $(this).before($(this).data('fields').replace(regexp, time));
        return event.preventDefault();
      });
    });
  
  }).call(this);