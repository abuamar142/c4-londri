dynamic cMobile {
    title "[Mobile][Employee][Update] Employee"
    description "Screen for activate and deactivate employee."

    pAdmin -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileEmployee "Long press on employee to activate or deactivate"
    comMobileEmployee -> comBackendPostgresDatabase "Use supabase service to update employee status"

    comBackendPostgresDatabase -> comDatabaseUsers "Update employee status in the database"

    autolayout lr
}