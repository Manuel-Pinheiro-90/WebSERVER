
-- A Visualizza tutti gli impiegati oltre i 29 anni

SELECT * FROM IMPIEGATO WHERE Eta>29

-- B Visualizza tutti gli impiegati con un reddito di almeno 800 euro mensili

SELECT * FROM IMPIEGATO WHERE RedditoMensile >= 800

-- C Impiegati con detrazione fiscale 

SELECT * FROM IMPIEGATO WHERE DetrazioneFiscale = 1

-- D impiegati senza detrazione

SELECT * FROM IMPIEGATO WHERE DetrazioneFiscale = 0

-- E Visualizzare tutti gli impiegati cui il cognome cominci con una lettera G e li visualizzi in ordine alfabetico

SELECT * 
FROM
IMPIEGATO 
WHERE Cognome LIKE 'G%'
ORDER BY Cognome;

-- F Visualizzare il numero totale degli impiegati registrati nella base dati;  

SELECT COUNT(*) AS [numero sciagurati] 
from 
IMPIEGATO


-- G  Visualizzare il totale dei redditi mensili di tutti gli impiegati:

SELECT SUM(RedditoMensile) AS [Soldi al mese di sti poracci]
FROM IMPIEGATO


--H  Visualizzare la media dei redditi mensili di tutti gli impiegati;  

SELECT AVG(RedditoMensile) AS [Media soldini di tutti] From IMPIEGATO

--I Visualizzare l’importo del reddito mensile maggiore 

SELECT MAX (RedditoMensile) AS [reddito maggiore in azienda (pensa te)] From IMPIEGATO


-- J Visualizzare l’importo del reddito mensile minore
SELECT MIN (RedditoMensile) As [redditominore] from IMPIEGATO


-- k Visualizzare gli impiegati assunti dall’2008-01-01    al   2015-01-01 (ho cambiato la data perchè l'ho vista dopo e non volevo cambiarla a tutti gli utenti)

SELECT 
CONCAT(I.Nome, '',I.Cognome,'', p.Assunzione) as [Dipendenti assunti in quest'arco di tempo]
FROM IMPIEGATO as I
 JOIN IMPIEGO as p ON I.IDImpiegato = p.IDImpiegato                          
where p.Assunzione BETWEEN '2008-01-01' AND '2015-01-01' 



-- L Tramite una query parametrica che identifichi il tipo di impiego, visualizzare tutti gli impiegati che corrispondono a 


SELECT 
CONCAT(I.Nome, ' ', I.Cognome, ' - ', I.CodiceFiscale) AS DettagliImpiegato, 
P.TipoImpiego
FROM IMPIEGATO I 
Join IMPIEGO P ON I.IDImpiegato = p.IDImpiegato
where p.TipoImpiego = 'Developer'


-- M visualizza età media lavoratori in azienda

SELECT
AVG(Eta) as [ età media] 
FROM IMPIEGATO