variable keeper {
  type    = string
  default = ""
}

resource random_pet random_string {
  length    = 3
  separator = " "
  keepers = {
    variable = var.keeper
  }
}

output keeper {
    value = var.keeper
}

output random_string {
  value = random_pet.random_string.id
}
