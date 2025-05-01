dynamic cMobile {
    title "[Mobile][Print] Connect Printer"
    description "Connect to printer."

    pAdmin -> comMobileSplash
    pUser -> comMobileSplash

    comMobileSplash -> comMobileLogin
    comMobileLogin -> comMobileHome
    comMobileHome -> comMobileTransaction
    comMobileTransaction -> comMobilePrintReceipt "Connect to printer on printer tab"

    autolayout lr
}