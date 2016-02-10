/* Write here your custom javascript codes */
 function setCity()
 {
	 
	 $('ul.languages-dropdown li a').click(function(e) 
			   { 
		$("#current_city").text(this.text);
		this.parent.toggleClass("active");
		
			   });
 }