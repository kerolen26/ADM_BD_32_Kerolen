Create database cargos;
use cargos;

create table cargos(
id int,
nome varchar(45),
primary key(id)
);

create table concursos(
id int,
data date,
nome varchar(45),
primary key(id)
);

create table candidatos(
id int,
nome varchar(45),
sobrenome varchar(45),
cpf char(11),
telefone char(15),
email varchar(60),
primary key(id)
);

create table inscricao(
codigo_inscricao varchar(8), 
id_cargo int,
id_concurso int,
id_candidato int,
primary key(codigo_inscricao),
foreign key(id_cargo) references cargos(id),
foreign key(id_concurso) references concursos(id),
foreign key(id_candidato) references candidatos(id)
);

insert into cargos values (1,'veterinaria');
insert into concursos values (1,'2000-09-08', 'militar');
insert into candidatos values(1,' Eduardo', 'Gomes', '113278123', '24998173839', ' eduardo.g.@gmail.com');
insert into inscricao values('001','1','1','1');
