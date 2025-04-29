cBackend = container "Backend" {
    description "The backend is provided by Supabase. The services used are user authentication and data management in the PostgreSQL database."
    technology "Supabase"

    !include backend
} 