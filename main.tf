data "cloudflare_workers_scripts" "workers_scripts_lookup" {
  for_each = var.workers_scripts_lookup

  account_id = each.value.account_id
  max_items  = each.value.max_items
  tags       = each.value.tags
}

