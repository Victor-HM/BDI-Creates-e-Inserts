use bdAmbulatorio

insert into tbPacientes(nomePacientes,sexoPacientes,idadePacientes,doencaPacientes)
values('Dom�nica Santos', 'F', 20, 'Gripe')
	 ,('Camila da Silva', 'M', 19, 'Covid 19')
	 ,('Bruna Ferreira','F', 25, 'Sarampo')
	 ,('Eduardo Gomes','M', 32, 'Dengue')

insert into tbDoenca(descDoenca)
values('Acne')
	 ,('Alcoolismo Agudo')
	 ,('Asma')

insert into tbAmbulatorio(numeroAmbulatorio, andarAmbulatorio,capacidadeAmbulatorio)
values(2000,'12�',400)
	  ,(1500,'8�',300)
	  ,(550,'1�',200)

insert into tbEspecialidade(descEspecialidade)
values('Pediatra')
	  ,('Clinico geral')
	  ,('Clinico')

insert into tbMedico(nomeMedico,crmMedico,salarioMedico,idadeMedico)
values('Dr. Carlos Jobim','52-71557-3',12000,50)
	  ,('Dr. Andr� Firmino','50-12345-6',22000,63)
	  ,('Dra. Ana Maria','10-20201-5',40.00061,42)
	  ,('Dr. Jo�o Carlos','22-20192-7',38.001,56)

insert into tbFuncionario(nomeFuncionario,idadeFuncionario,sexoFuncionario,salarioFuncionario,cidadeFuncionario)
values('Fernanda Fernandes',34,'F',2000,'S�o Paulo')
	  ,('Bruna Souza',25,'F',1700,'Guarulho')
	  ,('Jessica Filho',20,'F',3000,'Sorocaba')
	  ,('Leandro Leonardo',27,'M',2500,'S�o Paulo')

insert into tbConsulta(dataConsulta,horaConsulta)
values(01/02/2020,1200)
	  ,(25/03/2018,1130)
	  ,(30/04/2019,1625)
	  ,(05/05/2025,1705)