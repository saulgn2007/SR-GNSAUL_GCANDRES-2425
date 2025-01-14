$TTL 604800
$ORIGIN saulgitano.com.
saulgitano.com.	IN	SOA	PC11 admin (
		  3	  ;Serial
	     604800	  ;Refresh
	      86400	  ;Retry
	    2419200	  ;Expire
	     604800 )	  ;Negative Cache TTL

; Servidores de nombre
@	IN	NS	PC11.saulgitano.com.
	IN	NS	PC12.saulgitano.com.
PC12	IN	A	172.17.15.12

; Estaciones de trabajo de la red 172.17.15.0/24
$INCLUDE /var/lib/bind/db.saulgitanorrhh.com
$INCLUDE /var/lib/bind/db.saulgitanoadmin.com

; Servidor DHCP + Router. Debian1-Pruebas
PC10	IN	A	172.17.14.12
	IN      A       172.17.15.11

; Servidores DNS
PC11    IN      A       172.17.15.12
PC12    IN      A       172.17.15.14

servidorimpresion IN A	172.17.15.13

; Servidores de la red 172.17.14.0/24
PC14.saulgitano.com.    IN      A       172.17.14.1
PC15    IN      A       172.17.14.1
