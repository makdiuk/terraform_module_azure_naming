output "name" {
  value       = null_resource.label.triggers.name
  description = "Lowercased Solution, Environment, Location, Alteration name splatted by dash."
}

output "short_name" {
  value       = null_resource.label.triggers.short_name
  description = "Short version. Lowercased Solution, Environment, Location, Alteration name"
}

output "function_name" {
  value       = null_resource.label.triggers.function_name
  description = "Lowercased Solution, Function, Environment, Location, Alteration name splatted by dash."
}

output "short_function_name" {
  value       = null_resource.label.triggers.short_function_name
  description = "Short version. Lowercased Solution, Function, Environment, Location, Alteration name"
}

output "environment" {
  value       = null_resource.label.triggers.environment
  description = "Lowercased environment."
}

output "short_environment" {
  value       = null_resource.short_label.triggers.short_environment
  description = "Short version. Lowercased environment."
}

output "solution" {
  value       = null_resource.label.triggers.solution
  description = "Lowercased solution."
}

output "short_solution" {
  value       = null_resource.short_label.triggers.short_solution
  description = "Lowercased short solution."
}

output "function" {
  value       = null_resource.label.triggers.function
  description = "Lowercased function."
}

output "alteration" {
  value       = null_resource.label.triggers.alteration
  description = "Lowercased alteration."
}

output "location" {
  value       = null_resource.label.triggers.location
  description = "Lowercased Azure region."
}

output "short_location" {
  value       = null_resource.short_label.triggers.short_location
  description = "Short version. Lowercased Azure region."
}

# Merge input tags with our tags.
output "tags" {
  value = merge(
    tomap({
      "Solution"    = null_resource.label.triggers.solution,
      "Environment" = null_resource.label.triggers.environment,
      "Location"    = null_resource.label.triggers.location,
      "Alteration"  = null_resource.label.triggers.alteration,
    }), var.tags
  )
}
