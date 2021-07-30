--create database DaLuigiPizzeria

create table Pizza(
Codice varchar(5) not null,
Nome varchar(30) not null,
Prezzo decimal(4,2) not null,
constraint PK_Pizza primary key(Codice),
constraint CHK_Prezzo check (Prezzo > 0)
)

create table Ingrediente(
Codice varchar(5) not null,
Nome varchar(30) not null,
Costo decimal(4,2) not null,
QuantitaMagazzino int,  --questa pizzeria ha un sistema avanzato di calcolo che riesce a capire in base alla quantità 
						--dell' ingrediente quante pizze (cioè quante unità) contenenti quell'ingrediente potranno essere fatte
						--per questo la quantità è un int
constraint PK_Ingrediente primary key(Codice),
constraint CHK_Costo check (Costo > 0)
)

create table PizzaIngrediente(
Codice_Pizza varchar(5) not null,
Codice_Ingrediente varchar(5) not null,
constraint FK_Pizza foreign key(Codice_Pizza) references Pizza(Codice),
constraint FK_Ingrediente foreign key(Codice_Ingrediente) references Ingrediente(Codice),
)

--INDICI
create unique index Pizze_Index on Pizza(Nome)
create index Ingredienti_Index on Ingrediente(Codice)


--INSERIMENTO RECORD
insert into Pizza values('P-001','Margherita',5)
insert into Pizza values('P-002','Bufala',7)
insert into Pizza values('P-003','Diavola',6)
insert into Pizza values('P-004','Quattro Stagioni',6.5)
insert into Pizza values('P-005','Porcini',7)
insert into Pizza values('P-006','Dionisio',8)
insert into Pizza values('P-007','Ortolana',8)
insert into Pizza values('P-008','Patate e salsiccia',6)
insert into Pizza values('P-009','Pomodorini',6)
insert into Pizza values('P-010','Quattro formaggi',7.5)
insert into Pizza values('P-011','Caprese',7.5)
insert into Pizza values('P-012','Zeus',7.5)

insert into Ingrediente values('I-001','Pomodoro',0.2,70)
insert into Ingrediente values('I-002', 'Mozzarella', 0.7,100)
insert into Ingrediente values('I-003', 'Mozzarella di bufala', 1.5, 50)
insert into Ingrediente values('I-004', 'Spianata piccante', 0.6, 20)
insert into Ingrediente values('I-005', 'Funghi', 0.2, 70)
insert into Ingrediente values('I-006', 'Carciofi', 0.3, 40)
insert into Ingrediente values('I-007', 'Posciutto cotto', 0.65, 40)
insert into Ingrediente values('I-008', 'Olive', 0.55, 30)
insert into Ingrediente values('I-009', 'Funghi porcini', 1, 20)
insert into Ingrediente values('I-010', 'Stracchino', 0.6, 10)
insert into Ingrediente values('I-011', 'Speck', 0.8, 15)
insert into Ingrediente values('I-012', 'Rucola', 0.35, 20)
insert into Ingrediente values('I-013', 'Grana', 0.7, 30)
insert into Ingrediente values('I-014', 'Verdure di stagione', 0.85, 30)
insert into Ingrediente values('I-015', 'Patate', 0.4, 15)
insert into Ingrediente values('I-016', 'Salsiccia', 0.75, 18)
insert into Ingrediente values('I-017', 'Pomodorini', 0.7, 35)
insert into Ingrediente values('I-018', 'Ricotta', 0.6, 20)
insert into Ingrediente values('I-019', 'Provola', 0.8, 10)
insert into Ingrediente values('I-020', 'Gorgonzola', 1, 12)
insert into Ingrediente values('I-021', 'Pomodoro fresco', 0.3, 42)
insert into Ingrediente values('I-022', 'Basilico', 0.5, 60)
insert into Ingrediente values('I-023', 'Bresaola', 0.9, 20)

--Marcherita
insert into PizzaIngrediente values ('P-001','I-001')
insert into PizzaIngrediente values ('P-001','I-002')
--Bufala
insert into PizzaIngrediente values ('P-002','I-001')
insert into PizzaIngrediente values ('P-002','I-003')
--Diavola
insert into PizzaIngrediente values ('P-003','I-001')
insert into PizzaIngrediente values ('P-003','I-002')
insert into PizzaIngrediente values ('P-003','I-004')
--Quattro stagioni
insert into PizzaIngrediente values ('P-004','I-001')
insert into PizzaIngrediente values ('P-004','I-002')
insert into PizzaIngrediente values ('P-004','I-005')
insert into PizzaIngrediente values ('P-004','I-006')
insert into PizzaIngrediente values ('P-004','I-007')
insert into PizzaIngrediente values ('P-004','I-008')
--Porcini
insert into PizzaIngrediente values ('P-005','I-001')
insert into PizzaIngrediente values ('P-005','I-002')
insert into PizzaIngrediente values ('P-005','I-009')
--Dionisio
insert into PizzaIngrediente values ('P-006','I-001')
insert into PizzaIngrediente values ('P-006','I-002')
insert into PizzaIngrediente values ('P-006','I-010')
insert into PizzaIngrediente values ('P-006','I-011')
insert into PizzaIngrediente values ('P-006','I-012')
insert into PizzaIngrediente values ('P-006','I-013')
--Ortolana
insert into PizzaIngrediente values ('P-007','I-001')
insert into PizzaIngrediente values ('P-007','I-002')
insert into PizzaIngrediente values ('P-007','I-014')
--Patate e salsiccia
insert into PizzaIngrediente values ('P-008','I-002')
insert into PizzaIngrediente values ('P-008','I-015')
insert into PizzaIngrediente values ('P-008','I-016')
--Pomodorini
insert into PizzaIngrediente values ('P-009','I-002')
insert into PizzaIngrediente values ('P-009','I-017')
insert into PizzaIngrediente values ('P-009','I-018')
--Quattro formaggi
insert into PizzaIngrediente values ('P-010','I-002')
insert into PizzaIngrediente values ('P-010','I-019')
insert into PizzaIngrediente values ('P-010','I-020')
insert into PizzaIngrediente values ('P-010','I-013')
--Caprese
insert into PizzaIngrediente values ('P-011','I-002')
insert into PizzaIngrediente values ('P-011','I-021')
insert into PizzaIngrediente values ('P-011','I-022')
--Zeus
insert into PizzaIngrediente values ('P-012','I-002')
insert into PizzaIngrediente values ('P-012','I-023')
insert into PizzaIngrediente values ('P-012','I-012')


--=================PROCEDURE=====================

--1. Inserimento pizza (problema con la generazione di un codice univoco avendolo def varchar con limite di 5 caratteri)
create procedure InserimentoPizza
@NomePizza varchar(30),
@PrezzoPizza decimal(4,2)
as begin
	begin try 
		insert into Pizza values (SUBSTRING(CONVERT(VARCHAR(255), NEWID()),1,5), @NomePizza, @PrezzoPizza)
	end try
	begin catch
		SELECT ERROR_LINE(), ERROR_MESSAGE(), ERROR_SEVERITY()
	end catch
end

exec InserimentoPizza 'Pizza prova 2', 10
select* from pizza

--2. Assegnazione ingrediente
create procedure AssegnazioneIngrediente
@Codice_Pizza varchar(5),
@Codice_Ingrediente varchar(5)
as begin
	begin try
		insert into PizzaIngrediente values (@Codice_Pizza, @Codice_Ingrediente)
	end try
	begin catch
		SELECT ERROR_LINE(), ERROR_MESSAGE(), ERROR_SEVERITY()
	end catch
end

exec AssegnazioneIngrediente 'P-001', 'I-008'

--3. Eliminazione ingrediente
create procedure EliminazioneIngredienteDaPizza
@Codice_Pizza varchar(5),
@Codice_Ingrediente varchar(5)
as begin
	begin try
		delete from PizzaIngrediente where Codice_Pizza=@Codice_Pizza and Codice_Ingrediente=@Codice_Ingrediente
	end try
	begin catch
		SELECT ERROR_LINE(), ERROR_MESSAGE(), ERROR_SEVERITY()
	end catch
end

exec EliminazioneIngredienteDaPizza 'P-001', 'I-008'

--4. Incremento prezzo
create procedure IncrementoPrezzo
@Codice_Ingrediente varchar(5)
as begin
	begin try
		update Pizza set Prezzo=Prezzo+(Prezzo*0.1) where Codice in(
		select p.Codice --recupero pizze contenenti l'ingrediente
		from Ingrediente i
		join PizzaIngrediente pin
		on i.Codice=pin.Codice_Ingrediente
		join Pizza p
		on p.Codice=pin.Codice_Pizza
		where i.Codice=@Codice_Ingrediente)
	end try
	begin catch
		SELECT ERROR_LINE(), ERROR_MESSAGE(), ERROR_SEVERITY()
	end catch
end

exec IncrementoPrezzo 'I-008'
select * from Pizza

--===================FUNZIONI====================
--1. Listino pizze ordine alfabetico
create function ListinoOrdineAlfabetico()
returns table 
as return(
select p.Codice, p.Nome as 'Pizza', p.Prezzo
from Pizza p
)

select * from dbo.ListinoOrdineAlfabetico() order by Pizza 

--2. Listino pizze con ingrediente scelto
create function ListinoConIngredienteScelto(@Codice_Ingrediente varchar(5))
returns table
as return(
select p.Nome, p.Prezzo
from Pizza p
join PizzaIngrediente pin
on p.Codice=pin.Codice_Pizza
join Ingrediente i
on pin.Codice_Ingrediente=i.Codice
where i.Codice=@Codice_Ingrediente
)

select * from dbo.ListinoConIngredienteScelto('I-001')

--3. Listino pizze senza ingrediente scelto
create function ListinoSenzaIngredienteScelto(@Codice_Ingrediente varchar(5))
returns table
as return(
select piz.Codice, piz.Nome, piz.Prezzo
from Pizza piz
where piz.Codice not in(
select p.Codice
from Pizza p
join PizzaIngrediente pin
on p.Codice=pin.Codice_Pizza
join Ingrediente i
on pin.Codice_Ingrediente=i.Codice
where i.Codice=@Codice_Ingrediente)
)

select * from dbo.ListinoSenzaIngredienteScelto('I-001')

--4. Calcolo numero pizze che contengono un ingrediente
create function QuantePizzeConIngrediente(@Codice_Ingrediente varchar(5))
returns int
as begin
	declare @result int
	select @result = count(*)
	from Pizza p
	join PizzaIngrediente pin
	on p.Codice=pin.Codice_Pizza
	join Ingrediente i
	on pin.Codice_Ingrediente=i.Codice 
	group by i.Codice
	having i.Codice=@Codice_Ingrediente
	return @result
end

select dbo.QuantePizzeConIngrediente('I-001') as 'Numero pizze con Ingrediente'

--5. Calcolo numero pizze che non contengono un ingrediente
create function QuantePizzeSenzaIngrediente(@Codice_Ingrediente varchar(5))
returns int
as begin
	declare @result int
	select @result = count(*)
	from Pizza piz
	where piz.Codice not in( 
		select p.Codice
		from Pizza p
		join PizzaIngrediente pin
		on p.Codice=pin.Codice_Pizza
		join Ingrediente i
		on pin.Codice_Ingrediente=i.Codice and i.Codice=@Codice_Ingrediente
		)
	return @result
end

select dbo.QuantePizzeSenzaIngrediente('I-001') as 'Numero pizze senza Ingrediente'

--6. Numero ingredienti in una pizza
create function QuantiIngredienti(@Codice_Pizza varchar(5))
returns int
as begin
	declare @result int
	select @result = count(*)
	from Pizza p
	join PizzaIngrediente pin
	on p.Codice= pin.Codice_Pizza
	join Ingrediente i
	on i.Codice=pin.Codice_Ingrediente
	group by p.Codice
	having p.Codice=@Codice_Pizza
	return @result
end

select dbo.QuantiIngredienti('P-001') as 'Numero ingredienti'
--==========view============

create view Menu as(
select p.Nome as 'Pizza', i.Nome as 'Ingredienti', p.Prezzo as 'Prezzo Pizza'
from Pizza p
join PizzaIngrediente pin
on p.Codice=pin.Codice_Pizza
join Ingrediente i
on pin.Codice_Ingrediente=i.Codice
)

--da qui prove varie per sistemare la view
select * from dbo.GetIngredientiByPizza('P-001')

create function GetIngredientiByPizza(@Codice_Pizza varchar(5))
returns table
as return(
select i.Nome
from Pizza p
join PizzaIngrediente pin
on pin.Codice_Pizza = p.Codice
join Ingrediente i
on i.Codice=pin.Codice_Ingrediente
where p.Codice=@Codice_Pizza
)