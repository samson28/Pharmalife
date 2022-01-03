
CREATE DATABASE PHARMACIE;
use PHARMACIE;

/*==============================================================*/
/* Table : CLIENT                                               */
/*==============================================================*/
create table CLIENT (
   IDCLT                int identity(1,1)              not null,
   NOMCLT               varchar(20)          null,
   PRENCLT              varchar(20)          null,
   SEXECLT              char(1)              null,
   TEL                  int                  null,
   constraint PK_CLIENT primary key nonclustered (IDCLT)
)
go

/*==============================================================*/
/* Table : DEPENSE                                              */
/*==============================================================*/
create table DEPENSE (
   IDDEP                numeric(3)           identity,
   IDOPERAT             int    not null,
   IDTYPDEP             numeric(3)           not null,
   LIB_DEP              varchar(10)          not null,
   DATE_DEP             datetime             not null,
   MT_DEP               money                not null,
   constraint PK_DEPENSE primary key nonclustered (IDDEP)
)
go



/*==============================================================*/
/* Table : DETAIL_VENTE                                         */
/*==============================================================*/
create table DETAIL_VENTE (
   IDVENTE              numeric(3)           not null,
   IDEXEMPL             int                  not null,
   QTE_VENTE            int                  not null,
   constraint PK_DETAIL_VENTE primary key (IDVENTE, IDEXEMPL)
)
go




/*==============================================================*/
/* Table : EXEMPLAIRE                                           */
/*==============================================================*/
create table EXEMPLAIRE (
   IDEXEMPL             int                 identity  not null,
   IDRAY                numeric(3)           not null,
   CODEPROD             char(8)              not null,
   IDFOURNISSEUR        numeric(3)           not null,
   NBRE_EXEMPL          float                not null,
   DATEPEREMP           datetime             not null,
   PRIX_EXEMPL          money                not null,
   constraint PK_EXEMPLAIRE primary key nonclustered (IDEXEMPL)
)
go





/*==============================================================*/
/* Table : FAMILLE                                              */
/*==============================================================*/
create table FAMILLE (
   IDFAMILLE            numeric(3)           identity,
   LIBFAMILLE           varchar(20)          not null,
   constraint PK_FAMILLE primary key nonclustered (IDFAMILLE)
)
go

/*==============================================================*/
/* Table : FOURNISSEUR                                          */
/*==============================================================*/
create table FOURNISSEUR (
   IDFOURNISSEUR        numeric(3)           identity,
   RAISON_SOCIALE       varchar(30)          not null,
   TELEPHONE            float                not null,
   ADRESSE              varchar(30)          not null,
   constraint PK_FOURNISSEUR primary key nonclustered (IDFOURNISSEUR)
)
go

/*==============================================================*/
/* Table : OPERATEUR                                            */
/*==============================================================*/
create table OPERATEUR (
   IDOPERAT             int identity(1,1)    not null,
   NOM_OPERAT           varchar(20)          not null,
   PREN_OPERAT          varchar(20)          not null,
   SEXE_OPERAT          char(1)              null,
   TEL_OPERAT           float                null,
   LOGIN                varchar(20)          not null,
   PASSWORD             varchar(8)           not null,
   constraint PK_OPERATEUR primary key nonclustered (IDOPERAT)
)
go

/*==============================================================*/
/* Table : PRODUIT                                              */
/*==============================================================*/
create table PRODUIT (
   CODEPROD             int identity(1,1)    not null,
   IDFAMILLE            numeric(3)           not null,
   DESIGNATIONPROD      char(30)             not null,
   DOSAGE               float                not null,
   QTE_SEUIL            float                not null,
   FORME                char(30)             not null,
   constraint PK_PRODUIT primary key nonclustered (CODEPROD)
)
go



/*==============================================================*/
/* Table : RAYON                                                */
/*==============================================================*/
create table RAYON (
   IDRAY                numeric(3)           identity,
   LIBRAY               varchar(10)          not null,
   constraint PK_RAYON primary key nonclustered (IDRAY)
)
go

/*==============================================================*/
/* Table : REGLEMENT                                            */
/*==============================================================*/
create table REGLEMENT (
   ID_REGL              numeric(6)           identity,
   IDVENTE              numeric(3)           not null,
   DATE_REGL            datetime             not null,
   MONTANT_REGL         money                not null,
   MODE_REGLEMENT       varchar(10)          not null,
   constraint PK_REGLEMENT primary key nonclustered (ID_REGL)
)
go


/*==============================================================*/
/* Table : TYPE_DEPENSE                                         */
/*==============================================================*/
create table TYPE_DEPENSE (
   IDTYPDEP             numeric(3)           identity,
   LIBTYPDEP            varchar(10)          not null,
   constraint PK_TYPE_DEPENSE primary key nonclustered (IDTYPDEP)
)
go

/*==============================================================*/
/* Table : VENTE                                                */
/*==============================================================*/
create table VENTE (
   IDVENTE              numeric(3)           identity,
   IDCLT                int     not null,
   IDOPERAT             int     not null,
   DATE_VENTE           datetime             not null,
   constraint PK_VENTE primary key nonclustered (IDVENTE)
)
go
/*insert CLIENT*/
INSERT INTO CLIENT (NOMCLT,PRENCLT,SEXECLT,TEL)
VALUES 
('RANIA','HELENE','F',90658715),
('VINTZ','ROY','M',90665715),
('RIVEN','LAURE','F',90558715),
('RITZ','DANIEL','F',90659515);

GO
/*insert DEPENSE */
INSERT INTO DEPENSE(IDOPERAT,IDTYPDEP,LIB_DEP,DATE_DEP,MT_DEP)
VALUES 
(1,2,'','12/12/2002',180000),
(2,2,'','25/10/2020',200000),
(2,1,'','04/07/2019',2800000),
(1,2,'','03/06/2016',25000000);

GO
/*insert DETAIL */
INSERT INTO DETAIL_VENTE(IDVENTE,IDEXEMPL,QTE_VENTE)
VALUES 
(1,1,200),
(2,2,400),
(3,4,500),
(4,5,300);
GO
/*insert EXEMPLAIRE */
INSERT INTO EXEMPLAIRE(IDRAY,CODEPROD,IDFOURNISSEUR,NBRE_EXEMPL,DATEPEREMP,PRIX_EXEMPL)
VALUES 
(1,'2585',25,10,'25/10/2021',100000),
(2,'2475',07,10,'10/10/2022',10000),
(4,'4578',05,10,'08/09/2023',50000),
(3,'5845',07,10,'25/10/2022',80000);

GO
/*insert FAMILLE */
INSERT INTO FAMILLE(LIBFAMILLE)
VALUES 
('ANTI-DEPRESSEUR'),
('DIETETIQUE'),
('DERMATOLOGIE');
GO
/*insert FOURNISSEUR */
INSERT INTO FOURNISSEUR(RAISON_SOCIALE,TELEPHONE,ADRESSE)
VALUES 
('LABORATIN',90258745,'HEDZRANAWOE'),
('HEBORISTE',90258745,'AGOE'),
('PHARMACIEN',90154798,'ADIDOGOME');
GO
/*insert OPERATEUR */
INSERT INTO OPERATEUR(NOM_OPERAT,PREN_OPERAT,SEXE_OPERAT,TEL_OPERAT,LOGIN,PASSWORD)
VALUES 
('BADAYODI','SAMSON','M',90254785,'ADMIN','ADMIN'),
('ESSIAKU','DONNE','M',90265785,'JUDA','JUDA');
GO
/*insert PRODUIT */
INSERT INTO PRODUIT(IDFAMILLE,DESIGNATIONPROD,DOSAGE,QTE_SEUIL,FORME)
VALUES 
(3,'TRAMADOLE',2,50,'COMPRIME'),
(3,'PARACETAMOLE',1,60,'COMPRIME'),
(1,'SEQUISSAN',1,40,'SIROP'),
(1,'ADVIL',5,30,'COMPRIME'),
(3,'ASPIRINE',5,40,'COMPRIME');

GO
/*insert RAYON*/
INSERT INTO RAYON(LIBRAY)
VALUES 
('DIETETIQUE'),
('HYGIENE'),
('DIABETIQUE');
GO
/*insert REGLEMENT */
INSERT INTO REGLEMENT(IDVENTE,DATE_REGL,MONTANT_REGL,MODE_REGLEMENT)
VALUES 
(1,'25/02/2021',2000,''),
(2,'25/03/2021',1000,''),
(3,'24/01/2021',1000,'');

GO
/*insert tYPEDEPENSE */
INSERT INTO TYPE_DEPENSE(LIBTYPDEP)
VALUES 
('Menage'),
('Transport'),
('FraitDiv');
GO
/*insert VENTE */
INSERT INTO VENTE(IDCLT,IDOPERAT,DATE_VENTE)
VALUES 
(1,1,'25/02/2021'),
(1,2,'25/02/2021'),
(2,1,'01/02/2021');
GO






