output "workers_scripts_lookup_account_id" {
  description = "Map of account_id values across all workers_scripts_lookup, keyed the same as var.workers_scripts_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_workers_scripts.workers_scripts_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "workers_scripts_lookup_max_items" {
  description = "Map of max_items values across all workers_scripts_lookup, keyed the same as var.workers_scripts_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_workers_scripts.workers_scripts_lookup : k => v.max_items if v.max_items != null }
}
output "workers_scripts_lookup_result" {
  description = "Map of result values across all workers_scripts_lookup, keyed the same as var.workers_scripts_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_workers_scripts.workers_scripts_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "workers_scripts_lookup_tags" {
  description = "Map of tags values across all workers_scripts_lookup, keyed the same as var.workers_scripts_lookup except keys with no tags are omitted"
  value       = { for k, v in data.cloudflare_workers_scripts.workers_scripts_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

