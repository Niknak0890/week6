resource "aws_lightsail_instance" "NDAServer" {
  name         = "dev-server"
  blueprint_id = "ubuntu_18_04"
  bundle_id    = "medium_1_0"
  user_data    = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y apache2
              sudo systemctl start apache2
              sudo systemctl enable apache2
              echo '<h1>This is deployed by Nichole </h1>' | sudo tee /var/www/html/index.html
              EOF
}
