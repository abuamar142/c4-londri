mobile = container "Mobile Application" {
    description "A mobile application used by Admins and Users to manage transactions, customers, and print receipts."
    technology "Flutter and Dart"

    mobileSplash = component "Splash Screen" {
        description "Displays the application logo on startup."
    }

    mobileLogin = component "Login Screen" {
        description "Page for user login."
    }

    mobileRegister = component "Register Screen" {
        description "Page for staff to register into the system."
    }

    mobileHome = component "Home Screen" {
        description "Main page with access to features based on user roles."
    }

    mobileCustomer = component "Customer Management Screen" {
        description "Feature to view, add, edit, and delete customer data."
    }

    mobileTransaction = component "Transaction Management Screen" {
        description "Feature to record transactions, manage laundry status, and print receipts."
    }

    mobileReport = component "Financial Report Screen" {
        description "Feature for admins to view financial reports and export them to PDF."
    }

    mobilePrint = component "Print Receipt Screen" {
        description "Screen to print laundry receipts for customers. Available to all users."
    }
    
    mobileSettings = component "Settings Screen" {
        description "Page to configure user and application preferences."
    }

}
