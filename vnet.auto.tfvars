virtual_network_list = [
    {
        name        = "vmasonclouds-1-vnet"
        location    = "eastus"
        resource_group_name = "masonclouds-dev-1-rg"
        address_space = ["10.100.0.0/16"] //["172.21.0.0/16"]
        dns_server = [] //["172.21.1.40", "172.21.1.41"]
        tags = {
            environment = "dev"
            owner = "superman"
        }

    }
]