dynamic cMobile {
    title "[Mobile][Authentication] Login"
    description "Login to the mobile application"

    pAdmin -> comMobileSplash "Open mobile application splash screen"
    pUser -> comMobileSplash "Open mobile application splash screen"
    
    comMobileSplash -> comMobileLogin "Navigate to login screen"
    comMobileLogin -> comBackendAuthentication "Request login with email and password"
    
    comBackendAuthentication -> comDatabaseUser "Check login credentials"
    
    comDatabaseUser -> comBackendAuthentication "Return user data"
    
    comBackendAuthentication -> comMobileLogin "Return authentication status"

    comMobileLogin -> comMobileHome "Navigate to home screen"

    autolayout lr
}