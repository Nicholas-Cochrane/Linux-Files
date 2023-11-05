#!/bin/sh
idvar=$(docker ps | grep '   markusmcnugen/qbittorrentvpn' | awk '{print $1}')
echo "[" $(date) "]"
echo $idvar
returnvar=$(docker exec $idvar bash -c "curl -Is  --connect-timeout 15 https://linuxhint.com/" | wc -c)
if (( $returnvar > 0 )); then
	echo "container can see internet"
else
	echo "container can not see internet"
	echo "Attempting Restart"
	docker restart $idvar
fi
