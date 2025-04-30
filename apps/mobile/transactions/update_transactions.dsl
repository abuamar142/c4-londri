dynamic cMobile {
    title "[Mobile][Transaction][Update] Transaction"
    description "Screen for updating transaction information."

    pAdmin -> comMobileSplash
    pUser -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileTransaction "Admin and User can update transaction information"
    comMobileTransaction -> comMobileTransactionManagement
    comMobileTransactionManagement -> comBackendPostgresDatabase "Use supabase service to update transaction information"

    comBackendPostgresDatabase -> comDatabaseTransactions "Update transaction information in the database"

    autolayout lr
}