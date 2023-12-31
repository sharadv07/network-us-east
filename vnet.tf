resource "azurerm_virtual_network" "virtual_network" {
    for_each                = local.virtual_network
        name                    = each.value.name
        resource_group_name     = var.resource_group_output[each.value.resource_group_name].name
        address_space           = each.value.address_space
        location                = each.value.location == null ? var.default_values.location : each.value.location
        dns_servers             = each.value.dns_server == [] ? ["168.63.129.16"] : each.value.dns_server
        
        tags    = each.value.tags == null ? var.default_values.tags : each.value.tags
}