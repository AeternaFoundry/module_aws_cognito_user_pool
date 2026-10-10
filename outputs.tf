output "cognito_user_pools_id" {
  description = "Map of id values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cognito_user_pools_account_recovery_setting" {
  description = "Map of account_recovery_setting values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.account_recovery_setting) if v.account_recovery_setting != null && length(v.account_recovery_setting) > 0 }
}
output "cognito_user_pools_admin_create_user_config" {
  description = "Map of admin_create_user_config values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.admin_create_user_config) if v.admin_create_user_config != null && length(v.admin_create_user_config) > 0 }
}
output "cognito_user_pools_alias_attributes" {
  description = "Map of alias_attributes values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.alias_attributes if v.alias_attributes != null && length(v.alias_attributes) > 0 }
}
output "cognito_user_pools_arn" {
  description = "Map of arn values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cognito_user_pools_auto_verified_attributes" {
  description = "Map of auto_verified_attributes values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.auto_verified_attributes if v.auto_verified_attributes != null && length(v.auto_verified_attributes) > 0 }
}
output "cognito_user_pools_creation_date" {
  description = "Map of creation_date values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.creation_date if v.creation_date != null && length(v.creation_date) > 0 }
}
output "cognito_user_pools_custom_domain" {
  description = "Map of custom_domain values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.custom_domain if v.custom_domain != null && length(v.custom_domain) > 0 }
}
output "cognito_user_pools_deletion_protection" {
  description = "Map of deletion_protection values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.deletion_protection if v.deletion_protection != null && length(v.deletion_protection) > 0 }
}
output "cognito_user_pools_device_configuration" {
  description = "Map of device_configuration values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.device_configuration) if v.device_configuration != null && length(v.device_configuration) > 0 }
}
output "cognito_user_pools_domain" {
  description = "Map of domain values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "cognito_user_pools_email_configuration" {
  description = "Map of email_configuration values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.email_configuration) if v.email_configuration != null && length(v.email_configuration) > 0 }
}
output "cognito_user_pools_email_mfa_configuration" {
  description = "Map of email_mfa_configuration values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.email_mfa_configuration) if v.email_mfa_configuration != null && length(v.email_mfa_configuration) > 0 }
}
output "cognito_user_pools_email_verification_message" {
  description = "Map of email_verification_message values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.email_verification_message if v.email_verification_message != null && length(v.email_verification_message) > 0 }
}
output "cognito_user_pools_email_verification_subject" {
  description = "Map of email_verification_subject values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.email_verification_subject if v.email_verification_subject != null && length(v.email_verification_subject) > 0 }
}
output "cognito_user_pools_endpoint" {
  description = "Map of endpoint values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "cognito_user_pools_estimated_number_of_users" {
  description = "Map of estimated_number_of_users values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.estimated_number_of_users if v.estimated_number_of_users != null }
}
output "cognito_user_pools_lambda_config" {
  description = "Map of lambda_config values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.lambda_config) if v.lambda_config != null && length(v.lambda_config) > 0 }
}
output "cognito_user_pools_last_modified_date" {
  description = "Map of last_modified_date values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.last_modified_date if v.last_modified_date != null && length(v.last_modified_date) > 0 }
}
output "cognito_user_pools_mfa_configuration" {
  description = "Map of mfa_configuration values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.mfa_configuration if v.mfa_configuration != null && length(v.mfa_configuration) > 0 }
}
output "cognito_user_pools_name" {
  description = "Map of name values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cognito_user_pools_password_policy" {
  description = "Map of password_policy values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.password_policy) if v.password_policy != null && length(v.password_policy) > 0 }
}
output "cognito_user_pools_region" {
  description = "Map of region values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cognito_user_pools_schema" {
  description = "Map of schema values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "cognito_user_pools_sign_in_policy" {
  description = "Map of sign_in_policy values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.sign_in_policy) if v.sign_in_policy != null && length(v.sign_in_policy) > 0 }
}
output "cognito_user_pools_sms_authentication_message" {
  description = "Map of sms_authentication_message values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.sms_authentication_message if v.sms_authentication_message != null && length(v.sms_authentication_message) > 0 }
}
output "cognito_user_pools_sms_configuration" {
  description = "Map of sms_configuration values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.sms_configuration) if v.sms_configuration != null && length(v.sms_configuration) > 0 }
}
output "cognito_user_pools_sms_verification_message" {
  description = "Map of sms_verification_message values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.sms_verification_message if v.sms_verification_message != null && length(v.sms_verification_message) > 0 }
}
output "cognito_user_pools_software_token_mfa_configuration" {
  description = "Map of software_token_mfa_configuration values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.software_token_mfa_configuration) if v.software_token_mfa_configuration != null && length(v.software_token_mfa_configuration) > 0 }
}
output "cognito_user_pools_tags" {
  description = "Map of tags values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cognito_user_pools_tags_all" {
  description = "Map of tags_all values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "cognito_user_pools_user_attribute_update_settings" {
  description = "Map of user_attribute_update_settings values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.user_attribute_update_settings) if v.user_attribute_update_settings != null && length(v.user_attribute_update_settings) > 0 }
}
output "cognito_user_pools_user_pool_add_ons" {
  description = "Map of user_pool_add_ons values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.user_pool_add_ons) if v.user_pool_add_ons != null && length(v.user_pool_add_ons) > 0 }
}
output "cognito_user_pools_user_pool_tier" {
  description = "Map of user_pool_tier values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.user_pool_tier if v.user_pool_tier != null && length(v.user_pool_tier) > 0 }
}
output "cognito_user_pools_username_attributes" {
  description = "Map of username_attributes values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => v.username_attributes if v.username_attributes != null && length(v.username_attributes) > 0 }
}
output "cognito_user_pools_username_configuration" {
  description = "Map of username_configuration values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.username_configuration) if v.username_configuration != null && length(v.username_configuration) > 0 }
}
output "cognito_user_pools_verification_message_template" {
  description = "Map of verification_message_template values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.verification_message_template) if v.verification_message_template != null && length(v.verification_message_template) > 0 }
}
output "cognito_user_pools_web_authn_configuration" {
  description = "Map of web_authn_configuration values across all cognito_user_pools, keyed the same as var.cognito_user_pools"
  value       = { for k, v in aws_cognito_user_pool.cognito_user_pools : k => one(v.web_authn_configuration) if v.web_authn_configuration != null && length(v.web_authn_configuration) > 0 }
}

