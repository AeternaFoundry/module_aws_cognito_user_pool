variable "cognito_user_pools" {
  description = <<EOT
Map of cognito_user_pools, attributes below
Required:
    - name
Optional:
    - alias_attributes
    - auto_verified_attributes
    - deletion_protection
    - email_verification_message
    - email_verification_subject
    - mfa_configuration
    - region
    - sms_authentication_message
    - sms_verification_message
    - tags
    - tags_all
    - user_pool_tier
    - username_attributes
    - account_recovery_setting (block):
        - recovery_mechanism (optional, block):
            - name (required)
            - priority (required)
    - admin_create_user_config (block):
        - allow_admin_create_user_only (optional)
        - invite_message_template (optional, block):
            - email_message (optional)
            - email_subject (optional)
            - sms_message (optional)
    - device_configuration (block):
        - challenge_required_on_new_device (optional)
        - device_only_remembered_on_user_prompt (optional)
    - email_configuration (block):
        - configuration_set (optional)
        - email_sending_account (optional)
        - from_email_address (optional)
        - reply_to_email_address (optional)
        - source_arn (optional)
    - email_mfa_configuration (block):
        - message (optional)
        - subject (optional)
    - lambda_config (block):
        - create_auth_challenge (optional)
        - custom_email_sender (optional, block):
            - lambda_arn (required)
            - lambda_version (required)
        - custom_message (optional)
        - custom_sms_sender (optional, block):
            - lambda_arn (required)
            - lambda_version (required)
        - define_auth_challenge (optional)
        - kms_key_id (optional)
        - post_authentication (optional)
        - post_confirmation (optional)
        - pre_authentication (optional)
        - pre_sign_up (optional)
        - pre_token_generation (optional)
        - pre_token_generation_config (optional, block):
            - lambda_arn (required)
            - lambda_version (required)
        - user_migration (optional)
        - verify_auth_challenge_response (optional)
    - password_policy (block):
        - minimum_length (optional)
        - password_history_size (optional)
        - require_lowercase (optional)
        - require_numbers (optional)
        - require_symbols (optional)
        - require_uppercase (optional)
        - temporary_password_validity_days (optional)
    - schema (block):
        - attribute_data_type (required)
        - developer_only_attribute (optional)
        - mutable (optional)
        - name (required)
        - number_attribute_constraints (optional, block):
            - max_value (optional)
            - min_value (optional)
        - required (optional)
        - string_attribute_constraints (optional, block):
            - max_length (optional)
            - min_length (optional)
    - sign_in_policy (block):
        - allowed_first_auth_factors (optional)
    - sms_configuration (block):
        - external_id (required)
        - sns_caller_arn (required)
        - sns_region (optional)
    - software_token_mfa_configuration (block):
        - enabled (required)
    - user_attribute_update_settings (block):
        - attributes_require_verification_before_update (required)
    - user_pool_add_ons (block):
        - advanced_security_additional_flows (optional, block):
            - custom_auth_mode (optional)
        - advanced_security_mode (required)
    - username_configuration (block):
        - case_sensitive (optional)
    - verification_message_template (block):
        - default_email_option (optional)
        - email_message (optional)
        - email_message_by_link (optional)
        - email_subject (optional)
        - email_subject_by_link (optional)
        - sms_message (optional)
    - web_authn_configuration (block):
        - relying_party_id (optional)
        - user_verification (optional)
EOT

  type = map(object({
    name                       = string
    alias_attributes           = optional(set(string))
    auto_verified_attributes   = optional(set(string))
    deletion_protection        = optional(string)
    email_verification_message = optional(string)
    email_verification_subject = optional(string)
    mfa_configuration          = optional(string)
    region                     = optional(string)
    sms_authentication_message = optional(string)
    sms_verification_message   = optional(string)
    tags                       = optional(map(string))
    tags_all                   = optional(map(string))
    user_pool_tier             = optional(string)
    username_attributes        = optional(set(string))
    account_recovery_setting = optional(object({
      recovery_mechanism = optional(list(object({
        name     = string
        priority = number
      })))
    }))
    admin_create_user_config = optional(object({
      allow_admin_create_user_only = optional(bool)
      invite_message_template = optional(object({
        email_message = optional(string)
        email_subject = optional(string)
        sms_message   = optional(string)
      }))
    }))
    device_configuration = optional(object({
      challenge_required_on_new_device      = optional(bool)
      device_only_remembered_on_user_prompt = optional(bool)
    }))
    email_configuration = optional(object({
      configuration_set      = optional(string)
      email_sending_account  = optional(string)
      from_email_address     = optional(string)
      reply_to_email_address = optional(string)
      source_arn             = optional(string)
    }))
    email_mfa_configuration = optional(object({
      message = optional(string)
      subject = optional(string)
    }))
    lambda_config = optional(object({
      create_auth_challenge = optional(string)
      custom_email_sender = optional(object({
        lambda_arn     = string
        lambda_version = string
      }))
      custom_message = optional(string)
      custom_sms_sender = optional(object({
        lambda_arn     = string
        lambda_version = string
      }))
      define_auth_challenge = optional(string)
      kms_key_id            = optional(string)
      post_authentication   = optional(string)
      post_confirmation     = optional(string)
      pre_authentication    = optional(string)
      pre_sign_up           = optional(string)
      pre_token_generation  = optional(string)
      pre_token_generation_config = optional(object({
        lambda_arn     = string
        lambda_version = string
      }))
      user_migration                 = optional(string)
      verify_auth_challenge_response = optional(string)
    }))
    password_policy = optional(object({
      minimum_length                   = optional(number)
      password_history_size            = optional(number)
      require_lowercase                = optional(bool)
      require_numbers                  = optional(bool)
      require_symbols                  = optional(bool)
      require_uppercase                = optional(bool)
      temporary_password_validity_days = optional(number)
    }))
    schema = optional(list(object({
      attribute_data_type      = string
      developer_only_attribute = optional(bool)
      mutable                  = optional(bool)
      name                     = string
      number_attribute_constraints = optional(object({
        max_value = optional(string)
        min_value = optional(string)
      }))
      required = optional(bool)
      string_attribute_constraints = optional(object({
        max_length = optional(string)
        min_length = optional(string)
      }))
    })))
    sign_in_policy = optional(object({
      allowed_first_auth_factors = optional(set(string))
    }))
    sms_configuration = optional(object({
      external_id    = string
      sns_caller_arn = string
      sns_region     = optional(string)
    }))
    software_token_mfa_configuration = optional(object({
      enabled = bool
    }))
    user_attribute_update_settings = optional(object({
      attributes_require_verification_before_update = set(string)
    }))
    user_pool_add_ons = optional(object({
      advanced_security_additional_flows = optional(object({
        custom_auth_mode = optional(string)
      }))
      advanced_security_mode = string
    }))
    username_configuration = optional(object({
      case_sensitive = optional(bool)
    }))
    verification_message_template = optional(object({
      default_email_option  = optional(string)
      email_message         = optional(string)
      email_message_by_link = optional(string)
      email_subject         = optional(string)
      email_subject_by_link = optional(string)
      sms_message           = optional(string)
    }))
    web_authn_configuration = optional(object({
      relying_party_id  = optional(string)
      user_verification = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cognito_user_pools : (
        v.account_recovery_setting == null || (v.account_recovery_setting.recovery_mechanism == null || (length(v.account_recovery_setting.recovery_mechanism) <= 2))
      )
    ])
    error_message = "Each recovery_mechanism list must contain at most 2 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognito_user_pools : (
        v.schema == null || (length(v.schema) <= 50)
      )
    ])
    error_message = "Each schema list must contain at most 50 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognito_user_pools : (
        v.email_configuration == null || (v.email_configuration.reply_to_email_address == null || ((contains([""], v.email_configuration.reply_to_email_address)) || (can(regex("[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+@[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", v.email_configuration.reply_to_email_address)))))
      )
    ])
    error_message = "any of: must be one of: ; must satisfy regular expression pattern: [\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+@[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognito_user_pools : (
        v.email_mfa_configuration == null || (v.email_mfa_configuration.subject == null || (can(regex("[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+", v.email_mfa_configuration.subject))))
      )
    ])
    error_message = "must satisfy regular expression pattern: [\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognito_user_pools : (
        v.password_policy == null || (v.password_policy.minimum_length == null || (v.password_policy.minimum_length >= 6 && v.password_policy.minimum_length <= 99))
      )
    ])
    error_message = "must be between 6 and 99"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognito_user_pools : (
        v.password_policy == null || (v.password_policy.password_history_size == null || (v.password_policy.password_history_size >= 0 && v.password_policy.password_history_size <= 24))
      )
    ])
    error_message = "must be between 0 and 24"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognito_user_pools : (
        v.password_policy == null || (v.password_policy.temporary_password_validity_days == null || (v.password_policy.temporary_password_validity_days >= 0 && v.password_policy.temporary_password_validity_days <= 365))
      )
    ])
    error_message = "must be between 0 and 365"
  }
  # Note: 50 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

