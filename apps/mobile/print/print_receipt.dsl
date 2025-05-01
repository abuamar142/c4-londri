dynamic cMobile {
    title "[Mobile][Print] Print Receipt"
    description "Print receipt for transaction."

    pAdmin -> comMobileSplash
    pUser -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileTransaction
    comMobileTransaction -> comMobilePrintReceipt "Admin and User can print receipt"

    comMobilePrintReceipt -> comBackendPostgresDatabase "Use supabase service to get receipt data"

    comBackendPostgresDatabase -> comDatabaseTransactions "Get transaction list from the database"
    comBackendPostgresDatabase -> comDatabaseCustomers "Get customer list from the database"
    comBackendPostgresDatabase -> comDatabaseServices "Get service list from the database"
    comBackendPostgresDatabase -> comDatabaseUsers "Get employee list from the database"

    autolayout lr
}