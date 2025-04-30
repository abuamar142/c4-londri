dynamic cMobile {
    title "[Mobile][Transaction][Read] Transaction"
    description "Get all transactions from the database and display them in a list."

    pAdmin -> comMobileSplash
    pUser -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileTransaction "Admin and User can view transactions"

    comMobileTransaction -> comBackendPostgresDatabase "Use supabase service to get transactions"

    comBackendPostgresDatabase -> comDatabaseTransactions "Get transactions from the database"
    comBackendPostgresDatabase -> comDatabaseUsers "Get users from the database"
    comBackendPostgresDatabase -> comDatabaseCustomers "Get customers from the database"
    comBackendPostgresDatabase -> comDatabaseServices "Get services from the database"

    autolayout lr
}
