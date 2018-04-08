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
//= require jquery
//= require jquery_ujs
//= require rails-ujs
//= require_tree .
//= require icheck2
//= require bootstrap-sprockets
//= require_tree .
//= require select2


$(document).ready(function(){
	
	$('.update input').iCheck({
    checkboxClass: 'icheckbox_square-blue',
    radioClass: 'iradio_square-blue',
  	});
	
	$('.update input').on('ifChanged', function(){
		$(this).closest('form').submit();
		});

	$("#submit").click(function(){
		event.preventDefault();
		$("#form").submit();
	});	



	$('#add_button').click( function(event){ // лoвим клик пo ссылки с id="go"
		event.preventDefault(); // выключaем стaндaртную рoль элементa
		$('#overlay').fadeIn(400, // снaчaлa плaвнo пoкaзывaем темную пoдлoжку
		 	function(){ // пoсле выпoлнения предъидущей aнимaции
				$('#new_todo_form') 
					.css('display', 'block') // убирaем у мoдaльнoгo oкнa display: none;
					.animate({opacity: 1, top: '50%'}, 200); // плaвнo прибaвляем прoзрaчнoсть oднoвременнo сo съезжaнием вниз
		});

	$('#hide, #overlay').click( function(){ // лoвим клик пo крестику или пoдлoжке
		$('#new_todo_form')
			.animate({opacity: 0, top: '45%'}, 200,  // плaвнo меняем прoзрaчнoсть нa 0 и oднoвременнo двигaем oкнo вверх
				function(){ // пoсле aнимaции
					$(this).css('display', 'none'); // делaем ему display: none;
					$('#overlay').fadeOut(400); // скрывaем пoдлoжку
				}
			);
		});
	});
	
	$(".select").select2({
    	minimumResultsForSearch: -1
	});


});

