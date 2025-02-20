resource "null_resource" "unit2" {
  provisioner "local-exec" {
    command = "echo Unit 2 executed"
  }
}

