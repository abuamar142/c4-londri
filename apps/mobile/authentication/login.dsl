dynamic cMobile {
    title "[Mobile][Authentication] Login"
    description "Login to the mobile application"

    pAdmin -> comMobileSplash "Open mobile application splash screen"
    pUser -> comMobileSplash "Open mobile application splash screen"
    
    comMobileSplash -> comMobileLogin "Navigate to login screen"
    comMobileLogin -> comBackendAuthentication "Request login with email and password"
    
    comBackendAuthentication -> comDatabaseUser "Check login credentials"
    
    comMobileLogin -> comMobileHome "Redirect to home screen on successful login"

    autolayout lr
}