resource "null_resource" "short_label" {
  triggers = {
    short_function    = lower(format("%v", var.function))
    short_solution    = lower(format("%v", local.short_solution_names))
    short_environment = lower(format("%v", var.short_environment_names[var.environment]))
    short_location      = lower(format("%v", var.short_location_names[var.location]))
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "null_resource" "label" {
  triggers = {
    name                = lower(join(var.delimiter, compact(concat(tolist([var.solution, var.environment, var.location, var.alteration])))))
    short_name          = lower(join("", compact(concat(tolist([null_resource.short_label.triggers.short_solution, null_resource.short_label.triggers.short_environment, null_resource.short_label.triggers.short_location, var.alteration])))))
    function_name       = lower(join(var.delimiter, compact(concat(tolist([var.function, var.solution, var.environment, var.location, var.alteration])))))
    short_function_name = lower(join("", compact(concat(tolist([null_resource.short_label.triggers.short_function, null_resource.short_label.triggers.short_solution, null_resource.short_label.triggers.short_environment, null_resource.short_label.triggers.short_location, var.alteration])))))
    function            = lower(format("%v", var.function))
    solution            = lower(format("%v", var.solution))
    environment         = lower(format("%v", var.environment))
    alteration          = lower(format("%v", var.alteration))
    location            = lower(format("%v", var.location))
  }

  lifecycle {
    create_before_destroy = true
  }
}
