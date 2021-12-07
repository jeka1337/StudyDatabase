--7.	Показать комбинированный список таблиц HumanResources.Department, HumanResources.EmployeeDepartmentHistory
--по полям DepartmentID, ModifiedDate, используя UNION.
SELECT DepartmentID, ModifiedDate
FROM HumanResources.Department
UNION
SELECT DepartmentID, ModifiedDate
FROM HumanResources.EmployeeDepartmentHistory