// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function() {
  
  // Hide the results text area if there are no filtered emails
  if ($('#emails textarea').val() == "")
        $('#emails').hide();
        
  // Submit form on change
  
});