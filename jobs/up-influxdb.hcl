job "install-influxdb" {
	datacenters = ["dc1"]
	task "Get-influxdb" {
		driver = "raw-exec"
		
		config {
			command = "wget https://dl.influxdata.com/influxdb/releases/influxdb2-2.7.0-amd64.deb"
			dest = "/home/odmin/"
		}
	}
}
