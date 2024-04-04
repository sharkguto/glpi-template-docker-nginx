# glpi-template-docker-nginx

template docker nginx pra glpi

## procedimentos

- descompactar glpi e rodar

```bash
tar zxvf glpi-10.0.14.tgz && docker-compose up --build
```

- entrar no docker

```bash
docker exec -it $(docker ps | grep -i glpixpto | awk '{print $1}') bash
```
