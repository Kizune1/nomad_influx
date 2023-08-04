job "install-influxdb" {
	datacenters = ["dc1"]
	task "Get-influxdb" {
		driver = "exec"
		
		artifact {
			source = "wget https://dl.influxdata.com/influxdb/releases/influxdb2-2.7.0-amd64.deb"
			destination = "local/home/odmin/"
		}
	task "install-influxdb"{
		driver = "exec"
		
		config {
			command = "sudo dpkg -i influxdb2-2.7.0-amd64.deb"
		}
	}
	}
}
