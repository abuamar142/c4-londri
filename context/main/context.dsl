mainSystem = softwareSystem "Londri System" {
    description "The platform used to simply manage laundry business. Can manage transactions, service, and customers"

    // Mobile Application container
    !include container/mobile.dsl
    
    // Web Application container
    !include container/web.dsl
    
    // Backend container
    !include container/backend.dsl
    
    // Database container
    !include container/database.dsl
}
