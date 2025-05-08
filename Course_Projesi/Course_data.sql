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
    ('Ahmet', 'Yýlmaz', 'ahmet.yilmaz', 'ahmet.yilmaz@example.com', 'SecurePass123', 1, TRUE),
    ('Mehmet', 'Kaya', 'mehmet.kaya', 'mehmet.kaya@example.com', 'StrongPwd456', 1, TRUE),
    ('Ayþe', 'Demir', 'ayse.demir', 'ayse.demir@example.com', 'Complex789!', 1, TRUE),
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
	('Yaþar', 'Kemal', '1923-10-06', 1, 'yasar.kemal@example.com', 'Çaðdaþ Türk edebiyatýnýn en önemli yazarlarýndan'),
	('Elif', 'Þafak', '1971-10-25', 1, 'elif.safak@example.com', 'Uluslararasý üne sahip Türk yazar'),
	('Stephen', 'King', '1947-09-21', 2, 'stephen.king@example.com', 'Amerikalý korku ve gerilim yazarý'),
	('J.K.', 'Rowling', '1965-07-31', 3, 'jk.rowling@example.com', 'Harry Potter serisinin yaratýcýsý'),
	('Gabriel', 'García Márquez', '1927-03-06', 4, 'gabriel.marquez@example.com', 'Kolombiyalý büyülü gerçekçilik yazarý'),
	('Haruki', 'Murakami', '1949-01-12', 7, 'haruki.murakami@example.com', 'Japon postmodernist yazar'),
	('Leo', 'Tolstoy', '1828-09-09', 5, 'leo.tolstoy@example.com', 'Rus edebiyatýnýn dev ismi'),
	('Virginia', 'Woolf', '1882-01-25', 3, 'virginia.woolf@example.com', 'Ýngiliz modernist yazar'),
	('Albert', 'Camus', '1913-11-07', 4, 'albert.camus@example.com', 'Fransýz varoluþçu yazar ve filozof');

INSERT INTO author (name, surname, birthday, country_id, email, biography) VALUES	
	('Pablo', 'Neruda', '1904-07-12', 6, 'pablo.neruda@example.com', 'Þilili þair ve diplomat'),
	('Franz', 'Kafka', '1883-07-03', 8, 'franz.kafka@example.com', 'Çek asýllý Alman yazar'),
	('Fyodor', 'Dostoyevsky', '1821-11-11', 5, 'fyodor.dostoyevsky@example.com', 'Rus edebiyatýnýn önemli romancýsý'),
	('Ernest', 'Hemingway', '1899-07-21', 2, 'ernest.hemingway@example.com', 'Amerikalý yazar ve gazeteci');
-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
-- blogpost tablosuna verileri ekeleme
INSERT INTO blogpost (title, contents, publication_date, author_id, status) VALUES
    ('PostgreSQL Temelleri', 'PostgreSQL, açýk kaynaklý bir iliþkisel veritabaný yönetim sistemidir...', '2023-05-10 09:15:00', 1, 'published'),
    ('Veritabaný Optimizasyon Teknikleri', 'Veritabaný performansýný artýrmak için çeþitli teknikler mevcuttur...', '2023-05-12 14:30:00', 2, 'published'),
    ('SQL Injection ve Korunma Yollarý', 'SQL injection, web uygulamalarýnda sýk karþýlaþýlan bir güvenlik açýðýdýr...', '2023-05-15 11:45:00', 3, 'published'),
    ('Yeni Baþlayanlar Ýçin Python', 'Python, öðrenmesi kolay ve güçlü bir programlama dilidir...', '2023-06-01 10:00:00', 4, 'draft'),
    ('Makine Öðrenmesine Giriþ', 'Makine öðrenmesi, yapay zekanýn önemli bir alt dalýdýr...', '2023-06-05 16:20:00', 5, 'published'),
    ('Web Geliþtirme Trendleri 2023', '2023 yýlýnda web geliþtirme dünyasýnda öne çýkan trendler...', '2023-06-10 13:10:00', 6, 'archived'),
    ('Docker ile Konteynerleþtirme', 'Docker, uygulamalarý konteynerler halinde paketlemeyi saðlar...', '2023-06-15 09:30:00', 7, 'published'),
    ('React vs Vue: Karþýlaþtýrma', 'Modern frontend frameworkleri React ve Vue arasýndaki farklar...', '2023-06-20 15:45:00', 8, 'draft'),
    ('Bulut Biliþim Avantajlarý', 'Bulut biliþimin iþletmelere saðladýðý avantajlar ve kullaným senaryolarý...', '2023-07-01 12:00:00', 9, 'published'),
    ('Veri Yapýlarý ve Algoritmalar', 'Temel veri yapýlarý ve algoritmalar hakkýnda kapsamlý bir rehber...', '2023-07-05 10:30:00', 10, 'published');
INSERT INTO blogpost (title, contents, publication_date, author_id, status) VALUES
    ('Yapay Zeka Etiði', 'Yapay zeka uygulamalarýnda karþýlaþýlan etik sorunlar...', '2023-07-10 14:15:00', 11, 'draft'),
    ('Blockchain Teknolojisi', 'Blockchain teknolojisinin temelleri ve kullaným alanlarý...', '2023-07-15 11:20:00', 12, 'published'),
    ('DevOps Kültürü', 'DevOps yaklaþýmý ve yazýlým geliþtirme süreçlerine etkisi...', '2023-07-20 16:30:00', 13, 'archived'),
    ('Mikroservis Mimarisi', 'Mikroservis mimarisinin avantajlarý ve uygulama örnekleri...', '2023-08-01 13:45:00', 14, 'published');

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
    ('Ahmet', 'Yýlmaz', 'ahmet.yilmaz@academy.com', '+905551234567', 1, 1, TRUE, '2020-03-15'),
    ('Mehmet', 'Kaya', 'mehmet.kaya@academy.com', '+905552345678', 1, 2, TRUE, '2019-05-10'),
    ('Ayþe', 'Demir', 'ayse.demir@academy.com', '+905553456789', 1, 3, TRUE, '2021-01-20'),
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
INSERT INTO categories (category_name) VALUES
	('Machine Learning'),
	('Deep Learning'),
	('Penetration Testing'),
	('Web3'),
	('Natural Language Processing'),
	('Blockchain Protocols'),
	('Generative AI'),
	('AI Ethics'),
	('Cloud Security'),
	('Robotics');
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