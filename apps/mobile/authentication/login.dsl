dynamic cMobile {
    title "[Mobile][Authentication] Login"
    description "Login to the mobile application"

    pAdmin -> comMobileSplash
    pUser -> comMobileSplash
    
    comMobileSplash -> comMobileLogin "Navigate to login screen"
    comMobileLogin -> comBackendAuthentication "Request login with email and password"
    
    comBackendAuthentication -> comDatabaseUsers "Check login credentials"
    
    comMobileLogin -> comMobileHome "Redirect to home screen on successful login"

    autolayout lr
}