resource "null_resource" "unit3" {
  provisioner "local-exec" {
    command = "echo Unit 3 executed"
  }
}

