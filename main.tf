#Create sharded redis cluster in 3 zones

resource "yandex_mdb_redis_cluster" "foo" {
  name        = "test"
  environment = "PRODUCTION" //PRESTABLE or PRODUCTION
  network_id  = var.default_network_id
  sharded     = true //sharded redis

  config {
    version  = "6.0"//version of the cluster
    password = "your_password"
  }

  resources {
    resource_preset_id = "hm1.nano" //resource_preset_id - types are in the official documentation
    disk_size          = 16 //disk size
  }

  host {
    zone       = "ru-central1-a"
    subnet_id  = var.default_subnet_id_zone_a
    shard_name = "first"
  }

  host {
    zone       = "ru-central1-b"
    subnet_id  = var.default_subnet_id_zone_b
    shard_name = "second"
  }

  host {
    zone       = "ru-central1-c"
    subnet_id  = var.default_subnet_id_zone_c
    shard_name = "third"
  }
}