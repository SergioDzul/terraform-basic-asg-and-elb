resource "aws_key_pair" "serj" {
    key_name            = "${var.project_name}-keypair"
    public_key          = var.public_ssh_key
}
