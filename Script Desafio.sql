-- 1
 select Nome, Ano from Filmes

-- 2
  select Nome, Ano from Filmes 
  order by Ano asc

-- 3
 select Nome, Ano, Duracao from Filmes 
 where Nome = 'De Volta para o Futuro'

-- 4
 select * from Filmes 
 where Ano = 1997

-- 5
 select * from Filmes 
 where Ano > 2000

-- 6
 select * from Filmes
 where Duracao > 100 and Duracao < 150
 order by Duracao asc

-- 7
 select Ano, count(Id) Quantidade from Filmes
 group by Ano
 order by Quantidade  desc

-- 8
 select Id, PrimeiroNome, UltimoNome, Genero from Atores
 where Genero = 'M'

-- 9
 select Id, PrimeiroNome, UltimoNome, Genero from Atores
 where Genero = 'F'
 order by PrimeiroNome

-- 10
 select f.Nome Nome, g.Genero Genero from Filmes f
 join FilmesGenero fg on fg.IdFilme = f.Id
 join Generos g on g.Id = fg.IdGenero

-- 11
 select f.Nome Nome, g.Genero from Filmes f
 join FilmesGenero fg on fg.IdFilme = f.Id
 join Generos g on g.Id = fg.IdGenero
 where g.Genero = 'Mistério'

-- 12
 select f.Nome Nome, a.PrimeiroNome PrimeiroNome, a.UltimoNome UltimoNome, ef.Papel Papel from ElencoFilme ef 
 join Atores a on a.Id = ef.IdAtor
 join Filmes f on f.Id = ef.IdFilme
