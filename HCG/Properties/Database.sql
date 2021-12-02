USE HCG
GO

CREATE TABLE VungKhiHau
(
	MaV nchar(5) PRIMARY KEY not null,
	TenV nvarchar(50) not null
)
GO

CREATE TABLE DoAm
(
	MaD nchar(5) PRIMARY KEY not null,
	TenD nvarchar(50) not null
)
GO

CREATE TABLE NhietDo
(
	MaN nchar(5) PRIMARY KEY not null,
	TenN nvarchar(50) not null
)
GO

CREATE TABLE Gio
(
	MaG nchar(5) PRIMARY KEY not null,
	TenG nvarchar(50) not null
)
GO

CREATE TABLE ApSuat
(
	MaA nchar(5) PRIMARY KEY not null,
	TenA nvarchar(50) not null
)
GO

CREATE TABLE ThoiTiet
(
	MaT nchar(5) PRIMARY KEY not null,
	TenT nvarchar(50) not null
)
GO

CREATE TABLE DataContent
(
	STT int not null PRIMARY KEY,
	IdV nchar(5) not null,
	IdD nchar(5) not null,
	IdN nchar(5) not null,
	IdG nchar(5) not null,
	IdA nchar(5) not null,
	IdT nchar(5) not null,
	CONSTRAINT un Unique(STT),
	CONSTRAINT fv FOREIGN KEY(IdV) References VungKhiHau(MaV),
	CONSTRAINT fd FOREIGN KEY(IdD) References DoAm(MaD),
	CONSTRAINT fn FOREIGN KEY(IdN) References NhietDo(MaN),
	CONSTRAINT fg FOREIGN KEY(IdG) References Gio(MaG),
	CONSTRAINT fa FOREIGN KEY(IdA) References ApSuat(MaA),
	CONSTRAINT ft FOREIGN KEY(IdT) References ThoiTiet(MaT)
)
GO
