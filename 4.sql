select track.name 
from track left join invoiceline 
on invoiceline.trackid = track.trackid 
where invoicelineid is null
order by track.name;