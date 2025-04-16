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
