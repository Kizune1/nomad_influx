job "install-influxdb" {
	datacenters = ["dc1"]
	task "Get-influxdb" {
		driver = "exec"
		
		
	}
}
	

job "influxdb" {
	type = "service"
  
	group "influxdb" {
	  count = 1
	  network {
		port "influx" {
		  to = 8086
		}
	  }
  
	  service {
		name     = "influxdb"
		port     = "influx"
		provider = "nomad"
	  }
  
	  task "influxdb-task" {
		driver = "docker"
  
		config {
		  image = "influxdb:2.7.1"
		  ports = ["influx"]
		}
	  }
	}
  }