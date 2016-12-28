// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(function(){
     $('.post_content').each(function(event){
         var max_length = 20;
         if($(this).html().length > max_length){
             var short_content     = $(this).html().substr(0,max_length);
             var long_content    = $(this).html().substr(max_length);
             $(this).html(short_content+
                          '<a href="#" class="read_more">  <span  style="color:#666666;"class="glyphicon glyphicon-menu-down"></span></a>'+
                          '<span class="more_text" style="display:none;">'+long_content+'</span>');
             $(this).find('a.read_more').click(function(event){
                 event.preventDefault();
                 $(this).hide();
                 $(this).parents('.post_content').find('.more_text').show();
             });
         }
     });
 });

