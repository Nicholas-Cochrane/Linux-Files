#!/bin/sh
idvar=$(docker ps | grep '   markusmcnugen/qbittorrentvpn' | awk '{print $1}')
echo "[" $(date) "]"
idsize=$(echo $idvar | wc -c)
if (( $idsize <= 1 )); then
	echo $idvar
	echo "ERROR: No Such Container 'markusmcnugen/qbittorrentvpn'"
	exit 1
fi
returnvar=$(docker exec $idvar bash -c "curl -Is  --connect-timeout 15 https://linuxhint.com/" | wc -c)
if (( $returnvar <= 0 )); then
	echo $idvar
	echo "container can not see internet"
	echo "Attempting Restart"
	docker restart $idvar
fi
