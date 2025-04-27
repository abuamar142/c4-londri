admin -> mobileSplash
user -> mobileSplash

mobileSplash -> mobileLogin
mobileLogin -> mobileRegister

mobileRegister -> mobileLogin

mobileLogin -> mobileHome

mobileHome -> mobileSplash

mobileLogin -> backendAuthentication
mobileRegister -> backendAuthentication

backendAuthentication -> databaseAuth
