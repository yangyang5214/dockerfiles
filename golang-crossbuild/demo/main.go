package main

import (
	"fmt"
	"strings"
	"github.com/google/gopacket/pcap"
)

// FindAllDevs 获取所有 ip
func FindAllDevs() {
	devices, _ := pcap.FindAllDevs()
	for _, device := range devices {
		for _, address := range device.Addresses {
			if len(address.IP) == 0 {
				continue
			}
			if strings.Contains(address.IP.String(), ":") {
				continue
			}
			if strings.HasPrefix(address.IP.String(), "127") {
				continue
			}
			fmt.Printf("\nName: [%s], IP address: [%s] ", device.Name, address.IP.String())
		}
	}
}


func main() {
	FindAllDevs()
}
