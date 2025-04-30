dynamic cMobile {
    title "[Mobile][Service][Read] Service"
    description "Get all services from the database and display them in a list."

    pAdmin -> comMobileSplash
    pUser -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileService "Admin and User can view services"

    comMobileService -> comBackendPostgresDatabase "Use supabase service to get services"

    comBackendPostgresDatabase -> comDatabaseServices "Get services from the database"

    autolayout lr
}
