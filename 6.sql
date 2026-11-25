select employee.lastname, employee.firstname, ifnull(sum(invoice.total), 0)
from employee left join customer
on employee.employeeid = customer.supportrepid
left join invoice on customer.customerid = invoice.customerid
group by employee.employeeid
order by (sum(invoice.total)) desc,
employee.employeeid asc;