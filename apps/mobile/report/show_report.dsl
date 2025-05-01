dynamic cMobile {
    title "[Mobile][Report][Read] Report"
    description "Show report list."

    pAdmin -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileReport "Admin can view report and statistics"
    comMobileReport -> comBackendPostgresDatabase "Use supabase service to get report list"

    comBackendPostgresDatabase -> comDatabaseTransactions "Get transaction list from the database"
    comBackendPostgresDatabase -> comDatabaseCustomers "Get customer list from the database"
    comBackendPostgresDatabase -> comDatabaseServices "Get service list from the database"

    autolayout lr
}