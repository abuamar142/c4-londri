database = container "Database" {
    description "Stores all application data for the Londri System."
    technology "PostgreSQL"

    databaseAuth = component "Database Auth" {
        description "Stores user authentication data."
    }

    databaseRBAC = component "Database RBAC" {
        description "Stores information about user roles and access permissions."
    }

    databaseUser = component "Database User" {
        description "Stores user data, including the active/inactive status of staff."
    }

    databaseCustomer = component "Database Customer" {
        description "Stores laundry customer data."
    }

    databaseTransaction = component "Database Transaction" {
        description "Stores laundry transaction data along with its process status."
    }

    databaseReport = component "Database Report" {
        description "Stores summarized data for financial reporting purposes."
    }
}
