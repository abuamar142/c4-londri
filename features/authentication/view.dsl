dynamic mobile {
    title "Login"

    superAdmin -> mobileSplash "Access screen"
    admin -> mobileSplash "Access screen"
    user -> mobileSplash "Access screen"

    mobileSplash -> mobileLogin "Navigate to login"

    mobileLogin -> backendAuth "Request login"

    backendAuth -> databaseAuth "Check login"

    mobileLogin -> mobileHome "Navigate to home"

    autolayout lr
}

dynamic mobile {
    title "Register User"

    user -> mobileSplash "Access screen"

    mobileSplash -> mobileLogin "Navigate to login"

    mobileLogin -> mobileRegister "Navigate to register"

    mobileRegister -> backendAuth "Request register"

    backendAuth -> databaseAuth "Check register"

    mobileRegister -> mobileLogin "Navigate to login"

    mobileLogin -> backendAuth "Request login"

    backendAuth -> databaseAuth "Check login"

    mobileLogin -> mobileHome "Navigate to home"

    autolayout lr
}
