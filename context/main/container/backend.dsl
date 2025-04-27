backend = container "Backend" {
    description "The backend is provided by Supabase. The services used are user authentication and data management in the PostgreSQL database."
    technology "Supabase"

    backendAuthentication = component "Backend Authentication" {
        description "Provides user authentication services for login, registration, and RBAC implementation."
    }

    backendPostgresDatabase = component "Backend Postgres Database" {
        description "Manages data storage using the PostgreSQL database."
    }
} 