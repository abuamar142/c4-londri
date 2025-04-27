mainSystem = softwareSystem "Londri Sistem" {
    description "Aplikasi mobile untuk manajemen bisnis laundry, termasuk transaksi, pelanggan, layanan, dan laporan keuangan."

    // Mobile Application container
    !include container/mobile.dsl

    // Backend container
    !include container/backend.dsl

    // Database container
    !include container/database.dsl
}
