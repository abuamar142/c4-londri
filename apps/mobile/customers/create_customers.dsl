dynamic cMobile {
    title "[Mobile][Customer][Create] Customer"
    description "Screen for creating new customer."

    pAdmin -> comMobileSplash
    pUser -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileCustomer "Admin and User can create new customer"
    comMobileCustomer -> comMobileCustomerManagement
    comMobileCustomerManagement -> comBackendPostgresDatabase "Use supabase service to create new customer"

    comBackendPostgresDatabase -> comDatabaseCustomers "Create new customer in the database"

    autolayout lr
}