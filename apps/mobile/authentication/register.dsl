dynamic cMobile {
    title "[Mobile][Authentication] Register"
    description "Register a new user in the mobile application"

    pUser -> comMobileSplash "Open mobile application splash screen"
    
    comMobileSplash -> comMobileLogin "Navigate to login screen"
    comMobileLogin -> comMobileRegister "Navigate to register screen"
    comMobileRegister -> comBackendAuthentication "Send registration data to backend"

    comBackendAuthentication -> comDatabaseUser "Store user data in the database"
    
    comMobileRegister -> comMobileLogin "Redirect to login screen after registration"

    autolayout lr
}