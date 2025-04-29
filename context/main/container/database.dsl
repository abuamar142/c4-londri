cDatabase = container "Database" {
    description "Stores all application data for the Londri System."
    technology "PostgreSQL"

    comDatabaseAuth = component "Database Auth" {
        description "Contains authentication data"
        tags "Table"
    }

    comDatabaseCustomer = component "Database Customer" {
        description "Contains customer data"
        tags "Table"
    }

    comDatabaseTransactions = component "Database Transactions" {
        description "Contains transaction data"
        tags "Table"
    }

    comDatabaseUser = component "Database User" {
        description "Contains user data"
        tags "Table"
    }
}
