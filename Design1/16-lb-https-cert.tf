# resource "aws_acm_certificate" "cert" {
#   domain_name       = "example.com"
#   validation_method = "DNS"

#   tags = {
#     Environment = "test"
#   }

#   lifecycle {
#     create_before_destroy = true
#   }
# }


# i will need to create a cert with a valid domain name then pass it to my Load balancer dns