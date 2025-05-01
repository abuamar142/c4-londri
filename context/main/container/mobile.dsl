cMobile = container "Mobile Application" {
    description "A mobile application used by Admins and Users to manage transactions, customers, and print receipts."
    technology "Flutter and Dart"

    comMobileReport = component "Report Screen" {
        description "Screen for viewing financial reports and statistics."
        tags "Screen, Report"

        -> comBackendPostgresDatabase "Uses supabase service to get report list"
    }

    comMobileEmployee = component "Employee Screen" {
        description "Screen for showing employee list, activating and deactivating employees."
        tags "Screen, Employee"

        -> comBackendPostgresDatabase
    }

    comMobileServiceManagement = component "Service Management Screen" {
        description "Screen for managing service data."
        tags "Screen, Service"

        -> comBackendPostgresDatabase
    }
    
    comMobileService = component "Show Services Screen" {
        description "Screen for viewing services."
        tags "Screen, Service"

        -> comMobileServiceManagement "Navigates to Service Management Screen"

        -> comBackendPostgresDatabase
    }

    comMobileCustomerManagement = component "Customer Management Screen" {
        description "Screen for managing customer data."
        tags "Screen, Customer"

        -> comBackendPostgresDatabase
    }
    
    comMobileCustomer = component "Show Customers Screen" {
        description "Screen for viewing customers."
        tags "Screen, Customer"

        -> comMobileCustomerManagement "Navigates to Customer Management Screen"

        -> comBackendPostgresDatabase
    }
    
    comMobileTransactionManagement = component "Transaction Management Screen" {
        description "Screen for managing transactions and managing laundry status."
        tags "Screen"

        -> comBackendPostgresDatabase
    }
    
    comMobileTransaction = component "Show Transaction Screen" {
        description "Screen for viewing transactions."
        tags "Screen"

        -> comMobileTransactionManagement "Navigates to Transaction Management Screen"

        -> comBackendPostgresDatabase
    }
    
    comMobileHome = component "Home Screen" {
        description "Main screen showing recap of transactions and access to features based on user roles."
        tags "Screen"

        -> comMobileTransaction "Navigates to Transaction Screen"
        -> comMobileCustomer "Navigates to Customer Screen"
        -> comMobileService "Navigates to Service Screen"
        -> comMobileEmployee "Navigates to Employee Screen"
        -> comMobileReport "Navigates to Report Screen"
    }

    comMobileRegister = component "Register Screen" {
        description "Screen for user registration with name, email, and password."
        tags "Screen"

        -> comBackendAuthentication
    }
    
    comMobileLogin = component "Login Screen" {
        description "Screen for admin and user login with email and password."
        tags "Screen"
        
        -> comMobileHome "Navigates to Home Screen"
        -> comMobileRegister "Navigates to Register Screen"

        -> comBackendAuthentication
    }
    
    comMobilePrint = component "Print Receipt Screen" {
        description "Screen for printing receipts."
        tags "Screen"
    }

    comMobileSettings = component "Settings Screen" {
        description "Screen for managing user settings and preferences."
        tags "Screen"
    }

    comMobileSplash = component "Splash Screen" {
        description "Displays the application logo on startup."
        tags "Screen"
        
        -> comMobileLogin "Navigates to Login Screen"
    }
}