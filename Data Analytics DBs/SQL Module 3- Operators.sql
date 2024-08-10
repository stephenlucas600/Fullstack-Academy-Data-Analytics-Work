/*As a new Data Analyst you have been given the task of creating a report for the company
 * to determine if Artists have sold any records. 
 * You are not too familiar with the database so you need to understand what kind of data is available.
 * 
 * 1. In DBeaver, review the tables that are available
 * 2. Write a query to see all columns and rows for the tables that may be relevant to the report.
 * 3. List the tables you have chosen for the report  and state your reason why.
 */ 

/*
 * aldkjakldfjlsdjkflasjgtoeiowirlkjrlij
 */

select *
from artist;

select *
from album;

select *
from invoiceline;

Select *
from track;



--All artists who sold tracks and those who didn't
Select Artist.name, Sum(invoiceline.Quantity) as TotalSold 
From Artist 
Left Join Album on album.artistId = artist.ArtistId 
Left join Track on track.albumid = album.AlbumId 
Left join InvoiceLine on invoiceline.TrackId = Track.TrackId
Group by Artist.Name
order by TotalSold Desc;

--Only artists who sold tracks
Select Artist.name, Sum(invoiceline.Quantity) as TotalSold 
From Artist 
Inner Join Album on album.artistId = artist.ArtistId 
Inner join Track on track.albumid = album.AlbumId 
Inner join InvoiceLine on invoiceline.TrackId = Track.TrackId
Group by Artist.Name 
order by TotalSold Desc;


--All artists return using NOT NULL
Select Artist.name, Sum(invoiceline.Quantity) as TotalSold 
From Artist 
Left Join Album on album.ArtistId = artist.ArtistId 
Left join Track on track.albumid = album.AlbumId 
Left join InvoiceLine on invoiceline.TrackId = Track.TrackId
Where invoiceline.quantity is not null
Group by Artist.Name 
order by TotalSold Desc;


--All artists return using NULL
Select Artist.name, Sum(invoiceline.Quantity) as TotalSold 
From Artist 
Left Join Album on album.ArtistId = artist.ArtistId 
Left join Track on track.albumid = album.AlbumId 
Left join InvoiceLine on invoiceline.TrackId = Track.TrackId
Where invoiceline.quantity is null
Group by Artist.Name 
order by TotalSold Desc;

--Where clause with AND
Select firstname, lastname, city, state, country
From Customer 
Where Country = 'USA' and  City = 'Chicago';


---Where clause with OR
Select firstname, lastname, city, state, country
From Customer 
Where Country = 'USA' 
or  
City = 'Rio De Janeiro';

---Where clause with NOT
Select firstname, lastname, city, state, country
From Customer 
Where NOT Country = 'Brazil' 

---Where clause with BETWEEN 
Select firstname, lastname, city, state, country
From Customer
Where Country Between 'Mexico' and 'USA';


---Where clause with NULL 
Select firstname, lastname, city, state, country
From Customer
Where State is NULL;

---Where clause with NOT NULL 
Select firstname, lastname, city, state, country
From Customer
Where State is NOT NULL;

---Where clause with IN 
Select firstname, lastname, city, state, country
From Customer
Where State in ('NY', 'MI', 'MA');

---Where clause with NOT IN 
Select firstname, lastname, city, state, country
From Customer
Where State NOT IN ('NY', 'MI', 'MA');




