variable "ami-us-east-1" {
  description = "The ID of the AMI to use"
  type        = string
  default     = "ami-04a81a99f5ec58529"
  
  // Optionally, you can uncomment and edit the validation block below
  // to enforce certain patterns or constraints on the AMI variable value.
  /*
  validation {
    condition     = can(regex("^ami-[a-z0-9]+$", var.ami))
    error_message = "The ami variable must be a valid AMI id starting with 'ami-'."
  }
  */
}

variable "ami-us-east-2" {
  description = "The ID of the AMI to use"
  type        = string
  default     = "ami-0862be96e41dcbf74"
  
}


variable "instance" {
  description = "The ID of the AMI to use"
  type        = string
  default     = "t2.micro"
  

}

variable "aws-access_key" {
  type = string
  default = ""
}
variable "aws-secret_key" {
  type = string
  default = ""
}
variable "github-token" {
  type = string
  default = ""
}