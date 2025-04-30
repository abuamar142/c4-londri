dynamic cMobile {
    title "[Mobile][Customer][Read] Customer"
    description "Get all customers from the database and display them in a list."

    pAdmin -> comMobileSplash
    pUser -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileCustomer "Admin and User can view customers"

    comMobileCustomer -> comBackendPostgresDatabase "Use supabase service to get customers"

    comBackendPostgresDatabase -> comDatabaseCustomers "Get customers from the database"

    autolayout lr
}
