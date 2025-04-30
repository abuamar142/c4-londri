cDatabase = container "Database" {
    description "Stores all application data for the Londri System."
    technology "PostgreSQL"

    comDatabaseAuth = component "Database Auth" {
        description "Contains authentication data"
        tags "Table"
    }

    comDatabaseCustomers = component "Database Customers" {
        description "Contains customer data"
        tags "Table"
    }

    comDatabaseTransactions = component "Database Transactions" {
        description "Contains transaction data"
        tags "Table"
    }

    comDatabaseServices = component "Database Services" {
        description "Contains service data"
        tags "Table"
    }

    comDatabaseUsers = component "Profiles" {
        description "Contains employee data"
        tags "Table"
    }
}
