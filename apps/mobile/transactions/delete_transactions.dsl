dynamic cMobile {
    title "[Mobile][Transaction][Delete] Transaction"
    description "Screen for deleting transaction information."

    pAdmin -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileTransaction "Admin can delete transaction information"
    comMobileTransaction -> comMobileTransactionManagement
    comMobileTransactionManagement -> comBackendPostgresDatabase "Use supabase service to delete transaction information"

    comBackendPostgresDatabase -> comDatabaseTransactions "Delete transaction information in the database"

    autolayout lr
}