backend = container "Backend" {
    description "Provide API for the mobile frontend"
    technology "Supabase"
    
    bookController = component "BookController" {
        description "Controller for book related operations."
    }
}
