dynamic cMobile {
    title "[Mobile][Service][Update] Service"
    description "Screen for updating service information."

    pAdmin -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileService "Admin can update service information"
    comMobileService -> comMobileServiceManagement
    comMobileServiceManagement -> comBackendPostgresDatabase "Use supabase service to update service information"

    comBackendPostgresDatabase -> comDatabaseServices "Update service information in the database"

    autolayout lr
}