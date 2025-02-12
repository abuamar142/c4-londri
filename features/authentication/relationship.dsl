superAdmin -> mobileSplash
admin -> mobileSplash
user -> mobileSplash

mobileSplash -> mobileLogin
mobileLogin -> mobileRegister

mobileRegister -> mobileLogin

mobileLogin -> mobileHome

mobileHome -> mobileSplash

mobileLogin -> backendAuth
mobileRegister -> backendAuth

backendAuth -> databaseAuth
