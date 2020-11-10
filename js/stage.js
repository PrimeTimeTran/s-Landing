$( document ).ready(function() {      
  var is_mobile = false;

  if( $('#some-element').css('display')=='none') {
      is_mobile = true;       
  }

  const date = new Date()
  const string = `©${date.getFullYear()} GetOnStageApp, All Rights Reserved`

  $('#copyright').text(string)

  if (is_mobile == true) {
      console.log('isMobile')
  }
});