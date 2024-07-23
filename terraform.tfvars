
policy_name          = "My Alert Policy"
alert_conditions = {
  condition1 = {
    type                         = "static"
    condition_name               = "Condition 1"
    violation_time_limit_seconds = 600
    fill_option                  = "none"
    fill_value                   = 0
    aggregation_window           = 60
    aggregation_method           = "EVENT_FLOW"
    aggregation_delay            = 0
    expiration_duration          = 86400
    slide_by                     = 30
    threshold                    = 2.0
    duration_minutes             = 10
  },
  condition2 = {
    type                         = "static"
    condition_name               = "Condition 2"
    violation_time_limit_seconds = 600
    fill_option                  = "none"
    fill_value                   = 0
    aggregation_window           = 60
    aggregation_method           = "EVENT_FLOW"
    aggregation_delay            = 0
    expiration_duration          = 86400
    slide_by                     = 30
    threshold                    = 1.5
    duration_minutes             = 5
  }
}
