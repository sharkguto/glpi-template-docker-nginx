# glpi-template-docker-nginx

template docker nginx pra glpi

## procedimentos

- descompactar glpi e rodar

```bash
tar zxvf glpi-10.0.15.tgz && docker-compose up --build -d
```

- entrar no docker

```bash
docker exec -it $(docker ps | grep -i glpiserver | awk '{print $1}') bash
```

- acessar o glpi 0.0.0.0:8042
  - HOST=db-x
  - MARIADB_USER=x123
  - MARIADB_PASSWORD=x123

## login como admin

|username|senha|
|--------|-----|
|glpi    |glpi |

## configurar ldap

ldaps://192.168.0.1:3268
ldap://192.168.0.1:389

setup > authentication > ldap directories > +add

```ldap
Connection Filter: 
   (&(objectCategory=person)(objectclass=user))
  or

   (&(objectClass=user)(objectCategory=person)(!(userAccountControl:1.2.840.113556.1.4.803:=2)))

 BaseDN: ou=x,dc=xcompany,dc=local

 RootDN: glpi_sync@ttc.local

 Login Field: samaccountname

 Synchronization Filed: objectguid
```

testar ldapsearch

```bash
ldapsearch \
    -x -H 192.168.0.1 \
    -D "user@x.local" \
    -W \
    -b "cn=users,dc=x,dc=local" \
    -s sub "(cn=*)" cn mail sn
```
