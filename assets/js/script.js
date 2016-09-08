// JavaScript Document

// Toggle Function Login / Registraion
$('.toggle').click(function(){
  // Switches the Icon
  $(this).children('i').toggleClass('fa-pencil');
  // Switches the forms  
  $('.form').animate({
    height: "toggle",
    'padding-top': 'toggle',
    'padding-bottom': 'toggle',
    opacity: "toggle"
  }, "slow");
});


// Wow animation Goes here....
wow = new WOW(
  {
	animateClass: 'animated',
	offset:       100,
	callback:     function(box) {
	  console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
	}
  }
);
wow.init();
document.getElementById('moar').onclick = function() {
  var section = document.createElement('section');
  section.className = 'section--purple wow fadeInDown';
  this.parentNode.insertBefore(section, this);
};


//Hide Show Field

function toggle_visibility(id) {
   var e = document.getElementById(id);
   if(e.style.display == 'none')e.style.display = 'block';
   else
	  e.style.display = 'none';
}





