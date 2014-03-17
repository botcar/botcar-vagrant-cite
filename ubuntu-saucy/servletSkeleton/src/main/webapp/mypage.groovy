
Date today = new Date()

html.html {
    head {
        title("My own page")
    }
    
    body {
    
    	header (role : "banner"){
            h1("An added page")
            nav(role : "navigation")
    	}
    	
    	article (role : "main") {
	  p("This servlet is configured to run any file named SOMETHING.groovy as a groovlet.")
	  p("This file was created on ${today}.")
	}
        footer("")
    }
}
