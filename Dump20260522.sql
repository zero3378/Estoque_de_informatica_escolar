create table categorias(
	id_categoria int auto_increment primary key,
    nome_categoria varchar(40)
);

create table itens(
	id_itens int auto_increment primary key,
    nome_item varchar(30) not null,
    modelo_item varchar(20) not null,
    qtd_item int,
    status_item enum('Disponível', 'Em manutenção', 'Sem concerto', 'Emprestado') not null default 'Disponível',
    id_categoria int not null,
    foreign key (id_categoria) references categorias(id_categoria) 
);

create table turma(
	id_turma int auto_increment primary key,
    nome_turma varchar(10) not null,
    periodo enum('Manhã', 'Tarde', 'Noite')
);
	
create table usuarios(
	email_escola varchar(70) primary key,
    nome_usuario varchar(50) not null,
    senha varchar(10) not null,
	tipo_usuario enum('Aluno(a)', 'Professor(a)', 'Diretor(a)') not null
);

create table aluno(
	email_escola varchar(70) primary key,
    id_turma int not null,
    senha varchar(10) not null,
    num_chamada int not null,
    foreign key (email_escola) references usuarios(email_escola),
    foreign key (id_turma) references turma(id_turma) 
);

create table professor(
	email_escola varchar(70) primary key,
    id_turma int not null,
    senha varchar(10) not null,
    materia varchar(10) not null,
    foreign key (email_escola) references usuarios(email_escola),
    foreign key (id_turma) references turma(id_turma) 
);

create table direção(
	email_escola varchar(70) primary key,
	senha varchar(10) not null,
    foreign key (email_escola) references usuarios(email_escola)
);

create table Emprestimo_aluno(
	id_EA int auto_increment primary key,
    data_emprestimo timestamp default current_timestamp,
    email_escola varchar(70) not null,
    nome_item int not null,
    modelo_item int not null,
    id_turma int not null,
    num_chamada int not null,
    foreign key (email_escola) references usuarios(email_escola),
    foreign key (id_turma) references turma(id_turma),
    foreign key (num_chamada) references aluno(num_chamada)
);

create table Emprestimo_professor(
	id_EP int auto_increment primary key,
    data_emprestimo timestamp default current_timestamp,
    email_escola varchar(70) not null,
    nome_item int not null,
    modelo_item int not null,
    id_turma int not null,
    materia varchar(10) not null,
    foreign key (email_escola) references usuarios(email_escola),
    foreign key (id_turma) references turma(id_turma),
    foreign key (materia) references professor(materia)
);