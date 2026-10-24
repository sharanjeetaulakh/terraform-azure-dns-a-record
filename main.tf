resource "azurerm_dns_a_record" "dns_record" {
  for_each=var.dnsrecords
  name                = each.value.name
  zone_name           = each.value.zone_name 
  resource_group_name =data.azurerm_resource_group.rg[each.key].name
  ttl                 = each.value.ttl         
  records             = each.value.records     
}