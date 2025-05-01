dynamic cMobile {
    title "[Mobile][Settings] Settings"
    description "Access application settings"

    pAdmin -> comMobileSplash
    pUser -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileSettings "Admin and User can access application settings"

    autolayout lr
}