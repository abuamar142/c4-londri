dynamic cMobile {
    title "Show All Transactions"
    description "Get all transactions from the database and display them in a list."

    pAdmin -> comMobileSplash
    pUser -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileTransaction

    comMobileTransaction -> comBackendPostgresDatabase "Use supabase service to get transactions"

    comBackendPostgresDatabase -> comDatabaseTransactions "Get transactions from the database"

    autolayout lr
}
