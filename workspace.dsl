workspace {
	name "Londri Sistem"
    description "C4 Model untuk Londri Sistem, sebuah aplikasi mobile manajemen laundry."
	
	model {
		!include context/external/context.dsl
		!include context/main/context.dsl
		!include context/people/context.dsl
	}
	
	views {
		!include apps/apps.dsl
		
		systemContext ssLondri {
			include *
			autolayout lr
		}
		
		container ssLondri {
			include *
			autolayout lr
		}
		
		styles {
			element "Element" {
				color #ffffff
			}
			element "Person" {
				background #05527d
				shape person
			}
			element "Software System" {
				background #066296
			}
			element "Container" {
				background #0773af
			}
			element "Component" {
				background #85bbf0
				color #000000
			}
			element "External System" {
				background #999999
			}
			element "Database" {
				shape Cylinder
			}
			element "PubSub" {
				shape Pipe
			}
			element "Cache" {
				shape Hexagon
			}
			element "Screen" {
				shape MobileDevicePortrait
			}
			element "Web" {
				shape WebBrowser
			}
		}
		
		theme default
	}
}
