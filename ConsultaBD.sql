create table Usuario(
ID int primary key identity,
nome varchar(50) not null,
email varchar(40) not null,
senha varchar(30) not null,
dataNascimento date not null,
cepCasa char(8) not null,
cepTrabalho char(8) not null
)

select * from Usuario

create table Destino(
codigo int primary key identity,
cepDestino char(8) not null,
cepOrigem char(8) not null,
data date not null
)

-- Pesquisa e Gráfico de Pareto --
create table Pesquisa(
ID int primary key,
total int not null,
qtd1 int not null,
qtd2 int not null,
qtd3 int not null,
qtd4 int not null,
qtd5 int not null,
qtd6 int not null,
)
select * from Pesquisa

-- insert into Pesquisa values(1,0,0,0,0,0,0,0)

-- trigger para a Pesquisa
create trigger p_tg
on Pesquisa
instead of insert
as
update Pesquisa set total = Pesquisa.total+1, qtd1 = inserted.qtd1+Pesquisa.qtd1, qtd2 = inserted.qtd2+Pesquisa.qtd2, qtd3 = inserted.qtd3+Pesquisa.qtd3, qtd4 = inserted.qtd4+Pesquisa.qtd4, qtd5 = inserted.qtd5+Pesquisa.qtd5, qtd6 = inserted.qtd6+Pesquisa.qtd6 from inserted where Pesquisa.ID=1
