# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery -> 
    $('#application_dob').datepicker({changeYear: true, yearRange : '1950:2030'})

jQuery -> 
    $('#application_enrolled').datepicker({changeYear: true, yearRange : '1950:2030'})

jQuery -> 
    $('#application_completed').datepicker({changeYear: true, yearRange : '1950:2030'})
    #   dateFormat: 'yy-mm-dd'