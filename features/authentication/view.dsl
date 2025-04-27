dynamic mobile {
    title "Login"

    admin -> mobileSplash "Access screen"
    user -> mobileSplash "Access screen"

    mobileSplash -> mobileLogin "Navigate to login"

    mobileLogin -> backendAuthentication "Request login"

    backendAuthentication -> databaseAuth "Check login"

    mobileLogin -> mobileHome "Navigate to home"

    autolayout lr
}

dynamic mobile {
    title "Register User"

    admin -> mobileSplash "Access screen"
    user -> mobileSplash "Access screen"

    mobileSplash -> mobileLogin "Navigate to login"

    mobileLogin -> mobileRegister "Navigate to register"

    mobileRegister -> backendAuthentication "Request register"

    backendAuthentication -> databaseAuth "Check register"

    mobileRegister -> mobileLogin "Navigate to login"

    mobileLogin -> backendAuthentication "Request login"

    backendAuthentication -> databaseAuth "Check login"

    mobileLogin -> mobileHome "Navigate to home"

    autolayout lr
}
