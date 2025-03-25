<h1>1.Hafta Ödevi</h1>

<h3>Amaç</h3>
Bu proje ödevinin amacı, SQL sorgularını kullanarak veritabanı tablolarında veri seçme, filtreleme,
sıralama ve birleştirme işlemleri yapma becerilerinizi geliştirmektir.
<hr>
<h3>Görevler</h3>
<p>1. Belirli Kolonları Seçme : Çalışanların sadece FirstName, LastName ve Salary bilgilerini getiren bir SQL sorgusu yazınız.</p>
<p>2. DISTINCT Komutu ile Tekrarları Önleme : Çalışanların çalıştıkları departmanları benzersiz olarak listeleyen bir SQL sorgusu yazınız.</p>
<p>3. Belirli Bir Departmana Ait Çalışanları Listeleme : Sadece IT departmanında çalışanların bilgilerini getiren bir SQL sorgusu yazınız.</p>
<p>4. Maaşa Göre Sıralama : Çalışanları maaşlarına göre büyükten küçüğe sıralayan bir SQL sorgusu yazınız.</p>
<p>5. Kolonları Birleştirme (Concatenation) : Çalışanların FirstName ve LastName alanlarını birleştirerek, tam adlarını içeren yeni bir kolon
oluşturan bir SQL sorgusu yazınız.</p>
<hr>
<h3>Kullanılacak Veritabanı ve Tablolar</h3>
Employees Tablosu
<table border="1">
        <tr Style="font-weight:Bold">
            <td>EmployeeID</td>
            <td>FirstName</td>
            <td>LastName<br/></td>
            <td>Age</td>
            <td>Department</td>
            <td>Salary</td>
            <td>JoinDate</td>
        </tr>
        <tr>
            <td>1</td>
            <td>John</td>
            <td>Doe<br/></td>
            <td>30</td>
            <td>IT</td>
            <td>55000</td>
            <td>2020-01-15</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Jane</td>
            <td>Smith<br/></td>
            <td>45</td>
            <td>HR</td>
            <td>65000</td>
            <td>2018-07-20</td>
        </tr>
      <tr>
            <td>3</td>
            <td>Sam</td>
            <td>Brown<br/></td>
            <td>28</td>
            <td>IT</td>
            <td>52000</td>
            <td>2021-11-05</td>
        </tr>
      <tr>
            <td>4</td>
            <td>Lisa</td>
            <td>White<br/></td>
            <td>35</td>
            <td>Finance</td>
            <td>70000</td>
            <td>2019-03-18</td>
        </tr>
      <tr>
            <td>5</td>
            <td>Mark</td>
            <td>Black<br/></td>
            <td>50</td>
            <td>IT</td>
            <td>75000</td>
            <td>2017-10-10</td>
        </tr>
      <tr>
            <td>6</td>
            <td>Lucy</td>
            <td>Green<br/></td>
            <td>40</td>
            <td>HR</td>
            <td>600000</td>
            <td>2017-10-10</td>
        </tr>
</table>
Departments Tablosu

<table>
  <tr>
    <td>DepartmentID</td>
    <td>DepartmentName</td>
  </tr>
  <tr>
    <td>1</td>
    <td>IT</td>
  </tr>
  <tr>
    <td>2</td>
    <td>HR</td>
  </tr>
  <tr>
    <td>3</td>
    <td>Finance</td>
  </tr>
</table>
<hr>

<h3>Tablo Oluşturma Komutları</h3>
<pre>
--Departments tablosunun oluşturulması ve veri eklenmesi
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

-- Employees tablosunun oluşturulması ve veri eklenmesi
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT,
    DepartmentID INT,
    Salary DECIMAL(10,2),
    JoinDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Age, DepartmentID, Salary, JoinDate) VALUES
(1, 'John', 'Doe', 30, 1, 55000, '2020-01-15'),
(2, 'Jane', 'Smith', 45, 2, 65000, '2018-07-20'),
(3, 'Sam', 'Brown', 28, 1, 52000, '2021-04-25'),
(4, 'Lisa', 'White', 35, 3, 70000, '2019-03-18'),
(5, 'Mark', 'Black', 50, 1, 75000, '2015-11-05'),
(6, 'Lucy', 'Green', 40, 2, 60000, '2017-10-10');
</pre>
<hr>


