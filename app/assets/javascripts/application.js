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
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery-ui/datepicker
//= require turbolinks
//= require jquery_nested_form
//= require nested_form_fields
//= require cocoon
//= require moment
//= require bootstrap-datetimepicker
//= require_tree .


function add_field(){
	var div1=document.createElement('div');
	div1.innerHTML=document.getElementsByClassName('education')[0].innerHTML ;
	document.getElementById('newrec').appendChild(div1);
}

function add_field1(){
	var div1=document.createElement('div');
	div1.innerHTML=document.getElementsByClassName('skill')[0].innerHTML;
	document.getElementById('newel1').appendChild(div1);
}

function add_field2(){
	var div1=document.createElement('div');
	div1.innerHTML=document.getElementsByClassName('project')[0].innerHTML;
	document.getElementById('newel2').appendChild(div1);
}

function add_field3(){
	var div1=document.createElement('div');
	div1.innerHTML=document.getElementsByClassName('interest')[0].innerHTML;
	document.getElementById('newel3').appendChild(div1);
}

