output "public_ip" {
  value       = aws_instance.web.public_ip
  description = "IP pública de la instancia"
}
