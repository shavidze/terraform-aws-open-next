variable "function_name" {
  description = "The name of the lambda function"
  type        = string
}

variable "zip_file" {
  description = "The absolute path to the lambda function zip"
  type        = string
}

variable "hash" {
  description = "A hash to determine whether a new version of the lambda function should be deployed"
  type        = string
}

variable "runtime" {
  description = "The runtime of the lambda function"
  type        = string
}

variable "handler" {
  description = "The handler of the lambda function"
  type        = string
}

variable "memory_size" {
  description = "The memory size of the lambda function"
  type        = number
}

variable "timeout" {
  description = "The timeout of the lambda function"
  type        = number
}

variable "iam" {
  description = "Override the default IAM configuration"
  type = object({
    path                 = optional(string, "/")
    permissions_boundary = optional(string)
  })
  default = {}
}

variable "cloudwatch_log" {
  description = "Override the Cloudwatch logs configuration"
  type = object({
    retention_in_days = number
  })
  default = {
    retention_in_days = 7
  }
}

variable "environment_variables" {
  description = "Specify additional environment variables for the lambda function"
  type        = map(string)
  default     = {}
}

variable "iam_policy_statements" {
  description = "Additional IAM policy statements to attach to the role in addition to the default cloudwatch logs, xray and kms permissions"
  type        = any
  default     = []
}

variable "publish" {
  description = "Whether to publish a new lambda version"
  type        = bool
  default     = true
}

variable "architecture" {
  description = "Instruction set architecture for the lambda function"
  type        = string
  default     = "arm64"
}

variable "schedule" {
  description = "The schedule to invoke the function"
  type        = string
}

variable "prefix" {
  description = "A prefix which will be attached to resource name to esnure resources are random"
  type        = string
}

variable "suffix" {
  description = "A suffix which will be attached to resource name to esnure resources are random"
  type        = string
}
