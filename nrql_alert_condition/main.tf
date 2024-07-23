resource "newrelic_nrql_alert_condition" "this" {
  for_each                       = var.alert_conditions
  account_id                     = var.account_id
  policy_id                      = var.policy_id
  type                           = each.value.type
  name                           = each.value.condition_name
  description                    = "Alert when transactions are taking too long"
  enabled                        = true
  violation_time_limit_seconds   = each.value.violation_time_limit_seconds
  fill_option                    = each.value.fill_option
  fill_value                     = each.value.fill_value
  aggregation_window             = each.value.aggregation_window
  aggregation_method             = each.value.aggregation_method
  aggregation_delay              = each.value.aggregation_delay
  expiration_duration            = each.value.expiration_duration
  open_violation_on_expiration   = true
  close_violations_on_expiration = true
  slide_by                       = each.value.slide_by

  nrql {
    query = "SELECT average(duration) FROM Transaction where appName = 'FoodMe-test'"
  }

  critical {
    operator              = "above"
    threshold             = each.value.threshold
    threshold_duration    = each.value.duration_minutes * 60
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "above"
    threshold             = each.value.threshold * 0.7
    threshold_duration    = each.value.duration_minutes * 60
    threshold_occurrences = "ALL"
  }
}
