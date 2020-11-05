CREATE DATABASE bdAmbulatorio

use bdAmbulatorio

create table tbPacientes (
	codPacientes int primary key identity(102,1)
	,nomePacientes varchar(30)
	,sexoPacientes char(10)
	,idadePacientes int
	,doencaPacientes varchar(10)
);

create table tbDoenca(
	codDoenca int primary key identity(1,1)
	,descDoenca varchar(20)
);

create table tbAmbulatorio(
	codAmbulatorio int primary key identity(1,1)
	,numeroAmbulatorio int
	,andarAmbulatorio varchar(4)
	,capacidadeAmbulatorio int
);

create table tbEspecialidade (
	codEspecialidade int primary key identity(10,10)
	,descEspecialidade varchar(20)
);

create table tbMedico(
	codMedico int primary key identity(201,1)
	,nomeMedico varchar(30)
	,crmMedico varchar(10)
	,salarioMedico MONEY
	,idadeMedico int
	,codAmbulatorio int foreign key references tbAmbulatorio(codAmbulatorio)
	,codEspecialidade int foreign key references tbEspecialidade(codEspecialidade)
);

create table tbFuncionario(
	codFuncionario int primary key identity(1,1)
	,nomeFuncionario varchar(30)
	,idadeFuncionario int
	,sexoFuncionario char(10)
	,salarioFuncionario money
	,codAmbulatorio int foreign key references tbAmbulatorio(codAmbulatorio)
	,cidadeFuncionario varchar(20)
);

create table tbConsulta(
	cod int primary key identity(1,1)
	,dataConsulta datetime
	,horaConsulta time
	,codMedico int foreign key references tbMedico(codMedico)
	,codPacientes int foreign key references tbPacientes(codPacientes)
	,codAmbulatorio int foreign key references tbAmbulatorio(codAmbulatorio)
	,codDoenca int foreign key references tbDoenca(codDoenca)
);