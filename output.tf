output "jenkins-url" {
    value = "http://${aws_instance.server.public_ip}:8080"
  
}