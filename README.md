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

setup > authentication > ldap directories > +add

```ldap
Connection Filter: 
   (&(objectCategory=person)(objectclass=user))
  or

   (&(objectClass=user)(objectCategory=person)(!(userAccountControl:1.2.840.113556.1.4.803:=2)))

 BaseDN: dc=xcompany,dc=local

 RootDN: glpi_sync@ttc.local

 Login Field: samaccountname

 Synchronization Filed: objectguid
```
