database = container "Database" {
    description "Store all data"
    technology "PostgreSQL"

    bookTable = component "books" {
        description "Stores book data."
    }
}
