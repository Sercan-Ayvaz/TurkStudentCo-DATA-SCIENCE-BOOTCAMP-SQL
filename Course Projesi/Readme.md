  # TurkStudentCo Data Scince Bootcamp PostgreSQL Veritabanı Final Projesi


  Bu proje, TurkStudentCo Data Scince Bootcamp Veri Tabanı Final projesidir. 

  ## Proje Amacı
  
  Bu projede, çevrimiçi eğitim platformunda kullanıcıların ve eğitim içeriklerinin yönetilmesi için veritabanı şeması tasarlanmıştır.
  Platformdaki kullanıcılar, kurslara katılabilir, sertifika alabilir ve blog yazıları oluşturabilirler. 
  Tasarım, PostgreSQL’in güçlü özelliklerini kullanarak çok sayıda ilişkiyi ve veri bütünlüğünü sağlamaktadır.

  ## Proje Hedefleri
  
  - Veritabanı Şeması Tasarımı: Çevrimiçi eğitim platformunun işleyişini simüle eden bir veritabanı şeması oluşturmak. Bu şema, üyeler, eğitimler, sertifikalar, katılımlar, blog yazıları gibi temel özellikleri içermelidir.
  - Veri İlişkileri Kurma: Tablolar arasındaki ilişkileri (Birincil Anahtar, Yabancı Anahtar) doğru şekilde tanımlamak ve ilişkilerin bütünlüğünü sağlamak.
  - PostgreSQL Kullanımı: Veritabanı yönetim sistemi olarak PostgreSQL kullanarak, veri yönetimini ve sorgulama işlemlerini optimize etmek.
  - Sertifika Yönetimi: Kullanıcıların tamamladıkları eğitimlere sertifika atanmasını sağlayacak bir sistem oluşturmak.
  - Kullanıcı Etkileşimi: Kullanıcıların blog yazıları oluşturmasına olanak tanıyacak bir yapının tasarlanması.

  ## Görevler
  - Veritabanı Tabloları Tasarlama:
    - Üyeler (Members)
    - Eğitimler (Courses)
    - Kategoriler (Categories)
    - Katılımlar (Enrollments)
    - Sertifikalar (Certificates)
    - Sertifika Atamaları (CertificateAssignments)
    - Blog Gönderileri (BlogPosts)
  - İlişkiler ve Anahtarlar:
    - Birincil Anahtar (PK) ve Yabancı Anahtar (FK) ilişkilerini doğru bir şekilde tanımlamak.
    - Veri bütünlüğünü sağlamak için Tekil Anahtar (UK) ve Not Null kısıtlamalarını eklemek.
  - Veritabanı Desteği ve Sorgulama:
    - SQL dosyalarını yazmak ve test etmek.
    - PostgreSQL’in özelliklerini kullanarak veri entegrasyonu ve sorgulama yapmak.
  - ER Diyagramı ve Görselleştirme:
    - Veritabanı yapısını görsel olarak açıklayan bir ER diyagramı oluşturmak.
    - Diyagramda tablolardaki sütun adlarını ve veri türlerini göstermek.
  - GitHub Deposu Oluşturma:
    - Projeyi GitHub’a yükleyip, gerekli açıklamaları ve dosyaları eklemek.
  - Test ve Hata Giderme:
    - Oluşturulan SQL dosyasını test etmek ve hatasız çalışmasını sağlamak.
    - Herhangi bir hata durumunda düzenlemeler yaparak projenin verimli çalışmasını sağlamak.
      
  ## Değerlendirme Kriterleri
  Proje, aşağıdaki kriterlere göre değerlendirilecektir:
  1. Veritabanı Tasarımının Doğruluğu ve Tutarlılığı:
     - Veritabanı tasarımının gereksinimleri doğru bir şekilde karşıladığı ve mantıklı bir yapıya sahip olduğu değerlendirilir.
     - Veritabanı ilişkilerinin doğru bir şekilde kurulduğu ve veri bütünlüğünün sağlandığına bakılır.
  3. İhtiyaçlara Uygun Tabloların ve İlişkilerin Modellenmesi:
     - Tabloların gereksinimlere uygun şekilde oluşturulmuş olması ve doğru ilişkilerin (Birincil Anahtar, Yabancı Anahtar, Tekil Anahtar vb.) kullanılması beklenir.
  3. Birincil Anahtar (PK), Yabancı Anahtar (FK) ve Tekil Anahtar (UK) Kısıtlamalarının Doğru ve Etkin Kullanımı:
     - Her tablonun doğru birincil anahtara (PK) ve uygun yabancı anahtarlara (FK) sahip olması gerekmektedir.
     - Tekil anahtarların (UK) doğru kullanımı ve ilişkilerin düzgün bir şekilde kurulduğu değerlendirilir.
  4. Sütunlar İçin Uygun Veri Tiplerinin Seçilmesi:
     - Her sütun için en uygun veri tipi seçilmeli ve veri tutarlılığı sağlanmalıdır.
  5. Oluşturulan .sql Dosyasının Hatasız Çalışabilir Olması:
     - SQL dosyasının doğru çalışması, tüm tabloların oluşturulması ve ilişkilerin sağlanması gerekmektedir.
     - Hatalar ve eksiklikler olmamalıdır.
  6. Veritabanı Şemasının Anlaşılır ve Doğru Bir Şekilde Görselleştirilmesi:
     - ER diyagramı ile veritabanı şemasının doğru ve açık bir şekilde görselleştirilmesi beklenir.
     - Şema, tüm tabloların ve ilişkilerin doğru bir şekilde gösterilmesini sağlamalıdır.
  7. GitHub Kullanımının Doğru Olması:
     - GitHub üzerinden doğru repo oluşturulması, dosyaların düzenli bir şekilde yüklenmesi ve repo bağlantısının paylaşılması gerekmektedir.
     - Repo’nun public yapılması, proje tesliminden önce güncel tutulması önemlidir.

  ## Tablolar ve İlişkiler

  1. Ülke (country)

  |Sütun Adı | Veri Tipi | Açıklama|
  | --- | --- | --- |
  |country_id | int (identity) | Ülke kimliği (PK)|
  |country_name | varchar(150) | Ülke adı|
  |country_code | char(2) | Ülke kodu (benzersiz)|
  |phone_code | varchar(15) | Ülke telefon kodu|
  
  2. Üyeler (members)

  |Sütun Adı | Veri Tipi | Açıklama|
  | --- | --- | --- |
  |member_id | BIGSERIAL | Üye kimliği (PK)|
  |name | VARCHAR(50) | Üye adı|
  |surname | VARCHAR(50) | Üye soyadı|
  |user_name | VARCHAR(50) | Kullanıcı adı (benzersiz)|
  |email | VARCHAR(100) | E-posta adresi (benzersiz)|
  |password | VARCHAR(255) | Şifre (min 8 karakter)|
  |country_id | int | Ülke ID (FK)|
  |registration | TIMESTAMPTZ | Kayıt tarihi|
  |is_active | BOOLEAN | Aktiflik durumu|

  3. Sertifikalar (certificates)
     
  |Sütun Adı | Veri Tipi | Açıklama|
  | --- | --- | --- |
  |certificate_id | BIGSERIAL | Sertifika kimliği (PK)|
  |certificate_code | VARCHAR(50) | Benzersiz sertifika kodu|

  4. Sertifika Atamaları (certificates_assignments)

  |Sütun Adı | Veri Tipi | Açıklama|
  | --- | --- | --- |
  |certificates_assignments_id | BIGSERIAL | Atama kimliği (PK)|
  |member_id | BIGINT | Üye ID (FK)|
  |certificate_id | BIGINT | Sertifika ID (FK)|
  |date_of_issue | DATE | Veriliş tarihi|

  5. Yazar (author)

  |Sütun Adı | Veri Tipi | Açıklama|
  | --- | --- | --- |
  |author_id | SERIAL | Yazar ID (PK)|
  |name | VARCHAR(100) | Yazar adı|
  |surname | VARCHAR(100) | Yazar soyadı|
  |birthday | DATE | Doğum tarihi|
  |country_id | INT | Ülke ID (FK)|
  |email | VARCHAR(100) | E-posta (benzersiz)|
  |biography | TEXT | Biyografi|
  |creation_date | TIMESTAMPTZ | Oluşturulma tarihi|
 
  6. Blog Gönderileri (blogpost)

  |Sütun Adı | Veri Tipi | Açıklama|
  | --- | --- | --- |
  |blogpost_id | BIGSERIAL | Blog ID (PK)|
  |title | VARCHAR(255) | Başlık|
  |contents | TEXT | İçerik|
  |publication_date | TIMESTAMPTZ | Yayın tarihi|
  |author_id | INT | Yazar ID (FK)|
  |status | VARCHAR(20) | Durum: 'draft', 'published', 'archived'|

  7. Dal (branch)

  |Sütun Adı | Veri Tipi | Açıklama|
  | --- | --- | --- |
  |branch_id | SERIAL | Dal ID (PK)|
  |branch_name | VARCHAR(100) | Dal adı (benzersiz)|
  |is_active | BOOLEAN | Aktiflik durumu|

  8. Eğitmen (instructor)

  |Sütun Adı | Veri Tipi | Açıklama|
  | --- | --- | --- |
  |instructor_id | SERIAL | Eğitmen ID (PK)|
  |name | VARCHAR(50) | Adı|
  |surname | VARCHAR(50) | Soyadı|
  |email | VARCHAR(100) | E-posta (benzersiz)|
  |phone | VARCHAR(20) | Telefon|
  |country_id | INT | Ülke ID (FK)|
  |branch_id | INT | Dal ID (FK)|
  |is_active | BOOLEAN | Aktiflik|
  |hire_date | DATE | İşe giriş tarihi|

  9. Kategoriler (categories)

  |Sütun Adı | Veri Tipi | Açıklama|
  | --- | --- | --- |
  |category_id | SERIAL | Kategori ID (PK)|
  |artificial_intelligence | VARCHAR(100) | Yapay zeka kategorisi|
  |blockchain | VARCHAR(100) | Blockchain kategorisi|
  |cyber_security | VARCHAR(100) | Siber güvenlik kategorisi|

  10. Kurs (course)

  |Sütun Adı | Veri Tipi | Açıklama|
  | --- | --- | --- |
  |course_id | SERIAL | Kurs ID (PK)|
  |course_name | VARCHAR(200) | Kurs adı|
  |course_code | VARCHAR(20) | Kurs kodu (benzersiz)|
  |explanation | TEXT | Açıklama|
  |course_start_date | DATE | Başlangıç tarihi|
  |course_end_date | DATE | Bitiş tarihi|
  |category_id | INT | Kategori ID (FK)|
  |instructor_id | INT | Eğitmen ID (FK)|
  |price | DECIMAL(10,2) | Ücret|
  |is_active | BOOLEAN | Aktiflik|
  |created_at | TIMESTAMPTZ | Oluşturulma zamanı|

  11. Kayıtlar (enrollments)

  |Sütun Adı | Veri Tipi | Açıklama|
  | --- | --- | --- |
  |enrollment_id | BIGSERIAL | Kayıt ID (PK)|
  |member_id | BIGINT | Üye ID (FK)|
  |course_id | INT | Kurs ID (FK)|
  |enrollment_date | TIMESTAMPTZ | Kayıt tarihi|

  ## ER Diyagramı
  

<img src="https://github.com/Sercan-Ayvaz/TurkStudentCo-DATA-SCIENCE-BOOTCAMP-SQL/blob/main/Course%20Projesi/er_diagram.PNG" alt="Schema">

  


  ## PostgreSQL Komutlarıyla Veritabanı Kurulumu
  Bu bölümde, veritabanını psql komut satırı aracını veya pgAdmin aracını kullanarak nasıl oluşturacağınız ve SQL dosyalarınızı nasıl çalıştıracağınız anlatılacaktır. Aşağıdaki adımları takip edin.

1. Veritabanını Silme (Varsa)
    İlk adım olarak, mevcut bir Course veritabanı varsa, bunu silmelisiniz. Bunun için şu komutu kullanın:

    ```DROP DATABASE IF EXISTS Course;```

    Açıklama: Bu komut, eğer Course veritabanı zaten varsa onu siler. Bu adım, veritabanını sıfırdan oluşturmanıza olanak sağlar.

2. Veritabanı Bağlantısı Kontrolü
    Veritabanı bağlantınızı kontrol etmek için aşağıdaki komutu kullanabilirsiniz:
  
    ```\conninfo```

    Açıklama: Bu komut, mevcut veritabanı bağlantınızı ve bağlantının detaylarını gösterir. Eğer bağlantınız doğruysa, aşağıdaki adımlara geçebilirsiniz.

3. Tüm Veritabanlarını Listeleme
    Tüm mevcut veritabanlarını listelemek için şu komutu kullanın:

    ```\l```
  
    Açıklama: Bu komut, PostgreSQL sunucusundaki mevcut veritabanlarını listeleyecektir. Buradan Course veritabanınızın olup olmadığını kontrol edebilirsiniz.

4. Veritabanını Yaratma ve SQL Dosyalarını Çalıştırma
    Veritabanınızı sıfırdan oluşturmak için önce gerekli SQL dosyalarını çalıştırmanız gerekir. Bunun için aşağıdaki adımları izleyin:

    a. Veritabanını Oluşturun
      Eğer veritabanınız henüz yoksa, onu oluşturmalısınız. Bu adım için aşağıdaki komutu çalıştırın:

      ```\i 'C:\\Users\\user\\Desktop\\Course_Projesi\\course_database_create.sql'```

      Açıklama: Bu komut, course_database_create.sql dosyasındaki SQL komutlarını çalıştırarak veritabanınızı oluşturur. Bu dosya, veritabanı yapısının temelini atmaktadır.

    b. Veritabanını Seçin ve Bağlantı Kurun
      Veritabanını seçmek için şu komutu kullanın:

   	```\c course```
  
      Açıklama: Bu komut, course veritabanına bağlanmanızı sağlar. Veritabanı adını doğru yazdığınızdan emin olun.

    c. Veritabanı Şemasını Yükleyin
      Veritabanı şemasını yüklemek için aşağıdaki komutu kullanın:

      ```\i 'C:\\Users\\user\\Desktop\\Course_Projesi\\Course_schema.sql'```

      Açıklama: Bu komut, Course_schema.sql dosyasındaki SQL komutlarını çalıştırarak tabloları ve ilişkileri oluşturur. Bu dosya, veritabanınızın şemasını belirler.

    d. Veri Ekleme
      Son olarak, eğitim platformunun örnek verilerini eklemek için aşağıdaki komutu kullanın:

      ```\i 'C:\\Users\\user\\Desktop\\Course_Projesi\\Course_data.sql'```


      Açıklama: Bu komut, Course_data.sql dosyasındaki verileri veritabanına ekler. Bu veri, tablolarda çeşitli kayıtları oluşturur ve sisteminizi test etmenizi sağlar.

6. pgAdmin Kullanarak SQL Dosyalarını Yükleme
    pgAdmin üzerinden işlem yaparken şu adımları takip edebilirsiniz:

    a. pgAdmin ile Bağlantı Kurma
      - pgAdmin'i açın ve PostgreSQL sunucusuna bağlanın.

    b. Yeni Veritabanı Oluşturma
      - pgAdmin ana ekranında, Databases üzerinde sağ tıklayın ve Create > Database seçeneğini seçin.
      - Veritabanı adını course olarak belirleyin.
      - Diğer ayarları varsayılan bırakın ve Save tuşuna basın.

    c. SQL Dosyalarını Çalıştırma
      - pgAdmin'in üst kısmındaki Query Tool'u açın.
    Aşağıdaki SQL dosyalarını sırasıyla çalıştırın:
      - course_database_create.sql dosyasını çalıştırarak veritabanını oluşturun.
      - Course_schema.sql dosyasını çalıştırarak veritabanı şemasını kurun.
      - Course_data.sql dosyasını çalıştırarak verileri ekleyin.

7. Değerlendirme ve Kontrol
  Adımları tamamladıktan sonra aşağıdaki kontrolleri yapın:
    - Veritabanı ve Tablolar: course veritabanının başarılı bir şekilde oluşturulduğundan ve tüm tabloların (Üyeler, Eğitimler, Kategoriler, vb.) doğru şekilde kurulduğundan emin olun.
    - Veri Ekleme: Course_data.sql dosyasından eklediğiniz verilerin tablolara doğru şekilde yerleşip yerleşmediğini kontrol edin.
    - Bağlantılar ve İlişkiler: Veritabanı şemanızdaki ilişkilerin doğru kurulup kurulmadığını kontrol edin. Örneğin, Foreign Key (FK) ilişkileri düzgün çalışmalı ve her tablonun bir Primary Key (PK)'i olmalıdır.
  
8. Değerlendirme Sonrası Yapılması Gerekenler
    -SQL Dosyalarının Kontrolü: SQL dosyalarınızın hatasız çalışıp çalışmadığını değerlendirin. Eğer hata alıyorsanız, hata mesajlarını dikkatlice inceleyin ve gerekli düzenlemeleri yapın.

## course_database_create.sql Dosyası İçerği

```
CREATE DATABASE course
WITH ENCODING 'UTF-8'
LC_COLLATE 'tr-TR'
LC_CTYPE 'tr-TR'
TEMPLATE template0;
```

## course_schema.sql Dosyası İçerği

```
-------------------------------------------------------------------------------------
-- country tablosu oluşturma
CREATE TABLE country (
    country_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    country_name varchar(150) NOT NULL,
    country_code char(2) UNIQUE NOT NULL,
    phone_code varchar(15) NOT NULL
);
-------------------------------------------------------------------------------------
CREATE INDEX idx_country_name ON country (country_name);
CREATE INDEX idx_country_phone_code ON country (phone_code);
-------------------------------------------------------------------------------------
COMMENT ON TABLE country IS 'Ülke bilgilerini saklayan tablo';
COMMENT ON COLUMN country.country_name IS 'Ülke adlarını saklayan kolon';
COMMENT ON COLUMN country.country_code IS 'Ülke adlarının kodunu saklayan kolon';
COMMENT ON COLUMN country.phone_code IS 'Ülkelerin telefon kodlarını saklayan kolon';
-------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------
-- member tablosu oluşturma
CREATE TABLE member (
    member_id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    user_name VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL 
        CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
    password VARCHAR(255) NOT NULL 
        CHECK (length(password) >= 8),
    country_id int NOT NULL 
        REFERENCES country(country_id),
    registration TIMESTAMPTZ NOT NULL 
        DEFAULT CURRENT_TIMESTAMP,
    is_active BOOLEAN NOT NULL DEFAULT TRUE
);
-------------------------------------------------------------------------------------
CREATE INDEX idx_member_email_lower ON member (LOWER(email));
CREATE INDEX idx_member_username_lower ON member (LOWER(user_name));
-------------------------------------------------------------------------------------
COMMENT ON TABLE member IS 'Üye bilgilerini saklayan tablo';
COMMENT ON COLUMN member.name IS 'Üye adlarını saklayan kolon';
COMMENT ON COLUMN member.surname IS 'Üye soyadlarını saklayan kolon';
COMMENT ON COLUMN member.user_name IS 'Üye kullanıcı adlarını saklayan kolon';
COMMENT ON COLUMN member.email IS 'Üyelerin emaillerini saklayan kolon';
COMMENT ON COLUMN member.password IS 'Üyelerin şifrelerini saklayan kolon';
COMMENT ON COLUMN member.country_id IS '(FK) Üyelerin ülkelerini saklayan kolon';
COMMENT ON COLUMN member.registration IS 'Üyelerin kayıt zamanlarını saklayan kolon';
COMMENT ON COLUMN member.is_active IS 'Üyelerin aktifliğini saklayan kolon';
-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
-- certificates tablosu oluşturma
CREATE TABLE certificates (
    certificate_id BIGSERIAL PRIMARY KEY,
    certificate_code VARCHAR(50) UNIQUE NOT NULL
);
-------------------------------------------------------------------------------------
COMMENT ON TABLE certificates IS 'Sertifika bilgilerini saklayan tablo';
COMMENT ON COLUMN certificates.certificate_code IS '(UK) Sertifikanın benzersiz kodu';
-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
-- certificates_assignments tablosu oluşturma
CREATE TABLE certificates_assignments (
    certificates_assignments_id BIGSERIAL PRIMARY KEY,
    member_id BIGINT NOT NULL REFERENCES member(member_id),
    certificate_id BIGINT NOT NULL REFERENCES certificates(certificate_id),
    date_of_issue DATE NOT NULL,
	UNIQUE(member_id, certificate_id)
);
-------------------------------------------------------------------------------------
CREATE INDEX idx_cert_assign_member ON certificates_assignments(member_id);
CREATE INDEX idx_cert_assign_cert ON certificates_assignments(certificate_id);
-------------------------------------------------------------------------------------
COMMENT ON TABLE certificates_assignments IS 'Üyelere sertifika atamalarını takip eden tablo';
COMMENT ON COLUMN certificates_assignments.member_id IS '(FK-Unique)Sertifika atamaları talosuyla üyeler tablosu arasındaki bağlantı kurulan kolon';
COMMENT ON COLUMN certificates_assignments.certificate_id IS 'sertifika bağlantıları ile sertifika tablosu arasında bağlantı kurulan kolon';
COMMENT ON COLUMN certificates_assignments.date_of_issue IS 'Sertifikaların üyeler verildiği tairihi tutan kolon';
-------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------
-- author tablosu oluşturma
CREATE TABLE author (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    birthday DATE NOT NULL,
    country_id INT NOT NULL REFERENCES country(country_id),
    email VARCHAR(100) UNIQUE NOT NULL,
    biography TEXT NOT NULL,
    creation_date TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
    -- Email format kontrolü
    CONSTRAINT valid_email CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),    
    -- Geçerli doğum tarihi kontrolü (1900'den sonra doğmuş varsayıyoruz)
    CONSTRAINT valid_birthday CHECK (birthday > '1800-01-01' AND birthday <= CURRENT_DATE)
);
-------------------------------------------------------------------------------------
CREATE INDEX idx_author_name ON author(surname, name);
CREATE INDEX idx_author_email ON author(LOWER(email));
CREATE INDEX idx_author_country ON author(country_id);
-------------------------------------------------------------------------------------
COMMENT ON TABLE author IS 'Yazar bilgilerini içeren tablo';
COMMENT ON COLUMN author.name IS 'Yazarların ad bilgilerini saklayan kolon';
COMMENT ON COLUMN author.surname IS 'Yazarların soyad bilgilerini saklayan kolon';
COMMENT ON COLUMN author.birthday IS 'Yazarların doğum tarihlerini saklayan kolon ';
COMMENT ON COLUMN author.country_id IS '(FK) Yazarların yaşadıkları ülkeyi country tablosuyla ilişkilendiren kolon';
COMMENT ON COLUMN author.email IS '(UK) Yazarların emailllerini saklayan kolon';
COMMENT ON COLUMN author.biography IS 'Yazarların biyografilerini sakalayan kolon';
COMMENT ON COLUMN author.creation_date IS 'Yazarların tabloya kayıt tarihini gösteren kolon';
-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
-- blogpost tablosu oluşturma
CREATE TABLE blogpost (
    blogpost_id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    contents TEXT NOT NULL,
    publication_date TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    author_id INT NOT NULL REFERENCES author(author_id),
    status VARCHAR(20) NOT NULL DEFAULT 'draft' CHECK (status IN ('draft', 'published', 'archived')),
    CONSTRAINT valid_publication_date CHECK (publication_date <= CURRENT_TIMESTAMP + INTERVAL '1 hour')
);
-------------------------------------------------------------------------------------
CREATE INDEX idx_blogpost_author ON blogpost(author_id);
CREATE INDEX idx_blogpost_publication ON blogpost(publication_date DESC);
CREATE INDEX idx_blogpost_status ON blogpost(status) WHERE status = 'published';
-------------------------------------------------------------------------------------
COMMENT ON TABLE blogpost IS 'Blog yazılarını içeren tablo';
COMMENT ON COLUMN blogpost.title IS 'Yazılan blogların başlığını tutan kolondur';
COMMENT ON COLUMN blogpost.contents IS 'Yazılan blogların içeriğini tutan kolondur';
COMMENT ON COLUMN blogpost.publication_date IS 'Yazılan blogların yayımlandığı tarihi tutan kolondur.Yazılar en falza 1 saat sonrası için yayımlanma zamanı verebilir ';
COMMENT ON COLUMN blogpost.author_id IS '(FK) Yazıyı yazan yazar ile yazılan yazının ilişkisini sağlayan kolondur';
COMMENT ON COLUMN blogpost.status IS 'Yazının durumunu belirten kolonur(taslak,yayımlanmış ve arşivlenmiş)';
-------------------------------------------------------------------------------------




-------------------------------------------------------------------------------------
-- branch tablosu oluşturma
CREATE TABLE branch (
    branch_id SERIAL PRIMARY KEY,
    branch_name VARCHAR(100) UNIQUE NOT NULL,
	is_active BOOLEAN NOT NULL DEFAULT TRUE
);
-------------------------------------------------------------------------------------
CREATE INDEX idx_branch_active ON branch(is_active) WHERE is_active = TRUE;
-------------------------------------------------------------------------------------
COMMENT ON TABLE branch IS 'Dal bilgilerini içeren tablo';
COMMENT ON COLUMN branch.branch_name IS 'Dal isimleri listeleyn kolon';
COMMENT ON COLUMN branch.is_active IS 'Dalların aktif olup olmadığını listeleyn kolon';
-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
-- instructor tablosu oluşturma
CREATE TABLE instructor (
    instructor_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL 
        CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
    phone VARCHAR(20) NOT NULL,
    country_id INT NOT NULL REFERENCES country(country_id),
    branch_id INT NOT NULL REFERENCES branch(branch_id),
	is_active BOOLEAN NOT NULL DEFAULT TRUE,
    hire_date DATE NOT NULL DEFAULT CURRENT_DATE
    CONSTRAINT valid_hire_date CHECK (hire_date <= CURRENT_DATE)
);
-------------------------------------------------------------------------------------
CREATE INDEX idx_instructor_name ON instructor(surname, name);
CREATE INDEX idx_instructor_email ON instructor(LOWER(email));
CREATE INDEX idx_instructor_branch ON instructor(branch_id);
CREATE INDEX idx_instructor_active ON instructor(is_active) WHERE is_active = TRUE;
-------------------------------------------------------------------------------------
COMMENT ON TABLE instructor IS 'Eğitmen bilgilerini içeren tablo';
COMMENT ON COLUMN instructor.name IS 'Eğitmen adlarını tutan kolon';
COMMENT ON COLUMN instructor.surname IS 'Eğitmen soyadlarını tutan kolon';
COMMENT ON COLUMN instructor.email IS 'Eğitmen emaillerini tutan kolon';
COMMENT ON COLUMN instructor.phone IS 'Eğitmen telefon numaraları tutan kolon';
COMMENT ON COLUMN instructor.country_id IS 'Eğitmen tablosuyla ülke tablosunu ilişkilendiren kolon';
COMMENT ON COLUMN instructor.branch_id IS 'Eğitmen tablosuyla dal tablosunu ilişkilendiren kolon';
COMMENT ON COLUMN instructor.is_active IS 'Eğitmenlerin aktif olarak çalışanları listeleyen kolon ';
COMMENT ON COLUMN instructor.hire_date IS 'Eğitmenlerin işe alım tarihini listeleyen kolon ';
-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
-- categories tablosu oluşturma
CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    artificial_intelligence VARCHAR(100) NOT NULL,
    blockchain VARCHAR(100) NOT NULL,
    cyber_security VARCHAR(100) NOT NULL
);
-------------------------------------------------------------------------------------
COMMENT ON TABLE categories IS 'Kategori bilgilerini içeren tablo';
COMMENT ON COLUMN categories.artificial_intelligence IS 'Kategoriler tablosunda yapay zeka verisini tutan kolon';
COMMENT ON COLUMN categories.blockchain IS 'Kategoriler tablosunda blockchain verisini tutan kolon';
COMMENT ON COLUMN categories.cyber_security IS 'Kategoriler tablosunda siber güvenlik verisini tutan kolon';
-------------------------------------------------------------------------------------





-------------------------------------------------------------------------------------
-- course tablosu oluşturma
CREATE TABLE course (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(200) NOT NULL,
    course_code VARCHAR(20) UNIQUE NOT NULL,
    explanation TEXT,
    course_start_date DATE NOT NULL DEFAULT CURRENT_DATE,
    course_end_date DATE NOT NULL DEFAULT (CURRENT_DATE + INTERVAL '2 months'),
    category_id INT NOT NULL REFERENCES categories(category_id),
    instructor_id INT NOT NULL REFERENCES instructor(instructor_id),
    price DECIMAL(10, 2) CHECK (price >= 0),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT valid_course_dates CHECK (course_end_date > course_start_date),
    CONSTRAINT valid_course_code CHECK (course_code ~ '^[A-Z]{2,4}-[0-9]{3}$')
);
-------------------------------------------------------------------------------------
CREATE INDEX idx_course_category ON course(category_id);
CREATE INDEX idx_course_instructor ON course(instructor_id);
CREATE INDEX idx_course_dates ON course(course_start_date, course_end_date);
CREATE INDEX idx_course_active ON course(is_active) WHERE is_active = TRUE;
-------------------------------------------------------------------------------------
COMMENT ON TABLE course IS 'Kurs bilgilerini içeren tablo';
COMMENT ON COLUMN course.course_name IS 'Kurs adlarını listeleyen kolon';
COMMENT ON COLUMN course.course_code IS 'Benzersiz kurs kodlarını listeleyn kolon (örnek: KURS-101)';
COMMENT ON COLUMN course.explanation IS 'Kursların açıklamalarını listeleyen kolon';
COMMENT ON COLUMN course.course_start_date IS 'Kursların başlama tarihini listeleyen kolon';
COMMENT ON COLUMN course.course_end_date IS 'Kursların bitiş tarihini listeleyen kolon';
COMMENT ON COLUMN course.category_id IS '(FK) Kurs tablosu ile kategori tablosunu ilişkilendiren kolon';
COMMENT ON COLUMN course.instructor_id IS '(FK) Kurs tablosu ile eğitmen tablosunu ilişkilendiren kolon';
COMMENT ON COLUMN course.price IS 'Kursların ücretlerini listeleyen kolon';
COMMENT ON COLUMN course.is_active IS 'Kursların aktif olup olmadıklarını listeleyen kolon';
COMMENT ON COLUMN course.created_at IS 'Kursların oluşturma tarihini listeleyen kolon';

-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
-- enrollments tablosu oluşturma
CREATE TABLE enrollments (
    enrollment_id BIGSERIAL PRIMARY KEY,
    member_id BIGINT NOT NULL REFERENCES member(member_id),
    course_id INT NOT NULL REFERENCES course(course_id),
    enrollment_date TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_member_course UNIQUE (member_id, course_id)
);
-------------------------------------------------------------------------------------
CREATE INDEX idx_enrollments_member ON enrollments(member_id);
CREATE INDEX idx_enrollments_course ON enrollments(course_id);
CREATE INDEX idx_enrollments_dates ON enrollments(enrollment_date);
-------------------------------------------------------------------------------------
COMMENT ON TABLE enrollments IS 'Üyelerin kurslara kayıt bilgileri';
COMMENT ON COLUMN enrollments.member_id IS 'Kayıt tablosu ile üye tablosunu ilişkilendiren kolon';
COMMENT ON COLUMN enrollments.course_id IS 'Kayıt tablosu ile kurs tablosunu ilişkilendiren kolon';
COMMENT ON COLUMN enrollments.enrollment_date IS 'Kayıt yapılan traihi listeleyen kolon';
-------------------------------------------------------------------------------------
```

  ## course_data.sql Dosyası İçerği

```
-------------------------------------------------------------------------------------
-- country tablosuna verileri ekeleme
INSERT INTO country (country_name, country_code, phone_code) VALUES
    ('Türkiye', 'TR', '+90'),
    ('United States of America', 'US', '+1'),
    ('Germany', 'DE', '+49'),
    ('United Kingdom', 'GB', '+44'),
    ('France', 'FR', '+33'),
    ('Japan', 'JP', '+81'),
    ('China', 'CN', '+86'),
    ('Russia', 'RU', '+7'),
    ('Brazil', 'BR', '+55'),
    ('India', 'IN', '+91');
INSERT INTO country (country_name, country_code, phone_code) VALUES    
	('Italy', 'IT', '+39'),
    ('Spain', 'ES', '+34'),
    ('Canada', 'CA', '+1'),
    ('Mexico', 'MX', '+52'),
    ('South Korea', 'KR', '+82'),
    ('Australia', 'AU', '+61'),
    ('Netherlands', 'NL', '+31'),
    ('Switzerland', 'CH', '+41'),
    ('Sweden', 'SE', '+46'),
    ('Norway', 'NO', '+47');
INSERT INTO country (country_name, country_code, phone_code) VALUES    
	('Denmark', 'DK', '+45'),
    ('Finland', 'FI', '+358'),
    ('Poland', 'PL', '+48'),
    ('Portugal', 'PT', '+351'),
    ('Belgium', 'BE', '+32'),
    ('Austria', 'AT', '+43'),
    ('Greece', 'GR', '+30'),
    ('Saudi Arabia', 'SA', '+966'),
    ('United Arab Emirates', 'AE', '+971'),
    ('South Africa', 'ZA', '+27');
INSERT INTO country (country_name, country_code, phone_code) VALUES    
	('Argentina', 'AR', '+54'),
    ('Chile', 'CL', '+56'),
    ('Egypt', 'EG', '+20'),
    ('Nigeria', 'NG', '+234'),
    ('Pakistan', 'PK', '+92'),
    ('Indonesia', 'ID', '+62'),
    ('Malaysia', 'MY', '+60'),
    ('Philippines', 'PH', '+63'),
    ('Thailand', 'TH', '+66'),
    ('Vietnam', 'VN', '+84');
-------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------
-- member tablosuna verileri ekeleme
INSERT INTO member (name, surname, user_name, email, password, country_id, is_active) VALUES
    ('Ahmet', 'Yılmaz', 'ahmet.yilmaz', 'ahmet.yilmaz@example.com', 'SecurePass123', 1, TRUE),
    ('Mehmet', 'Kaya', 'mehmet.kaya', 'mehmet.kaya@example.com', 'StrongPwd456', 1, TRUE),
    ('Ayşe', 'Demir', 'ayse.demir', 'ayse.demir@example.com', 'Complex789!', 1, TRUE),
    ('John', 'Smith', 'john.smith', 'john.smith@example.com', 'JohnPass123', 2, TRUE),
    ('Emily', 'Johnson', 'emily.johnson', 'emily.johnson@example.com', 'EmilyPwd456', 2, TRUE),
    ('Hans', 'Müller', 'hans.muller', 'hans.muller@example.com', 'GermanPass1', 3, FALSE),
    ('Sophie', 'Dubois', 'sophie.dubois', 'sophie.dubois@example.com', 'FrenchPwd99', 4, TRUE),
    ('Luca', 'Rossi', 'luca.rossi', 'luca.rossi@example.com', 'ItalyPass1!', 5, TRUE),
    ('Chen', 'Wei', 'chen.wei', 'chen.wei@example.com', 'ChinaPass88', 6, TRUE),
    ('Yuki', 'Tanaka', 'yuki.tanaka', 'yuki.tanaka@example.com', 'JapanPass23', 7, TRUE);
INSERT INTO member (name, surname, user_name, email, password, country_id, is_active) VALUES
    ('Admin', 'User', 'admin.user', 'admin@example.com', 'AdminPass123!', 1, TRUE);
-------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------
-- certificates tablosuna verileri ekeleme
INSERT INTO certificates (certificate_code) VALUES 
	('CERT-001'), 
	('CERT-002'), 
	('CERT-003'), 
	('CERT-004'), 
	('CERT-005'), 
	('CERT-006'), 
	('CERT-007'), 
	('CERT-008'), 
	('CERT-009'), 
	('CERT-010');
INSERT INTO certificates (certificate_code) VALUES 	
	('WEB-DEV-101'), 
	('DATA-SCI-202'), 
	('CYBER-SEC-303'), 
	('CLOUD-404'), 
	('AI-505'),
	('JS-EXPERT'), 
	('PYTHON-PRO'), 
	('SQL-MASTER'), 
	('AWS-ARCHITECT'), 
	('AZURE-ENGINEER');
INSERT INTO certificates (certificate_code) VALUES 	
	('GOOGLE-CLOUD'), 
	('DOCKER-CERT'), 
	('KUBERNETES-ADMIN'), 
	('REACT-SPECIALIST'), 
	('NODE-GURU'),
	('SECURITY+'), 
	('NETWORK+'), 
	('A+'), 
	('CCNA'), 
	('CEH');
INSERT INTO certificates (certificate_code) VALUES 
	('PMP'), 
	('SCRUM-MASTER'), 
	('ITIL-EXPERT'), 
	('CISSP'), 
	('GDPR-PRO'),
	('ISO-27001'), 
	('HIPAA-CERT'), 
	('PCI-DSS'), 
	('COBIT5'), 
	('TOGAF9');
INSERT INTO certificates (certificate_code) VALUES 	
	('MCSA'), 
	('MCSE'), 
	('OCP'), 
	('RHCE'), 
	('CCNP');
-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
-- certificates_assingments tablosuna verileri ekeleme
INSERT INTO certificates_assignments (member_id, certificate_id, date_of_issue) VALUES
	(1, 1, '2023-01-15'), 
	(1, 5, '2023-02-20'), 
	(1, 10, '2023-03-10'),
	(2, 2, '2023-01-18'), 
	(2, 6, '2023-02-22'), 
	(2, 11, '2023-03-12'),
	(3, 3, '2023-01-20'), 
	(3, 7, '2023-02-25'), 
	(3, 12, '2023-03-15'),
	(4, 4, '2023-01-22'); 
INSERT INTO certificates_assignments (member_id, certificate_id, date_of_issue) VALUES	
	(4, 8, '2023-02-28'), 
	(4, 13, '2023-03-18'),
	(5, 5, '2023-01-25'), 
	(5, 9, '2023-03-01'), 
	(5, 14, '2023-03-20'),
	(6, 1, '2023-01-28'), 
	(6, 10, '2023-03-05'), 
	(6, 15, '2023-03-22'),
	(7, 2, '2023-02-01'), 
	(7, 11, '2023-03-08'); 
INSERT INTO certificates_assignments (member_id, certificate_id, date_of_issue) VALUES	
	(7, 16, '2023-03-25'),
	(8, 3, '2023-02-05'),
	(8, 12, '2023-03-10'), 
	(8, 17, '2023-03-28'),
	(9, 4, '2023-02-08'), 
	(9, 13, '2023-03-12'), 
	(9, 18, '2023-03-30'),
	(10, 5, '2023-02-10'), 
	(10, 14, '2023-03-15'), 
	(10, 19, '2023-04-01');
INSERT INTO certificates_assignments (member_id, certificate_id, date_of_issue) VALUES	
	(11, 1, '2023-02-12'), 
	(11, 15, '2023-03-18'), 
	(11, 20, '2023-04-03');
-------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------
-- author tablosuna verileri ekeleme
INSERT INTO author (name, surname, birthday, country_id, email, biography) VALUES
	('Orhan', 'Pamuk', '1952-06-07', 1, 'orhan.pamuk@example.com', 'Nobel Edebiyat Ödülü sahibi Türk yazar'),
	('Yaşar', 'Kemal', '1923-10-06', 1, 'yasar.kemal@example.com', 'Çağdaş Türk edebiyatının en önemli yazarlarından'),
	('Elif', 'Şafak', '1971-10-25', 1, 'elif.safak@example.com', 'Uluslararası üne sahip Türk yazar'),
	('Stephen', 'King', '1947-09-21', 2, 'stephen.king@example.com', 'Amerikalı korku ve gerilim yazarı'),
	('J.K.', 'Rowling', '1965-07-31', 3, 'jk.rowling@example.com', 'Harry Potter serisinin yaratıcısı'),
	('Gabriel', 'García Márquez', '1927-03-06', 4, 'gabriel.marquez@example.com', 'Kolombiyalı büyülü gerçekçilik yazarı'),
	('Haruki', 'Murakami', '1949-01-12', 7, 'haruki.murakami@example.com', 'Japon postmodernist yazar'),
	('Leo', 'Tolstoy', '1828-09-09', 5, 'leo.tolstoy@example.com', 'Rus edebiyatının dev ismi'),
	('Virginia', 'Woolf', '1882-01-25', 3, 'virginia.woolf@example.com', 'İngiliz modernist yazar'),
	('Albert', 'Camus', '1913-11-07', 4, 'albert.camus@example.com', 'Fransız varoluşçu yazar ve filozof');

INSERT INTO author (name, surname, birthday, country_id, email, biography) VALUES	
	('Pablo', 'Neruda', '1904-07-12', 6, 'pablo.neruda@example.com', 'Şilili şair ve diplomat'),
	('Franz', 'Kafka', '1883-07-03', 8, 'franz.kafka@example.com', 'Çek asıllı Alman yazar'),
	('Fyodor', 'Dostoyevsky', '1821-11-11', 5, 'fyodor.dostoyevsky@example.com', 'Rus edebiyatının önemli romancısı'),
	('Ernest', 'Hemingway', '1899-07-21', 2, 'ernest.hemingway@example.com', 'Amerikalı yazar ve gazeteci');
-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
-- blogpost tablosuna verileri ekeleme
INSERT INTO blogpost (title, contents, publication_date, author_id, status) VALUES
    ('PostgreSQL Temelleri', 'PostgreSQL, açık kaynaklı bir ilişkisel veritabanı yönetim sistemidir...', '2023-05-10 09:15:00', 1, 'published'),
    ('Veritabanı Optimizasyon Teknikleri', 'Veritabanı performansını artırmak için çeşitli teknikler mevcuttur...', '2023-05-12 14:30:00', 2, 'published'),
    ('SQL Injection ve Korunma Yolları', 'SQL injection, web uygulamalarında sık karşılaşılan bir güvenlik açığıdır...', '2023-05-15 11:45:00', 3, 'published'),
    ('Yeni Başlayanlar İçin Python', 'Python, öğrenmesi kolay ve güçlü bir programlama dilidir...', '2023-06-01 10:00:00', 4, 'draft'),
    ('Makine Öğrenmesine Giriş', 'Makine öğrenmesi, yapay zekanın önemli bir alt dalıdır...', '2023-06-05 16:20:00', 5, 'published'),
    ('Web Geliştirme Trendleri 2023', '2023 yılında web geliştirme dünyasında öne çıkan trendler...', '2023-06-10 13:10:00', 6, 'archived'),
    ('Docker ile Konteynerleştirme', 'Docker, uygulamaları konteynerler halinde paketlemeyi sağlar...', '2023-06-15 09:30:00', 7, 'published'),
    ('React vs Vue: Karşılaştırma', 'Modern frontend frameworkleri React ve Vue arasındaki farklar...', '2023-06-20 15:45:00', 8, 'draft'),
    ('Bulut Bilişim Avantajları', 'Bulut bilişimin işletmelere sağladığı avantajlar ve kullanım senaryoları...', '2023-07-01 12:00:00', 9, 'published'),
    ('Veri Yapıları ve Algoritmalar', 'Temel veri yapıları ve algoritmalar hakkında kapsamlı bir rehber...', '2023-07-05 10:30:00', 10, 'published');
INSERT INTO blogpost (title, contents, publication_date, author_id, status) VALUES
    ('Yapay Zeka Etiği', 'Yapay zeka uygulamalarında karşılaşılan etik sorunlar...', '2023-07-10 14:15:00', 11, 'draft'),
    ('Blockchain Teknolojisi', 'Blockchain teknolojisinin temelleri ve kullanım alanları...', '2023-07-15 11:20:00', 12, 'published'),
    ('DevOps Kültürü', 'DevOps yaklaşımı ve yazılım geliştirme süreçlerine etkisi...', '2023-07-20 16:30:00', 13, 'archived'),
    ('Mikroservis Mimarisi', 'Mikroservis mimarisinin avantajları ve uygulama örnekleri...', '2023-08-01 13:45:00', 14, 'published');

-------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------
-- branch tablosuna verileri ekeleme
INSERT INTO branch (branch_name, is_active) VALUES 
	('Software Development', TRUE),
	('Web Development', TRUE),
	('Mobile Development', TRUE),
	('Data Science', TRUE),
	('Artificial Intelligence', TRUE),
	('Cyber Security', TRUE),
	('Cloud Computing', TRUE),
	('DevOps', TRUE),
	('Database Administration', TRUE),
	('Network Engineering', TRUE);
INSERT INTO branch (branch_name, is_active) VALUES 	
	('Game Development', FALSE),
	('Embedded Systems', FALSE),
	('Blockchain', TRUE),
	('UI/UX Design', TRUE),
	('Quality Assurance', TRUE),
	('Business Intelligence', TRUE),
	('Machine Learning', TRUE),
	('IT Support', FALSE),
	('Digital Marketing', TRUE),
	('Project Management', TRUE);
-------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------
-- instructor tablosuna verileri ekeleme
INSERT INTO instructor (name, surname, email, phone, country_id, branch_id, is_active, hire_date) VALUES
    ('Ahmet', 'Yılmaz', 'ahmet.yilmaz@academy.com', '+905551234567', 1, 1, TRUE, '2020-03-15'),
    ('Mehmet', 'Kaya', 'mehmet.kaya@academy.com', '+905552345678', 1, 2, TRUE, '2019-05-10'),
    ('Ayşe', 'Demir', 'ayse.demir@academy.com', '+905553456789', 1, 3, TRUE, '2021-01-20'),
    ('John', 'Smith', 'john.smith@academy.com', '+12025551234', 2, 4, TRUE, '2018-11-05'),
    ('Emily', 'Johnson', 'emily.johnson@academy.com', '+12035552345', 2, 5, FALSE, '2022-02-28'),
    ('David', 'Brown', 'david.brown@academy.com', '+4407912345678', 3, 6, TRUE, '2020-07-12'),
    ('Sophie', 'Martin', 'sophie.martin@academy.com', '+33123456789', 4, 7, TRUE, '2021-09-01'),
    ('Luca', 'Rossi', 'luca.rossi@academy.com', '+390123456789', 5, 8, TRUE, '2019-04-22'),
    ('Chen', 'Wei', 'chen.wei@academy.com', '+861012345678', 6, 9, TRUE, '2022-03-15'),
    ('Yuki', 'Tanaka', 'yuki.tanaka@academy.com', '+810901234567', 7, 10, FALSE, '2021-11-30');
INSERT INTO instructor (name, surname, email, phone, country_id, branch_id, is_active, hire_date) VALUES
	('Maria', 'Garcia', 'maria.garcia@academy.com', '+34911234567', 8, 11, TRUE, '2020-08-17'),
    ('Olga', 'Ivanova', 'olga.ivanova@academy.com', '+74951234567', 9, 12, TRUE, '2019-10-05'),
    ('Mohamed', 'Ali', 'mohamed.ali@academy.com', '+201001234567', 10, 13, TRUE, '2022-01-10'),
    ('Anna', 'Müller', 'anna.muller@academy.com', '+491512345678', 11, 14, TRUE, '2021-04-18'),
    ('Carlos', 'Santos', 'carlos.santos@academy.com', '+5511987654321', 12, 15, FALSE, '2020-12-01');
-------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------
-- categories tablosuna verileri ekeleme
INSERT INTO categories (artificial_intelligence, blockchain, cyber_security) VALUES
	('Machine Learning', 'Smart Contracts', 'Network Security'),
	('Deep Learning', 'Decentralized Finance', 'Ethical Hacking'),
	('Neural Networks', 'NFTs', 'Penetration Testing'),
	('Computer Vision', 'Web3', 'Cryptography'),
	('Natural Language Processing', 'DApps', 'Security Audits'),
	('Reinforcement Learning', 'Blockchain Protocols', 'Threat Intelligence'),
	('Generative AI', 'Tokenization', 'Incident Response'),
	('AI Ethics', 'Consensus Algorithms', 'Vulnerability Management'),
	('Predictive Analytics', 'Distributed Ledgers', 'Identity Management'),
	('Robotics', 'Crypto Wallets', 'Cloud Security');
-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
-- course tablosuna verileri ekeleme
INSERT INTO course (course_name, course_code, explanation, course_start_date, course_end_date, category_id, instructor_id, price, is_active) VALUES
	('Introduction to Machine Learning', 'ML-101', 'Fundamentals of machine learning algorithms and applications', '2023-09-15', '2023-11-15', 1, 1, 1999.99, TRUE),
	('Blockchain Development Basics', 'BLK-201', 'Learn smart contract development and decentralized applications', '2023-10-01', '2023-12-01', 2, 2, 2499.99, TRUE),
	('Cyber Security Fundamentals', 'CS-301', 'Essential cyber security principles and defense techniques', '2023-09-20', '2023-11-20', 3, 3, 1799.99, TRUE),
	('Advanced Deep Learning', 'ML-401', 'Deep neural networks and advanced AI architectures', '2023-10-15', '2024-01-15', 1, 4, 3499.99, TRUE),
	('Smart Contract Security', 'BLK-302', 'Security best practices for blockchain applications', '2023-11-01', '2024-01-31', 2, 5, 2999.99, FALSE),
	('Ethical Hacking', 'CS-202', 'Penetration testing and vulnerability assessment', '2023-10-10', '2023-12-10', 3, 6, 2299.99, TRUE),
	('Natural Language Processing', 'ML-301', 'Working with human language data using AI', '2023-11-15', '2024-02-15', 1, 7, 2799.99, TRUE),
	('Web3 Development', 'BLK-102', 'Building decentralized web applications', '2023-09-25', '2023-11-25', 2, 8, 1999.99, TRUE),
	('Cloud Security', 'CS-401', 'Securing cloud infrastructure and applications', '2023-10-20', '2024-01-20', 3, 9, 2599.99, TRUE),
	('AI for Computer Vision', 'ML-201', 'Image recognition and processing with AI', '2023-11-01', '2024-01-01', 1, 10, 3199.99, FALSE);
INSERT INTO course (course_name, course_code, explanation, course_start_date, course_end_date, category_id, instructor_id, price, is_active) VALUES	
	('Blockchain for Enterprises', 'BLK-303', 'Implementing blockchain solutions in business', '2023-10-05', '2023-12-05', 2, 11, 3499.99, TRUE),
	('Advanced Cryptography', 'CS-402', 'Modern cryptographic techniques and protocols', '2023-11-10', '2024-02-10', 3, 12, 2899.99, TRUE),
	('Reinforcement Learning', 'ML-402', 'AI systems that learn from interaction', '2023-10-15', '2024-01-15', 1, 13, 3299.99, TRUE),
	('NFT Development', 'BLK-203', 'Creating and managing non-fungible tokens', '2023-09-30', '2023-11-30', 2, 14, 2199.99, TRUE),
	('Security Operations', 'CS-302', 'Managing and responding to security incidents', '2023-10-25', '2023-12-25', 3, 15, 2399.99, TRUE);
-------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------
-- enrollments tablosuna verileri ekeleme
INSERT INTO enrollments (member_id, course_id, enrollment_date) VALUES
	(1, 1, '2023-09-01 10:15:00'), 
	(1, 3, '2023-09-05 14:30:00'), 
	(1, 5, '2023-09-10 11:45:00'),
	(2, 2, '2023-09-02 09:20:00'), 
	(2, 4, '2023-09-06 16:10:00'), 
	(2, 6, '2023-09-11 13:25:00'),
	(3, 3, '2023-09-03 08:45:00'), 
	(3, 5, '2023-09-07 15:30:00'), 
	(3, 7, '2023-09-12 10:50:00'),
	(4, 4, '2023-09-04 11:10:00'); 
INSERT INTO enrollments (member_id, course_id, enrollment_date) VALUES	
	(4, 6, '2023-09-08 12:40:00'), 
	(4, 8, '2023-09-13 09:15:00'),
	(5, 5, '2023-09-05 13:55:00'), 
	(5, 7, '2023-09-09 14:20:00'), 
	(5, 9, '2023-09-14 16:45:00'),
	(6, 6, '2023-09-06 15:30:00'), 
	(6, 8, '2023-09-10 10:10:00'), 
	(6, 10, '2023-09-15 11:30:00'),
	(7, 7, '2023-09-07 09:45:00'), 
	(7, 9, '2023-09-11 13:15:00'); 
INSERT INTO enrollments (member_id, course_id, enrollment_date) VALUES	
	(7, 11, '2023-09-16 14:50:00'),
	(8, 8, '2023-09-08 14:20:00'), 
	(8, 10, '2023-09-12 08:30:00'), 
	(8, 12, '2023-09-17 15:10:00'),
	(9, 9, '2023-09-09 10:40:00'), 
	(9, 11, '2023-09-13 16:25:00'), 
	(9, 13, '2023-09-18 09:50:00'),
	(10, 10, '2023-09-10 12:15:00'),
	(10, 12, '2023-09-14 11:45:00'),
	(10, 14, '2023-09-19 14:30:00');
INSERT INTO enrollments (member_id, course_id, enrollment_date) VALUES	
	(11, 1, '2023-09-11 08:50:00'), 
	(11, 3, '2023-09-15 15:40:00'), 
	(11, 5, '2023-09-20 10:20:00');
-------------------------------------------------------------------------------------
```
