resource "null_resource" "unit1" {
  provisioner "local-exec" {
    command = "echo Unit 1 executed"
  }
}

