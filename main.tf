locals {
    timestamp = formatdate("YYYYMMDDhhmm", timestamp())
}

resource random_pet random_string {
  length    = 3
  separator = " "
  keepers = {
      timestamp = local.timestamp
  }
}

output timestamp {
    value = local.timestamp
}

output random_string {
  value = random_pet.random_string.id
}
