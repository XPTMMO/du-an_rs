#!/bin/bash

power_off_droplet() {
	local droplet_id=$1
	local token=$2
	curl -X POST \
		-H "Content-Type: application/json" \
		-H "Authorization: Bearer $token" \
		-d '{"type":"power_off"}' \
		"https://api.digitalocean.com/v2/droplets/$droplet_id/actions"
}
