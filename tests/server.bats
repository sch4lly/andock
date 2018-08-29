#!/usr/bin/env bats

load setup_helper

@test "connect" {
  ../../bin/andock.sh connect "default" "dev.andock.ci"
}

@test "server:install" {
  ../../bin/andock.sh @${ANDOCK_CONNECTION} server:install "andock" "${ANDOCK_ROOT_USER}" -e "sudo_nopasswd=true"

}

@test "server:update" {
  ../../bin/andock.sh @${ANDOCK_CONNECTION} server:update "andock" "${ANDOCK_ROOT_USER}" -e "sudo_nopasswd=true"
}

@test "server:ssh-add" {
  ../../bin/andock.sh @${ANDOCK_CONNECTION} server:ssh-add @${ANDOCK_CONNECTION} "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDRSp8EAEXfDN5zLpGX15OlFE33dXW6eGn53ZLQR28liRkSvP+y7vDnBzIQj7WmgomG3unVUvhPVrF27W7j9DRK67wog9XTTeXKVTaT63b3v0TYTVmAYPlE15ArOfZvUaq8LM44Hs6P5+L6DngZm3fbgdNKsPXmizQ7CxciRciV6wxrwAgkUW9100CUFgEOnf4+B8Nbj3VZl2iKL3DZzfTYNENFl21yK+tMo7oMsyhyra5fwj/A4Gqj7nL2MESBdHw7YZ5r3FO8+rc+dwiOTcc1ATRrwsGXsuEXg1VGo8TBTvkXkD59J8FmZV8qlewxTpqwW2yveuNSZenC5tpL5TT/ deploy@travis-ci.org"
}

load teardown_helper