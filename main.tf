resource random_pet random_string {
  length    = 3
  separator = " "
  keepers = {
      timestamp = timestamp()
  }
}

output random_string {
  value = random_pet.random_string.id
}
