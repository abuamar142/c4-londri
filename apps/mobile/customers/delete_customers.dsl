dynamic cMobile {
    title "[Mobile][Customer][Delete] Customer"
    description "Screen for deleting customer information."

    pAdmin -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileCustomer "Admin can delete customer information"
    comMobileCustomer -> comMobileCustomerManagement
    comMobileCustomerManagement -> comBackendPostgresDatabase "Use supabase service to delete customer information"

    comBackendPostgresDatabase -> comDatabaseCustomers "Delete customer information in the database"

    autolayout lr
}