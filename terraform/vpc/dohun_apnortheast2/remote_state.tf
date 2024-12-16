data "terraform_remote_state" "s3" {
  backend = "s3"
  #   config  = merge(var.remote_state.s3.zerone-id)
  config = merge(var.remote_state.s3.dhham, { "assume_role" = { "role_arn" = var.assume_role_arn } })
}