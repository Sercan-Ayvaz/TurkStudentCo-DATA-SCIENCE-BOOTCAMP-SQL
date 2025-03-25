-- Soru 1)
select billing_state, sum(total) from invoice 
	where billing_country = 'USA' and EXTRACT(YEAR FROM invoice_date) = 2009 group by billing_state;

-- Soru 2)
select * from track as t
	inner join playlisttrack as plt on plt.track_id = t.track_id
	inner join playlist as pl on plt.playlist_id = pl.playlist_id;


-- Soru 3)
select a.title as Album_Adi,t.name as Album_Parcalari,art.name as Sanatci,t.milliseconds from track as t
	inner join album as a on t.album_id = a.album_id
	inner join artist as art on a.artist_id = art.artist_id where a.title = 'Let There Be Rock' order by t.milliseconds Desc;