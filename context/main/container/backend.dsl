cBackend = container "Backend" {
    description "The backend is provided by Supabase. The services used are user authentication and data management in the PostgreSQL database."
    technology "Supabase"

    comBackendAuthentication = component "Backend Authentication" {
        description "Provides user authentication services for login and registration."
        tags "Service"

        -> comDatabaseUsers
    }

    comBackendPostgresDatabase = component "Backend Postgres Database" {
        description "Provides data management for the backend using PostgreSQL."
        tags "Database"

        -> comDatabaseTransactions
        -> comDatabaseUsers
        -> comDatabaseCustomers
        -> comDatabaseServices
    }
} 