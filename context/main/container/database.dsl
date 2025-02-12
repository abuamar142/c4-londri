database = container "Database" {
    description "Store all data"
    technology "PostgreSQL"

    databaseAuth = component "Database Auth" {
        description "Store authentication data"
    }

    databaseUser = component "Database User" {
        description "Store user data"
    }

    databaseCustomer = component "Database Customer" {
        description "Store customer data"
    }

    databaseService = component "Database Service" {
        description "Store service data"
    }

    databaseTransaction = component "Database Transaction" {
        description "Store transaction data"
    }
}
