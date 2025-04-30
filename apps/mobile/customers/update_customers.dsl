dynamic cMobile {
    title "[Mobile][Customer][Update] Customer"
    description "Screen for updating customer information."

    pAdmin -> comMobileSplash
    pUser -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileCustomer "Admin and User can update customer information"
    comMobileCustomer -> comMobileCustomerManagement
    comMobileCustomerManagement -> comBackendPostgresDatabase "Use supabase service to update customer information"

    comBackendPostgresDatabase -> comDatabaseCustomers "Update customer information in the database"

    autolayout lr
}