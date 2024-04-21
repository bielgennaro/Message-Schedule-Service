
# Message Scheduler Service

Este projeto representa uma API construída em Ruby On Rails que tem como principal serviço o agendamento de mensagens :)

Com relação one-to-many, UM cliente pode ter VÁRIAS mensagens

Rotas criadas na aplicação:
![Screenshot from 2024-04-21 18-16-21](https://github.com/bielgennaro/Message-Schedule-Service/assets/102267952/a3f7eba5-57cf-4ef4-b0f9-e130799ae7b7)


Screenshot da relação vista em diagrama:
![Screenshot from 2024-04-21 18-13-39](https://github.com/bielgennaro/Message-Schedule-Service/assets/102267952/ce456418-c412-4073-9396-03cc9b08e97e)



## Stack utilizada

**Front-end:** VueJs + TailwindCss (https://github.com/bielgennaro/Message-Schedule-App)

**Back-end:** Ruby, Ruby On Rails, Postgresql



## Rodando localmente (backend + frontend)

Clone os projetos

```bash
  git clone https://github.com/bielgennaro/Message-Schedule-Service &&
  git clone https://github.com/bielgennaro/Message-Schedule-App
```

Entre no diretório do projeto(backend)

```bash
  cd Message-Schedule-Service
```

Crie o database

```bash
  rails db:create
```

Para rodar as migrations, rode o seguinte comando

```bash
  rails db:migrate
```

Logo em seguida vocẽ tera a opção de rodar um seed para popular o banco de dados(opcional mas recomendado)
```bash
  rails db:seed
```

Inicie o servidor
```bash
  rails s
```
