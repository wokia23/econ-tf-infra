
variable "ami_id" {
  type        = string
  default     = "ami-0ce45259f491c3d4f"
  description = "instance ami used"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Instance type used"
}
