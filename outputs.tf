output "dn" {
  value       = aci_rest.vzCPIf.id
  description = "Distinguished name of `vzCPIf` object."
}

output "name" {
  value       = aci_rest.vzCPIf.content.name
  description = "Imported contract name."
}
