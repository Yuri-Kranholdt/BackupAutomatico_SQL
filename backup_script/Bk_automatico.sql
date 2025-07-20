
-- USAR COM SCRIPT BAT PARA USAR SQLCMD E DPS USAR O ARQUIVO NO AGENDADOR DE TAREFAS DO WINDOWS

DECLARE @data as varchar(10)
DECLARE @caminho as varchar(255)
DECLARE @nome_bk as varchar(255)
DECLARE @extensao as varchar(5)
DECLARE @bd as varchar(50)
DECLARE @comando as varchar(255)
DECLARE @destino as varchar(30)
DECLARE @SQL VARCHAR(MAX)
SET @data=replace(convert(varchar(20),getdate() ,103),'/','')
SET @caminho='C:\Curso_Sql\Database\Backup\'
SET @nome_bk='AUTO_BK-FULL-'
SET @extensao='.BAK'''
SET @bd='AULA_BK'
SET @comando='BACKUP DATABASE ' 
SET @destino=' TO DISK =N'''
--SINTAXE 
--BACKUP DATABASE AULA_BK TO DISK =N'C:\Cursos\Database\BK\AULA_BK-FULL-28092017.BAK'
--PRINT @comando+@bd+@destino+@caminho+@nome_bk+@data+@extensao
SET @SQL=@comando+@bd+@destino+@caminho+@nome_bk+@data+@extensao
EXEC(@SQL)

