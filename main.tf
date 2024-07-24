resource "null_resource" "example" {
  provisioner "local-exec" {
    command = <<EOT
      cd /d/project
      git add .
      git commit -m "new"
      git push origin master
    EOT

    interpreter = ["bash", "-c"]  # Use bash shell for command execution
  }
}

