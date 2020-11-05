USE bdConcessionaria

CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY(1,1)
	,nomeFabricante VARCHAR(30)
	,lograFabricante INT
	,numFabricante INT
	,cidadeFabricante VARCHAR(15)
	,ufFabricante INT
);

CREATE TABLE tbTelFabri(
	codTelFabri INT PRIMARY KEY IDENTITY(1,1)
	,numTelFabri INT
	,contatoTelFabri INT
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante(codFabricante)
);

CREATE TABLE tbModelo(
	codModelo INT PRIMARY KEY IDENTITY(1,1)
	,nomeModelo VARCHAR(10)
	,valorfabrica MONEY
	,anoFabricacao DATETIME
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante(codFabricante)
);

CREATE TABLE tbVenda (
	codVenda INT PRIMARY KEY IDENTITY(1,1)
	,dataVenda DATETIME
	,totalVenda INT
);

CREATE TABLE tbSubVenda (
	codSubVenda INT PRIMARY KEY IDENTITY(1,1)
	,codVenda INT FOREIGN KEY REFERENCES tbVenda(codVenda)
	,subTotal INT
);

CREATE TABLE tbVeiculo(
	codVeiculo INT PRIMARY KEY IDENTITY(1,1)
	,descVeiculo VARCHAR(30)
	,valorVeiculo MONEY
	,anoFabricacao DATETIME
	,codModelo INT FOREIGN KEY REFERENCES tbModelo(codModelo)
);