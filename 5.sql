select
employee.firstname || ' ' ||
employee.lastname || ' is ' ||
(strftime('%Y', 'now') - strftime('%Y', employee.birthdate)) || ' years old'
from employee
where reportsto is null;