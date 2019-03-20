create table Usuario(
codigo int primary key identity,
nome varchar(50) not null,
email varchar(40) not null,
senha varchar(30) not null,
dataNascimento date not null,
cepCasa char(8) not null,
cepTrabalho char(8)
)

create table Destino(
codigo int primary key identity,
cepDestino char(8) not null,
cepOrigem char(8) not null,
data date not null
)