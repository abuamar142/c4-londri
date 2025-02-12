backend = container "Backend" {
    description "Provide service for the mobile frontend"
    technology "Supabase"

    backendAuth = component "Backend Auth" {
        description "Provide authentication service"
    }
    
    backendUser = component "Backend User" {
        description "Provide user management service"
    }

    backendCustomer = component "Backend Customer" {
        description "Provide customer management service"
    }

    backendService = component "Backend Service" {
        description "Provide service management service"
    }

    backendTransaction = component "Backend Transaction" {
        description "Provide transaction management service"
    }
}
