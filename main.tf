terraform {
  required_version = "<= 0.11.14"
}
variable "vaultSsl" {
  description = "SSL Certificate served by the Vault server."
  type        = "map"
  default = {
    # Paths
    ssl_key = {
      path = "./certs/server.key"
    }
    ssl_cert = {
      path = "./certs/server.pem"
    }
    #ssl_chain { path = "" }
    # Self Signed
    source       = "self-signed"
    common_name  = "vault"
    country      = "nl"
    city         = "rotterdam"
    organization = "test"
  }
}