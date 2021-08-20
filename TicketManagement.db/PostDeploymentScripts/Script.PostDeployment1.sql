/*
Шаблон скрипта после развертывания							
--------------------------------------------------------------------------------------
 В данном файле содержатся инструкции SQL, которые будут добавлены в скрипт построения.		
 Используйте синтаксис SQLCMD для включения файла в скрипт после развертывания.			
 Пример:      :r .\myfile.sql								
 Используйте синтаксис SQLCMD для создания ссылки на переменную в скрипте после развертывания.		
 Пример:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
if not exists (select * from dbo.Person where Name ='Sasha' and Country ='Ukraine' and  TicketsCount ='2' and Phone ='0669705219' )
begin
INSERT INTO dbo.Person(Name, Country, TicketsCount, Phone)
VALUES ('Sasha','Ukraine','2','0669705219');
end
if not exists (select * from dbo.Tickets where Destination ='Mykolaiv' and Price ='500' and  Date ='20.08.2021' and PersonId =1 )
begin
INSERT INTO dbo.Tickets(Destination, Price, Date, PersonId)
VALUES ('Mykolaiv','500','20.08.2021',1);
end  



