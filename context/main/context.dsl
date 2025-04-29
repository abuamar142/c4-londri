ssLondri = softwareSystem "Londri System" {
    description "A mobile application for managing laundry business operations, including transactions, customers, services, and financial reports."

    // Database container
    !include container/database.dsl

    // Backend container
    !include container/backend.dsl

    // Mobile Application container
    !include container/mobile.dsl
}
