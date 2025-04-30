dynamic cMobile {
    title "[Mobile][Employee][Read] Employee"
    description "Show employee list."

    pAdmin -> comMobileSplash
    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileEmployee "Admin can view employee list"
    comMobileEmployee -> comBackendPostgresDatabase "Use supabase service to get employee list"

    comBackendPostgresDatabase -> comDatabaseUsers "Get employee list from the database"

    autolayout lr
}