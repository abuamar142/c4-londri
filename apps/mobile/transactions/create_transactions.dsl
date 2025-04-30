dynamic cMobile {
    title "[Mobile][Transaction][Create] Transaction"
    description "Screen for creating new transaction."

    pAdmin -> comMobileSplash
    pUser -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileTransaction "Admin and User can create new transaction"
    comMobileTransaction -> comMobileTransactionManagement
    comMobileTransactionManagement -> comBackendPostgresDatabase "Use supabase service to create new transaction"

    comBackendPostgresDatabase -> comDatabaseTransactions "Create new transaction in the database"

    autolayout lr
}