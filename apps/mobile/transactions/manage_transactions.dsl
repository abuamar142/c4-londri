dynamic cMobile {
    title "Manage Transaction"
    description "Screen for managing transactions, including adding, editing, and deleting transactions."

    pAdmin -> comMobileSplash
    pUser -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileTransaction
    comMobileTransaction -> comMobileTransactionManagement "Access transaction management screen"
    comMobileTransactionManagement -> comBackendPostgresDatabase "Use supabase service to manage a transaction"

    comBackendPostgresDatabase -> comDatabaseTransactions "Manage transaction in the database"

    autolayout lr
}