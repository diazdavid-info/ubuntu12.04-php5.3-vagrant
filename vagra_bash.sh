#!/bin/bash

function saluda {
	echo "ok"
}

function apache_status {
	vagrant ssh -c "service apache2 status"	
}

function apache_restart {
	vagrant ssh -c "sudo service apache2 restart"
}

$1
