dynamic cMobile {
    title "[Mobile][Service][Create] Service"
    description "Screen for creating new service."

    pAdmin -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileService "Admin can create new service"
    comMobileService -> comMobileServiceManagement
    comMobileServiceManagement -> comBackendPostgresDatabase "Use supabase service to create new service"

    comBackendPostgresDatabase -> comDatabaseServices "Create new service in the database"

    autolayout lr
}