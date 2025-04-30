dynamic cMobile {
    title "[Mobile][Service][Delete] Service"
    description "Screen for deleting service information."

    pAdmin -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileService "Admin can delete service information"
    comMobileService -> comMobileServiceManagement
    comMobileServiceManagement -> comBackendPostgresDatabase "Use supabase service to delete service information"

    comBackendPostgresDatabase -> comDatabaseServices "Delete service information in the database"

    autolayout lr
}