variable "account_id" {
  description = "New Relic account ID"
  type        = number
}

variable "api_key" {
  description = "New Relic API key"
  type        = string
}

variable "policy_name" {
  description = "Name of the alert policy"
  type        = string
}

variable "alert_conditions" {
  description = "Map of alert conditions"
  type = map(object({
    type                         = string
    condition_name               = string
    violation_time_limit_seconds = number
    fill_option                  = string
    fill_value                   = number
    aggregation_window           = number
    aggregation_method           = string
    aggregation_delay            = number
    expiration_duration          = number
    slide_by                     = number
    threshold                    = number
    duration_minutes             = number
  }))
}
