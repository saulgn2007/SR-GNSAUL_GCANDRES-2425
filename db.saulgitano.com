$TTL 604800
saulgitano.com.	IN	SOA	ns1 admin (
		  3	  ;Serial
	     604800	  ;Refresh
	      86400	  ;Retry
	    2419200	  ;Expire
	     604800 )	  ;Negative Cache TTL

; Servidores de nombre
@	IN	NS	PC11.saulgitano.com.
	IN	NS	PC12.saulgitano.com.

; Estaciones de trabajo de la red 172.17.15.0/24
PC1	IN	A	172.17.15.1
PC2     IN      A       172.17.15.2
PC3     IN      A       172.17.15.3
PC4     IN      A       172.17.15.4
PC5     IN      A       172.17.15.5
PC6     IN      A       172.17.15.6
PC7     IN      A       172.17.15.7
PC8     IN      A       172.17.15.8
PC9     IN      A       172.17.15.9

; Servidor DHCP + Router. Debian1-Pruebas
PC10	IN	A	172.17.14.12
     	IN      A       172.17.15.11

; Servidores DNS
PC11    IN      A       172.17.15.12
PC12    IN      A       172.17.15.14

servidorimpresion IN A	172.17.15.13

; Servidores de la red 172.17.14.0/24
PC14    IN      A       172.17.14.1
PC15    IN      A       172.17.14.1
