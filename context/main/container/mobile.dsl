cMobile = container "Mobile Application" {
    description "A mobile application used by Admins and Users to manage transactions, customers, and print receipts."
    technology "Flutter and Dart"
    
    comMobileCustomer = component "Customer Management Screen" {
        description "Screen for managing customer data."
        tags "Screen"
    }
    
    comMobileHome = component "Home Screen" {
        description "Main screen showing recap of transactions and access to features based on user roles."
        tags "Screen"
    }

    comMobileRegister = component "Register Screen" {
        description "Screen for user registration with name, email, and password."
        tags "Screen"

        -> comBackendAuthentication
    }
    
    comMobileLogin = component "Login Screen" {
        description "Screen for admin and user login with email and password."
        tags "Screen"
        
        -> comMobileHome
        -> comMobileRegister

        -> comBackendAuthentication
    }
    
    comMobilePrint = component "Print Receipt Screen" {
        description "Screen for printing receipts."
        tags "Screen"
    }

    comMobileReport = component "Financial Report Screen" {
        description "Screen for viewing financial reports, including total earnings and transaction history."
        tags "Screen"
    }

    comMobileSettings = component "Settings Screen" {
        description "Screen for managing user settings and preferences."
        tags "Screen"
    }

    comMobileSplash = component "Splash Screen" {
        description "Displays the application logo on startup."
        tags "Screen"
        
        -> comMobileLogin
    }
    
    comMobileTransaction = component "Transaction Management Screen" {
        description "Screen for managing transactions and managing laundry status."
        tags "Screen"
    }
}