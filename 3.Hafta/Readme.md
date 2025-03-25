<h1>3.Hafta Ödevi</h1>

<h3>Amaç</h3>
<hr>
Turkstudentco’da veri bilimci olarak ilk gününüzde, size Chinook veritabanından Invoice tablosu
verildi. Bu tabloyu inceledikten sonra kafanızda birkaç soru oluştu ve bu soruları cevaplamak için SQL
sorguları yazmanız istendi. Bu ödevin amacı, veritabanı sorgulama becerilerinizi geliştirmek ve
farklı SQL işlemlerini uygulamanızı sağlamaktır.
<hr>
<h3>Görevler</h3>
<hr>
<p>1. “USA” ülkesine ait, 2009 yılı içerisinde oluşturulmuş tüm faturaların (Invoice) toplamını listeleyen bir sorgu yazınız.</p>
<p>Kullanılacak Tablolar</p>
<p>&nbsp;● invoice</p>
<p>2. Tüm parça (track) bilgilerini, bu parçaların ait olduğu playlisttrack ve playlist tablolarıyla birleştirerek (JOIN) listeleyen bir sorgu yazınız.</p>
<p>Kullanılacak Tablolar</p>
<p>&nbsp;● track</p>
<p>&nbsp;● playlisttrack</p>
<p>&nbsp;● playlist</p>
<p>3. "Let There Be Rock" adlı albüme ait tüm parçaları (Track) listeleyen, sanatçı (Artist) bilgisini de içeren bir sorgu yazınız. Ayrıca, sonuçları parça süresi (milliseconds) büyükten küçüğe sıralayınız.</p>
<p>Kullanılacak Tablolar</p>
<p>&nbsp;● track</p>
<p>&nbsp;● album</p>
<p>&nbsp;● artist</p>
<hr>
<h3>Kullanılacak Veritabanı ve Tablolar</h3>
<hr>
<p>▪️Invoice Tablosu Örnek Veri</p>
<p>● invoice_id</p>
<p>● customer_id</p>
<p>● invoice_date</p>
<p>● billing_address</p>
<p>● billing_city</p>
<p>● billing_state</p>
<p>● billing_country</p>
<p>● billingpostal_code</p>
<p>● total</p>
<table border="1">
        <tr Style="font-weight:Bold">
            <td>invoice_id</td>
            <td>customer_id</td>
            <td>invoice_date<br/></td>
            <td>billing_address</td>
            <td>billing_city</td>
            <td>billing_state</td>
            <td>billing_country</td>
            <td>billingpostal_code</td>
            <td>total</td>
        </tr>
        <tr>
            <td>1</td>
            <td>18</td>
            <td>2017-01-0300:00:00<br/></td>
            <td>627 Broadway</td>
            <td>New York</td>
            <td>NY</td>
            <td>USA</td>
            <td>10012-2612</td>
            <td>15.84</td>
        </tr>
        <tr>
            <td>2</td>
            <td>30</td>
            <td>2017-01-0300:00:00<br/></td>
            <td>230 Elgin Street</td>
            <td>Ottawa</td>
            <td>ON</td>
            <td>Canada</td>
            <td>K2P 1L7</td>
            <td>9.9</td>
        </tr>
      <tr>
            <td>3</td>
            <td>40</td>
            <td>2017-01-0500:00:00<br/></td>
            <td>8, Rue Hanovre</td>
            <td>Paris</td>
            <td>None</td>
            <td>France</td>
            <td>75002</td>
            <td>1.98</td>
        </tr>
      <tr>
            <td>4</td>
            <td>18</td>
            <td>2017-01-0600:00:00<br/></td>
            <td>627 Broadway</td>
            <td>New York</td>
            <td>NY</td>
            <td>USA</td>
            <td>10012-2612</td>
            <td>7.92</td>
        </tr>
</table>
<p>Not: Bu tablo invoice yapısının örnek bir kısmını göstermektedir; Tüm veri setine aşağıdaki kısımda verilen tablo oluşturma komutlarından ulaşabilirsiniz.</p>
<p>▪️Album Tablosu Örnek Veri</p>
<p>● album_id</p>
<p>● title</p>
<p>● artist_id</p>



<table>
  <tr>
    <td>album_id</td>
    <td>title</td>
    <td>artist_id</td>
  </tr>
   <tr>
    <td>1</td>
    <td>For Those About To Rock We Salute You</td>
    <td>1</td>
  </tr>
   <tr>
    <td>2</td>
    <td>Balls to the Wall</td>
    <td>2</td>
  </tr>
   <tr>
    <td>3</td>
    <td>Restless and Wild</td>
    <td>2</td>
  </tr>
   <tr>
    <td>4</td>
    <td>Let There Be Rock</td>
    <td>1</td>
  </tr>
   <tr>
    <td>5</td>
    <td>Big Ones</td>
    <td>3</td>
  </tr>
   <tr>
    <td>6</td>
    <td>Jagged Little Pill</td>
    <td>4</td>
  </tr>
</table>
<p>Not: Bu tablo album yapısının örnek bir kısmını göstermektedir; Tüm veri setine aşağıdaki kısımda verilen tablo oluşturma komutlarından ulaşabilirsiniz.</p>


<p>▪️Artist Tablosu Örnek Veri</p>
<p>● artist_id</p>
<p>● name</p>
<table>
  <tr>
    <td>artist_id</td>
    <td>name</td>
  </tr>
  <tr>
    <td>1</td>
    <td>AC/DC</td>
  </tr>
  <tr>
    <td>2</td>
    <td>Accept</td>
  </tr>
  <tr>
    <td>3</td>
    <td>Aerosmith</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Alanis Morissette</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Alice In Chains</td>
  </tr>
</table>
<p>Not: Bu tablo artist yapısının örnek bir kısmını göstermektedir; Tüm veri setine aşağıdaki kısımda verilen tablo oluşturma komutlarından ulaşabilirsiniz.</p>

<p>▪️Playlist Tablosu Örnek Veri</p>
<p>● playlist_id</p>
<p>● name</p>
<table>
  <tr>
    <td>playlist_id</td>
    <td>name</td>
  </tr>
  <tr>
    <td>1</td>
    <td>Music</td>
  </tr>
  <tr>
    <td>2</td>
    <td>Movies</td>
  </tr>
  <tr>
    <td>3</td>
    <td>TV Shows</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Audiobooks</td>
  </tr>
  <tr>
    <td>5</td>
    <td>90's Music</td>
  </tr>
</table>
<p>Not: Bu tablo playlist yapısının örnek bir kısmını göstermektedir; Tüm veri setine aşağıdaki kısımda verilen tablo oluşturma komutlarından ulaşabilirsiniz.</p>

<p>▪️Playlisttrack Tablosu Örnek Veri</p>
<p>● playlist_id</p>
<p>● track_id</p>
<table>
  <tr>
    <td>playlist_id</td>
    <td>track_id</td>
  </tr>
  <tr>
    <td>1</td>
    <td>1</td>
  </tr>
  <tr>
    <td>1</td>
    <td>2</td>
  </tr>
  <tr>
    <td>1</td>
    <td>3</td>
  </tr>
  <tr>
    <td>1</td>
    <td>4</td>
  </tr>
  <tr>
    <td>1</td>
    <td>5</td>
  </tr>
</table>
<p>Not: Bu tablo playlisttrack yapısının örnek bir kısmını göstermektedir; Tüm veri setine aşağıdaki kısımda verilen tablo oluşturma komutlarından ulaşabilirsiniz.</p>

<hr>
![Image Alt](https://github.com/Sercan-Ayvaz/TurkStudentCo-DATA-SCIENCE-BOOTCAMP-SQL/blob/c4af771a3dd5572dd66eb35b10962b70a0cee3b8/3.Hafta/Schema.jpeg)
<hr>
<h3>Tablo Oluşturma Komutları</h3>
<hr>
<pre>
/*******************************************************************************
   Create Tables
********************************************************************************/
CREATE TABLE "album"
(
    "album_id" INT NOT NULL,
    "title" VARCHAR(160) NOT NULL,
    "artist_id" INT NOT NULL,
    CONSTRAINT "PK_album" PRIMARY KEY  ("album_id")
);

CREATE TABLE "artist"
(
    "artist_id" INT NOT NULL,
    "name" VARCHAR(120),
    CONSTRAINT "PK_artist" PRIMARY KEY  ("artist_id")
);

CREATE TABLE "customer"
(
    "customer_id" INT NOT NULL,
    "firstname" VARCHAR(40) NOT NULL,
    "lastname" VARCHAR(20) NOT NULL,
    "compant" VARCHAR(80),
    "address" VARCHAR(70),
    "city" VARCHAR(40),
    "state" VARCHAR(40),
    "country" VARCHAR(40),
    "postal_code" VARCHAR(10),
    "phone" VARCHAR(24),
    "fax" VARCHAR(24),
    "email" VARCHAR(60) NOT NULL,
    "supportrep_id" INT,
    CONSTRAINT "PK_Customer" PRIMARY KEY  ("customer_id")
);

CREATE TABLE "employee"
(
    "employee_id" INT NOT NULL,
    "lastname" VARCHAR(20) NOT NULL,
    "firstname" VARCHAR(20) NOT NULL,
    "title" VARCHAR(30),
    "reportsTo" INT,
    "birth_date" TIMESTAMP,
    "hire_date" TIMESTAMP,
    "address" VARCHAR(70),
    "city" VARCHAR(40),
    "state" VARCHAR(40),
    "country" VARCHAR(40),
    "postal_code" VARCHAR(10),
    "phone" VARCHAR(24),
    "fax" VARCHAR(24),
    "email" VARCHAR(60),
    CONSTRAINT "PK_Employee" PRIMARY KEY  ("employee_id")
);

CREATE TABLE "genre"
(
    "genre_id" INT NOT NULL,
    "name" VARCHAR(120),
    CONSTRAINT "PK_Genre" PRIMARY KEY  ("genre_id")
);

CREATE TABLE "invoice"
(
    "invoice_id" INT NOT NULL,
    "customer_id" INT NOT NULL,
    "invoice_date" TIMESTAMP NOT NULL,
    "billing_address" VARCHAR(70),
    "billing_city" VARCHAR(40),
    "billing_state" VARCHAR(40),
    "billing_country" VARCHAR(40),
    "billingpostal_code" VARCHAR(10),
    "total" NUMERIC(10,2) NOT NULL,
    CONSTRAINT "PK_Invoice" PRIMARY KEY  ("invoice_id")
);

CREATE TABLE "invoiceline"
(
    "invoiceline_id" INT NOT NULL,
    "invoice_id" INT NOT NULL,
    "track_id" INT NOT NULL,
    "unitprice" NUMERIC(10,2) NOT NULL,
    "quantity" INT NOT NULL,
    CONSTRAINT "PK_InvoiceLine" PRIMARY KEY  ("invoiceline_id")
);

CREATE TABLE "mediatype"
(
    "mediatype_id" INT NOT NULL,
    "name" VARCHAR(120),
    CONSTRAINT "PK_MediaType" PRIMARY KEY  ("mediatype_id")
);

CREATE TABLE "playlist"
(
    "playlist_id" INT NOT NULL,
    "name" VARCHAR(120),
    CONSTRAINT "PK_Playlist" PRIMARY KEY  ("playlist_id")
);

CREATE TABLE "playlisttrack"
(
    "playlist_id" INT NOT NULL,
    "track_id" INT NOT NULL,
    CONSTRAINT "PK_PlaylistTrack" PRIMARY KEY  ("playlist_id", "track_id")
);

CREATE TABLE "track"
(
    "track_id" INT NOT NULL,
    "name" VARCHAR(200) NOT NULL,
    "album_id" INT,
    "mediatype_id" INT NOT NULL,
    "genre_id" INT,
    "composer" VARCHAR(220),
    "milliseconds" INT NOT NULL,
    "bytes" INT,
    "unitprice" NUMERIC(10,2) NOT NULL,
    CONSTRAINT "PK_Track" PRIMARY KEY  ("track_id")
);



/*******************************************************************************
   Create Primary Key Unique Indexes
********************************************************************************/

/*******************************************************************************
   Create Foreign Keys
********************************************************************************/
ALTER TABLE "album" ADD CONSTRAINT "FK_albumartistId"
    FOREIGN KEY ("artist_id") REFERENCES "artist" ("artist_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "IFK_albumartistId" ON "album" ("artist_id");

ALTER TABLE "customer" ADD CONSTRAINT "FK_CustomerSupportRepId"
    FOREIGN KEY ("supportrep_id") REFERENCES "employee" ("employee_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "IFK_CustomerSupportRepId" ON "customer" ("supportrep_id");

ALTER TABLE "employee" ADD CONSTRAINT "FK_EmployeeReportsTo"
    FOREIGN KEY ("reportsTo") REFERENCES "employee" ("employee_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "IFK_EmployeeReportsTo" ON "employee" ("reportsTo");

ALTER TABLE "invoice" ADD CONSTRAINT "FK_InvoiceCustomerId"
    FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "IFK_InvoiceCustomerId" ON "invoice" ("customer_id");

ALTER TABLE "invoiceline" ADD CONSTRAINT "FK_InvoiceLineInvoiceId"
    FOREIGN KEY ("invoice_id") REFERENCES "invoice" ("invoice_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "IFK_InvoiceLineInvoiceId" ON "invoiceline" ("invoice_id");

ALTER TABLE "invoiceline" ADD CONSTRAINT "FK_InvoiceLineTrackId"
    FOREIGN KEY ("track_id") REFERENCES "track" ("track_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "IFK_InvoiceLineTrackId" ON "invoiceline" ("track_id");

ALTER TABLE "playlisttrack" ADD CONSTRAINT "FK_PlaylistTrackPlaylistId"
    FOREIGN KEY ("playlist_id") REFERENCES "playlist" ("playlist_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "playlisttrack" ADD CONSTRAINT "FK_PlaylistTrackTrackId"
    FOREIGN KEY ("track_id") REFERENCES "track" ("track_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "IFK_PlaylistTrackTrackId" ON "playlisttrack" ("track_id");

ALTER TABLE "track" ADD CONSTRAINT "FK_TrackalbumId"
    FOREIGN KEY ("album_id") REFERENCES "album" ("album_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "IFK_TrackalbumId" ON "track" ("album_id");

ALTER TABLE "track" ADD CONSTRAINT "FK_TrackGenreId"
    FOREIGN KEY ("genre_id") REFERENCES "genre" ("genre_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "IFK_TrackGenreId" ON "track" ("genre_id");

ALTER TABLE "track" ADD CONSTRAINT "FK_TrackMediaTypeId"
    FOREIGN KEY ("mediatype_id") REFERENCES "mediatype" ("mediatype_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "IFK_TrackMediaTypeId" ON "track" ("mediatype_id");


/*******************************************************************************
   Populate Tables
********************************************************************************/
INSERT INTO "genre" ("genre_id", "name") VALUES (1, N'Rock');
INSERT INTO "genre" ("genre_id", "name") VALUES (2, N'Jazz');
INSERT INTO "genre" ("genre_id", "name") VALUES (3, N'Metal');
INSERT INTO "genre" ("genre_id", "name") VALUES (4, N'Alternative & Punk');
INSERT INTO "genre" ("genre_id", "name") VALUES (5, N'Rock And Roll');
INSERT INTO "genre" ("genre_id", "name") VALUES (6, N'Blues');
INSERT INTO "genre" ("genre_id", "name") VALUES (7, N'Latin');
INSERT INTO "genre" ("genre_id", "name") VALUES (8, N'Reggae');
INSERT INTO "genre" ("genre_id", "name") VALUES (9, N'Pop');
INSERT INTO "genre" ("genre_id", "name") VALUES (10, N'Soundtrack');
INSERT INTO "genre" ("genre_id", "name") VALUES (11, N'Bossa Nova');
INSERT INTO "genre" ("genre_id", "name") VALUES (12, N'Easy Listening');
INSERT INTO "genre" ("genre_id", "name") VALUES (13, N'Heavy Metal');
INSERT INTO "genre" ("genre_id", "name") VALUES (14, N'R&B/Soul');
INSERT INTO "genre" ("genre_id", "name") VALUES (15, N'Electronica/Dance');
INSERT INTO "genre" ("genre_id", "name") VALUES (16, N'World');
INSERT INTO "genre" ("genre_id", "name") VALUES (17, N'Hip Hop/Rap');
INSERT INTO "genre" ("genre_id", "name") VALUES (18, N'Science Fiction');
INSERT INTO "genre" ("genre_id", "name") VALUES (19, N'TV Shows');
INSERT INTO "genre" ("genre_id", "name") VALUES (20, N'Sci Fi & Fantasy');
INSERT INTO "genre" ("genre_id", "name") VALUES (21, N'Drama');
INSERT INTO "genre" ("genre_id", "name") VALUES (22, N'Comedy');
INSERT INTO "genre" ("genre_id", "name") VALUES (23, N'Alternative');
INSERT INTO "genre" ("genre_id", "name") VALUES (24, N'Classical');
INSERT INTO "genre" ("genre_id", "name") VALUES (25, N'Opera');

INSERT INTO "mediatype" ("mediatype_id", "name") VALUES (1, N'MPEG audio file');
INSERT INTO "mediatype" ("mediatype_id", "name") VALUES (2, N'Protected AAC audio file');
INSERT INTO "mediatype" ("mediatype_id", "name") VALUES (3, N'Protected MPEG-4 video file');
INSERT INTO "mediatype" ("mediatype_id", "name") VALUES (4, N'Purchased AAC audio file');
INSERT INTO "mediatype" ("mediatype_id", "name") VALUES (5, N'AAC audio file');

INSERT INTO "artist" ("artist_id", "name") VALUES (1, N'AC/DC');
INSERT INTO "artist" ("artist_id", "name") VALUES (2, N'Accept');
INSERT INTO "artist" ("artist_id", "name") VALUES (3, N'Aerosmith');
INSERT INTO "artist" ("artist_id", "name") VALUES (4, N'Alanis Morissette');
INSERT INTO "artist" ("artist_id", "name") VALUES (5, N'Alice In Chains');
INSERT INTO "artist" ("artist_id", "name") VALUES (6, N'Ant�nio Carlos Jobim');
INSERT INTO "artist" ("artist_id", "name") VALUES (7, N'Apocalyptica');
INSERT INTO "artist" ("artist_id", "name") VALUES (8, N'Audioslave');
INSERT INTO "artist" ("artist_id", "name") VALUES (9, N'BackBeat');
INSERT INTO "artist" ("artist_id", "name") VALUES (10, N'Billy Cobham');
INSERT INTO "artist" ("artist_id", "name") VALUES (11, N'Black Label Society');
INSERT INTO "artist" ("artist_id", "name") VALUES (12, N'Black Sabbath');
INSERT INTO "artist" ("artist_id", "name") VALUES (13, N'Body Count');
INSERT INTO "artist" ("artist_id", "name") VALUES (14, N'Bruce Dickinson');
INSERT INTO "artist" ("artist_id", "name") VALUES (15, N'Buddy Guy');
INSERT INTO "artist" ("artist_id", "name") VALUES (16, N'Caetano Veloso');
INSERT INTO "artist" ("artist_id", "name") VALUES (17, N'Chico Buarque');
INSERT INTO "artist" ("artist_id", "name") VALUES (18, N'Chico Science & Na��o Zumbi');
INSERT INTO "artist" ("artist_id", "name") VALUES (19, N'Cidade Negra');
INSERT INTO "artist" ("artist_id", "name") VALUES (20, N'Cl�udio Zoli');
INSERT INTO "artist" ("artist_id", "name") VALUES (21, N'Various artists');
INSERT INTO "artist" ("artist_id", "name") VALUES (22, N'Led Zeppelin');
INSERT INTO "artist" ("artist_id", "name") VALUES (23, N'Frank Zappa & Captain Beefheart');
INSERT INTO "artist" ("artist_id", "name") VALUES (24, N'Marcos Valle');
INSERT INTO "artist" ("artist_id", "name") VALUES (25, N'Milton Nascimento & Bebeto');
INSERT INTO "artist" ("artist_id", "name") VALUES (26, N'Azymuth');
INSERT INTO "artist" ("artist_id", "name") VALUES (27, N'Gilberto Gil');
INSERT INTO "artist" ("artist_id", "name") VALUES (28, N'Jo�o Gilberto');
INSERT INTO "artist" ("artist_id", "name") VALUES (29, N'Bebel Gilberto');
INSERT INTO "artist" ("artist_id", "name") VALUES (30, N'Jorge Vercilo');
INSERT INTO "artist" ("artist_id", "name") VALUES (31, N'Baby Consuelo');
INSERT INTO "artist" ("artist_id", "name") VALUES (32, N'Ney Matogrosso');
INSERT INTO "artist" ("artist_id", "name") VALUES (33, N'Luiz Melodia');
INSERT INTO "artist" ("artist_id", "name") VALUES (34, N'Nando Reis');
INSERT INTO "artist" ("artist_id", "name") VALUES (35, N'Pedro Lu�s & A Parede');
INSERT INTO "artist" ("artist_id", "name") VALUES (36, N'O Rappa');
INSERT INTO "artist" ("artist_id", "name") VALUES (37, N'Ed Motta');
INSERT INTO "artist" ("artist_id", "name") VALUES (38, N'Banda Black Rio');
INSERT INTO "artist" ("artist_id", "name") VALUES (39, N'Fernanda Porto');
INSERT INTO "artist" ("artist_id", "name") VALUES (40, N'Os Cariocas');
INSERT INTO "artist" ("artist_id", "name") VALUES (41, N'Elis Regina');
INSERT INTO "artist" ("artist_id", "name") VALUES (42, N'Milton Nascimento');
INSERT INTO "artist" ("artist_id", "name") VALUES (43, N'A Cor Do Som');
INSERT INTO "artist" ("artist_id", "name") VALUES (44, N'Kid Abelha');
INSERT INTO "artist" ("artist_id", "name") VALUES (45, N'Sandra De S�');
INSERT INTO "artist" ("artist_id", "name") VALUES (46, N'Jorge Ben');
INSERT INTO "artist" ("artist_id", "name") VALUES (47, N'Hermeto Pascoal');
INSERT INTO "artist" ("artist_id", "name") VALUES (48, N'Bar�o Vermelho');
INSERT INTO "artist" ("artist_id", "name") VALUES (49, N'Edson, DJ Marky & DJ Patife Featuring Fernanda Porto');
INSERT INTO "artist" ("artist_id", "name") VALUES (50, N'Metallica');
INSERT INTO "artist" ("artist_id", "name") VALUES (51, N'Queen');
INSERT INTO "artist" ("artist_id", "name") VALUES (52, N'Kiss');
INSERT INTO "artist" ("artist_id", "name") VALUES (53, N'Spyro Gyra');
INSERT INTO "artist" ("artist_id", "name") VALUES (54, N'Green Day');
INSERT INTO "artist" ("artist_id", "name") VALUES (55, N'David Coverdale');
INSERT INTO "artist" ("artist_id", "name") VALUES (56, N'Gonzaguinha');
INSERT INTO "artist" ("artist_id", "name") VALUES (57, N'Os Mutantes');
INSERT INTO "artist" ("artist_id", "name") VALUES (58, N'Deep Purple');
INSERT INTO "artist" ("artist_id", "name") VALUES (59, N'Santana');
INSERT INTO "artist" ("artist_id", "name") VALUES (60, N'Santana Feat. Dave Matthews');
INSERT INTO "artist" ("artist_id", "name") VALUES (61, N'Santana Feat. Everlast');
INSERT INTO "artist" ("artist_id", "name") VALUES (62, N'Santana Feat. Rob Thomas');
INSERT INTO "artist" ("artist_id", "name") VALUES (63, N'Santana Feat. Lauryn Hill & Cee-Lo');
INSERT INTO "artist" ("artist_id", "name") VALUES (64, N'Santana Feat. The Project G&B');
INSERT INTO "artist" ("artist_id", "name") VALUES (65, N'Santana Feat. Man�');
INSERT INTO "artist" ("artist_id", "name") VALUES (66, N'Santana Feat. Eagle-Eye Cherry');
INSERT INTO "artist" ("artist_id", "name") VALUES (67, N'Santana Feat. Eric Clapton');
INSERT INTO "artist" ("artist_id", "name") VALUES (68, N'Miles Davis');
INSERT INTO "artist" ("artist_id", "name") VALUES (69, N'Gene Krupa');
INSERT INTO "artist" ("artist_id", "name") VALUES (70, N'Toquinho & Vin�cius');
INSERT INTO "artist" ("artist_id", "name") VALUES (71, N'Vin�cius De Moraes & Baden Powell');
INSERT INTO "artist" ("artist_id", "name") VALUES (72, N'Vin�cius De Moraes');
INSERT INTO "artist" ("artist_id", "name") VALUES (73, N'Vin�cius E Qurteto Em Cy');
INSERT INTO "artist" ("artist_id", "name") VALUES (74, N'Vin�cius E Odette Lara');
INSERT INTO "artist" ("artist_id", "name") VALUES (75, N'Vinicius, Toquinho & Quarteto Em Cy');
INSERT INTO "artist" ("artist_id", "name") VALUES (76, N'Creedence Clearwater Revival');
INSERT INTO "artist" ("artist_id", "name") VALUES (77, N'C�ssia Eller');
INSERT INTO "artist" ("artist_id", "name") VALUES (78, N'Def Leppard');
INSERT INTO "artist" ("artist_id", "name") VALUES (79, N'Dennis Chambers');
INSERT INTO "artist" ("artist_id", "name") VALUES (80, N'Djavan');
INSERT INTO "artist" ("artist_id", "name") VALUES (81, N'Eric Clapton');
INSERT INTO "artist" ("artist_id", "name") VALUES (82, N'Faith No More');
INSERT INTO "artist" ("artist_id", "name") VALUES (83, N'Falamansa');
INSERT INTO "artist" ("artist_id", "name") VALUES (84, N'Foo Fighters');
INSERT INTO "artist" ("artist_id", "name") VALUES (85, N'Frank Sinatra');
INSERT INTO "artist" ("artist_id", "name") VALUES (86, N'Funk Como Le Gusta');
INSERT INTO "artist" ("artist_id", "name") VALUES (87, N'Godsmack');
INSERT INTO "artist" ("artist_id", "name") VALUES (88, N'Guns N'' Roses');
INSERT INTO "artist" ("artist_id", "name") VALUES (89, N'Incognito');
INSERT INTO "artist" ("artist_id", "name") VALUES (90, N'Iron Maiden');
INSERT INTO "artist" ("artist_id", "name") VALUES (91, N'James Brown');
INSERT INTO "artist" ("artist_id", "name") VALUES (92, N'Jamiroquai');
INSERT INTO "artist" ("artist_id", "name") VALUES (93, N'JET');
INSERT INTO "artist" ("artist_id", "name") VALUES (94, N'Jimi Hendrix');
INSERT INTO "artist" ("artist_id", "name") VALUES (95, N'Joe Satriani');
INSERT INTO "artist" ("artist_id", "name") VALUES (96, N'Jota Quest');
INSERT INTO "artist" ("artist_id", "name") VALUES (97, N'Jo�o Suplicy');
INSERT INTO "artist" ("artist_id", "name") VALUES (98, N'Judas Priest');
INSERT INTO "artist" ("artist_id", "name") VALUES (99, N'Legi�o Urbana');
INSERT INTO "artist" ("artist_id", "name") VALUES (100, N'Lenny Kravitz');
INSERT INTO "artist" ("artist_id", "name") VALUES (101, N'Lulu Santos');
INSERT INTO "artist" ("artist_id", "name") VALUES (102, N'Marillion');
INSERT INTO "artist" ("artist_id", "name") VALUES (103, N'Marisa Monte');
INSERT INTO "artist" ("artist_id", "name") VALUES (104, N'Marvin Gaye');
INSERT INTO "artist" ("artist_id", "name") VALUES (105, N'Men At Work');
INSERT INTO "artist" ("artist_id", "name") VALUES (106, N'Mot�rhead');
INSERT INTO "artist" ("artist_id", "name") VALUES (107, N'Mot�rhead & Girlschool');
INSERT INTO "artist" ("artist_id", "name") VALUES (108, N'M�nica Marianno');
INSERT INTO "artist" ("artist_id", "name") VALUES (109, N'M�tley Cr�e');
INSERT INTO "artist" ("artist_id", "name") VALUES (110, N'Nirvana');
INSERT INTO "artist" ("artist_id", "name") VALUES (111, N'O Ter�o');
INSERT INTO "artist" ("artist_id", "name") VALUES (112, N'Olodum');
INSERT INTO "artist" ("artist_id", "name") VALUES (113, N'Os Paralamas Do Sucesso');
INSERT INTO "artist" ("artist_id", "name") VALUES (114, N'Ozzy Osbourne');
INSERT INTO "artist" ("artist_id", "name") VALUES (115, N'Page & Plant');
INSERT INTO "artist" ("artist_id", "name") VALUES (116, N'Passengers');
INSERT INTO "artist" ("artist_id", "name") VALUES (117, N'Paul D''Ianno');
INSERT INTO "artist" ("artist_id", "name") VALUES (118, N'Pearl Jam');
INSERT INTO "artist" ("artist_id", "name") VALUES (119, N'Peter Tosh');
INSERT INTO "artist" ("artist_id", "name") VALUES (120, N'Pink Floyd');
INSERT INTO "artist" ("artist_id", "name") VALUES (121, N'Planet Hemp');
INSERT INTO "artist" ("artist_id", "name") VALUES (122, N'R.E.M. Feat. Kate Pearson');
INSERT INTO "artist" ("artist_id", "name") VALUES (123, N'R.E.M. Feat. KRS-One');
INSERT INTO "artist" ("artist_id", "name") VALUES (124, N'R.E.M.');
INSERT INTO "artist" ("artist_id", "name") VALUES (125, N'Raimundos');
INSERT INTO "artist" ("artist_id", "name") VALUES (126, N'Raul Seixas');
INSERT INTO "artist" ("artist_id", "name") VALUES (127, N'Red Hot Chili Peppers');
INSERT INTO "artist" ("artist_id", "name") VALUES (128, N'Rush');
INSERT INTO "artist" ("artist_id", "name") VALUES (129, N'Simply Red');
INSERT INTO "artist" ("artist_id", "name") VALUES (130, N'Skank');
INSERT INTO "artist" ("artist_id", "name") VALUES (131, N'Smashing Pumpkins');
INSERT INTO "artist" ("artist_id", "name") VALUES (132, N'Soundgarden');
INSERT INTO "artist" ("artist_id", "name") VALUES (133, N'Stevie Ray Vaughan & Double Trouble');
INSERT INTO "artist" ("artist_id", "name") VALUES (134, N'Stone Temple Pilots');
INSERT INTO "artist" ("artist_id", "name") VALUES (135, N'System Of A Down');
INSERT INTO "artist" ("artist_id", "name") VALUES (136, N'Terry Bozzio, Tony Levin & Steve Stevens');
INSERT INTO "artist" ("artist_id", "name") VALUES (137, N'The Black Crowes');
INSERT INTO "artist" ("artist_id", "name") VALUES (138, N'The Clash');
INSERT INTO "artist" ("artist_id", "name") VALUES (139, N'The Cult');
INSERT INTO "artist" ("artist_id", "name") VALUES (140, N'The Doors');
INSERT INTO "artist" ("artist_id", "name") VALUES (141, N'The Police');
INSERT INTO "artist" ("artist_id", "name") VALUES (142, N'The Rolling Stones');
INSERT INTO "artist" ("artist_id", "name") VALUES (143, N'The Tea Party');
INSERT INTO "artist" ("artist_id", "name") VALUES (144, N'The Who');
INSERT INTO "artist" ("artist_id", "name") VALUES (145, N'Tim Maia');
INSERT INTO "artist" ("artist_id", "name") VALUES (146, N'Tit�s');
INSERT INTO "artist" ("artist_id", "name") VALUES (147, N'Battlestar Galactica');
INSERT INTO "artist" ("artist_id", "name") VALUES (148, N'Heroes');
INSERT INTO "artist" ("artist_id", "name") VALUES (149, N'Lost');
INSERT INTO "artist" ("artist_id", "name") VALUES (150, N'U2');
INSERT INTO "artist" ("artist_id", "name") VALUES (151, N'UB40');
INSERT INTO "artist" ("artist_id", "name") VALUES (152, N'Van Halen');
INSERT INTO "artist" ("artist_id", "name") VALUES (153, N'Velvet Revolver');
INSERT INTO "artist" ("artist_id", "name") VALUES (154, N'Whitesnake');
INSERT INTO "artist" ("artist_id", "name") VALUES (155, N'Zeca Pagodinho');
INSERT INTO "artist" ("artist_id", "name") VALUES (156, N'The Office');
INSERT INTO "artist" ("artist_id", "name") VALUES (157, N'Dread Zeppelin');
INSERT INTO "artist" ("artist_id", "name") VALUES (158, N'Battlestar Galactica (Classic)');
INSERT INTO "artist" ("artist_id", "name") VALUES (159, N'Aquaman');
INSERT INTO "artist" ("artist_id", "name") VALUES (160, N'Christina Aguilera featuring BigElf');
INSERT INTO "artist" ("artist_id", "name") VALUES (161, N'Aerosmith & Sierra Leone''s Refugee Allstars');
INSERT INTO "artist" ("artist_id", "name") VALUES (162, N'Los Lonely Boys');
INSERT INTO "artist" ("artist_id", "name") VALUES (163, N'Corinne Bailey Rae');
INSERT INTO "artist" ("artist_id", "name") VALUES (164, N'Dhani Harrison & Jakob Dylan');
INSERT INTO "artist" ("artist_id", "name") VALUES (165, N'Jackson Browne');
INSERT INTO "artist" ("artist_id", "name") VALUES (166, N'Avril Lavigne');
INSERT INTO "artist" ("artist_id", "name") VALUES (167, N'Big & Rich');
INSERT INTO "artist" ("artist_id", "name") VALUES (168, N'Youssou N''Dour');
INSERT INTO "artist" ("artist_id", "name") VALUES (169, N'Black Eyed Peas');
INSERT INTO "artist" ("artist_id", "name") VALUES (170, N'Jack Johnson');
INSERT INTO "artist" ("artist_id", "name") VALUES (171, N'Ben Harper');
INSERT INTO "artist" ("artist_id", "name") VALUES (172, N'Snow Patrol');
INSERT INTO "artist" ("artist_id", "name") VALUES (173, N'Matisyahu');
INSERT INTO "artist" ("artist_id", "name") VALUES (174, N'The Postal Service');
INSERT INTO "artist" ("artist_id", "name") VALUES (175, N'Jaguares');
INSERT INTO "artist" ("artist_id", "name") VALUES (176, N'The Flaming Lips');
INSERT INTO "artist" ("artist_id", "name") VALUES (177, N'Jack''s Mannequin & Mick Fleetwood');
INSERT INTO "artist" ("artist_id", "name") VALUES (178, N'Regina Spektor');
INSERT INTO "artist" ("artist_id", "name") VALUES (179, N'Scorpions');
INSERT INTO "artist" ("artist_id", "name") VALUES (180, N'House Of Pain');
INSERT INTO "artist" ("artist_id", "name") VALUES (181, N'Xis');
INSERT INTO "artist" ("artist_id", "name") VALUES (182, N'Nega Gizza');
INSERT INTO "artist" ("artist_id", "name") VALUES (183, N'Gustavo & Andres Veiga & Salazar');
INSERT INTO "artist" ("artist_id", "name") VALUES (184, N'Rodox');
INSERT INTO "artist" ("artist_id", "name") VALUES (185, N'Charlie Brown Jr.');
INSERT INTO "artist" ("artist_id", "name") VALUES (186, N'Pedro Lu�s E A Parede');
INSERT INTO "artist" ("artist_id", "name") VALUES (187, N'Los Hermanos');
INSERT INTO "artist" ("artist_id", "name") VALUES (188, N'Mundo Livre S/A');
INSERT INTO "artist" ("artist_id", "name") VALUES (189, N'Otto');
INSERT INTO "artist" ("artist_id", "name") VALUES (190, N'Instituto');
INSERT INTO "artist" ("artist_id", "name") VALUES (191, N'Na��o Zumbi');
INSERT INTO "artist" ("artist_id", "name") VALUES (192, N'DJ Dolores & Orchestra Santa Massa');
INSERT INTO "artist" ("artist_id", "name") VALUES (193, N'Seu Jorge');
INSERT INTO "artist" ("artist_id", "name") VALUES (194, N'Sabotage E Instituto');
INSERT INTO "artist" ("artist_id", "name") VALUES (195, N'Stereo Maracana');
INSERT INTO "artist" ("artist_id", "name") VALUES (196, N'Cake');
INSERT INTO "artist" ("artist_id", "name") VALUES (197, N'Aisha Duo');
INSERT INTO "artist" ("artist_id", "name") VALUES (198, N'Habib Koit� and Bamada');
INSERT INTO "artist" ("artist_id", "name") VALUES (199, N'Karsh Kale');
INSERT INTO "artist" ("artist_id", "name") VALUES (200, N'The Posies');
INSERT INTO "artist" ("artist_id", "name") VALUES (201, N'Luciana Souza/Romero Lubambo');
INSERT INTO "artist" ("artist_id", "name") VALUES (202, N'Aaron Goldberg');
INSERT INTO "artist" ("artist_id", "name") VALUES (203, N'Nicolaus Esterhazy Sinfonia');
INSERT INTO "artist" ("artist_id", "name") VALUES (204, N'Temple of the Dog');
INSERT INTO "artist" ("artist_id", "name") VALUES (205, N'Chris Cornell');
INSERT INTO "artist" ("artist_id", "name") VALUES (206, N'Alberto Turco & Nova Schola Gregoriana');
INSERT INTO "artist" ("artist_id", "name") VALUES (207, N'Richard Marlow & The Choir of Trinity College, Cambridge');
INSERT INTO "artist" ("artist_id", "name") VALUES (208, N'English Concert & Trevor Pinnock');
INSERT INTO "artist" ("artist_id", "name") VALUES (209, N'Anne-Sophie Mutter, Herbert Von Karajan & Wiener Philharmoniker');
INSERT INTO "artist" ("artist_id", "name") VALUES (210, N'Hilary Hahn, Jeffrey Kahane, Los Angeles Chamber Orchestra & Margaret Batjer');
INSERT INTO "artist" ("artist_id", "name") VALUES (211, N'Wilhelm Kempff');
INSERT INTO "artist" ("artist_id", "name") VALUES (212, N'Yo-Yo Ma');
INSERT INTO "artist" ("artist_id", "name") VALUES (213, N'Scholars Baroque Ensemble');
INSERT INTO "artist" ("artist_id", "name") VALUES (214, N'Academy of St. Martin in the Fields & Sir Neville Marriner');
INSERT INTO "artist" ("artist_id", "name") VALUES (215, N'Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner');
INSERT INTO "artist" ("artist_id", "name") VALUES (216, N'Berliner Philharmoniker, Claudio Abbado & Sabine Meyer');
INSERT INTO "artist" ("artist_id", "name") VALUES (217, N'Royal Philharmonic Orchestra & Sir Thomas Beecham');
INSERT INTO "artist" ("artist_id", "name") VALUES (218, N'Orchestre R�volutionnaire et Romantique & John Eliot Gardiner');
INSERT INTO "artist" ("artist_id", "name") VALUES (219, N'Britten Sinfonia, Ivor Bolton & Lesley Garrett');
INSERT INTO "artist" ("artist_id", "name") VALUES (220, N'Chicago Symphony Chorus, Chicago Symphony Orchestra & Sir Georg Solti');
INSERT INTO "artist" ("artist_id", "name") VALUES (221, N'Sir Georg Solti & Wiener Philharmoniker');
INSERT INTO "artist" ("artist_id", "name") VALUES (222, N'Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair');
INSERT INTO "artist" ("artist_id", "name") VALUES (223, N'London Symphony Orchestra & Sir Charles Mackerras');
INSERT INTO "artist" ("artist_id", "name") VALUES (224, N'Barry Wordsworth & BBC Concert Orchestra');
INSERT INTO "artist" ("artist_id", "name") VALUES (225, N'Herbert Von Karajan, Mirella Freni & Wiener Philharmoniker');
INSERT INTO "artist" ("artist_id", "name") VALUES (226, N'Eugene Ormandy');
INSERT INTO "artist" ("artist_id", "name") VALUES (227, N'Luciano Pavarotti');
INSERT INTO "artist" ("artist_id", "name") VALUES (228, N'Leonard Bernstein & New York Philharmonic');
INSERT INTO "artist" ("artist_id", "name") VALUES (229, N'Boston Symphony Orchestra & Seiji Ozawa');
INSERT INTO "artist" ("artist_id", "name") VALUES (230, N'Aaron Copland & London Symphony Orchestra');
INSERT INTO "artist" ("artist_id", "name") VALUES (231, N'Ton Koopman');
INSERT INTO "artist" ("artist_id", "name") VALUES (232, N'Sergei Prokofiev & Yuri Temirkanov');
INSERT INTO "artist" ("artist_id", "name") VALUES (233, N'Chicago Symphony Orchestra & Fritz Reiner');
INSERT INTO "artist" ("artist_id", "name") VALUES (234, N'Orchestra of The Age of Enlightenment');
INSERT INTO "artist" ("artist_id", "name") VALUES (235, N'Emanuel Ax, Eugene Ormandy & Philadelphia Orchestra');
INSERT INTO "artist" ("artist_id", "name") VALUES (236, N'James Levine');
INSERT INTO "artist" ("artist_id", "name") VALUES (237, N'Berliner Philharmoniker & Hans Rosbaud');
INSERT INTO "artist" ("artist_id", "name") VALUES (238, N'Maurizio Pollini');
INSERT INTO "artist" ("artist_id", "name") VALUES (239, N'Academy of St. Martin in the Fields, Sir Neville Marriner & William Bennett');
INSERT INTO "artist" ("artist_id", "name") VALUES (240, N'Gustav Mahler');
INSERT INTO "artist" ("artist_id", "name") VALUES (241, N'Felix Schmidt, London Symphony Orchestra & Rafael Fr�hbeck de Burgos');
INSERT INTO "artist" ("artist_id", "name") VALUES (242, N'Edo de Waart & San Francisco Symphony');
INSERT INTO "artist" ("artist_id", "name") VALUES (243, N'Antal Dor�ti & London Symphony Orchestra');
INSERT INTO "artist" ("artist_id", "name") VALUES (244, N'Choir Of Westminster Abbey & Simon Preston');
INSERT INTO "artist" ("artist_id", "name") VALUES (245, N'Michael Tilson Thomas & San Francisco Symphony');
INSERT INTO "artist" ("artist_id", "name") VALUES (246, N'Chor der Wiener Staatsoper, Herbert Von Karajan & Wiener Philharmoniker');
INSERT INTO "artist" ("artist_id", "name") VALUES (247, N'The King''s Singers');
INSERT INTO "artist" ("artist_id", "name") VALUES (248, N'Berliner Philharmoniker & Herbert Von Karajan');
INSERT INTO "artist" ("artist_id", "name") VALUES (249, N'Sir Georg Solti, Sumi Jo & Wiener Philharmoniker');
INSERT INTO "artist" ("artist_id", "name") VALUES (250, N'Christopher O''Riley');
INSERT INTO "artist" ("artist_id", "name") VALUES (251, N'Fretwork');
INSERT INTO "artist" ("artist_id", "name") VALUES (252, N'Amy Winehouse');
INSERT INTO "artist" ("artist_id", "name") VALUES (253, N'Calexico');
INSERT INTO "artist" ("artist_id", "name") VALUES (254, N'Otto Klemperer & Philharmonia Orchestra');
INSERT INTO "artist" ("artist_id", "name") VALUES (255, N'Yehudi Menuhin');
INSERT INTO "artist" ("artist_id", "name") VALUES (256, N'Philharmonia Orchestra & Sir Neville Marriner');
INSERT INTO "artist" ("artist_id", "name") VALUES (257, N'Academy of St. Martin in the Fields, Sir Neville Marriner & Thurston Dart');
INSERT INTO "artist" ("artist_id", "name") VALUES (258, N'Les Arts Florissants & William Christie');
INSERT INTO "artist" ("artist_id", "name") VALUES (259, N'The 12 Cellists of The Berlin Philharmonic');
INSERT INTO "artist" ("artist_id", "name") VALUES (260, N'Adrian Leaper & Doreen de Feis');
INSERT INTO "artist" ("artist_id", "name") VALUES (261, N'Roger Norrington, London Classical Players');
INSERT INTO "artist" ("artist_id", "name") VALUES (262, N'Charles Dutoit & L''Orchestre Symphonique de Montr�al');
INSERT INTO "artist" ("artist_id", "name") VALUES (263, N'Equale Brass Ensemble, John Eliot Gardiner & Munich Monteverdi Orchestra and Choir');
INSERT INTO "artist" ("artist_id", "name") VALUES (264, N'Kent Nagano and Orchestre de l''Op�ra de Lyon');
INSERT INTO "artist" ("artist_id", "name") VALUES (265, N'Julian Bream');
INSERT INTO "artist" ("artist_id", "name") VALUES (266, N'Martin Roscoe');
INSERT INTO "artist" ("artist_id", "name") VALUES (267, N'G�teborgs Symfoniker & Neeme J�rvi');
INSERT INTO "artist" ("artist_id", "name") VALUES (268, N'Itzhak Perlman');
INSERT INTO "artist" ("artist_id", "name") VALUES (269, N'Michele Campanella');
INSERT INTO "artist" ("artist_id", "name") VALUES (270, N'Gerald Moore');
INSERT INTO "artist" ("artist_id", "name") VALUES (271, N'Mela Tenenbaum, Pro Musica Prague & Richard Kapp');
INSERT INTO "artist" ("artist_id", "name") VALUES (272, N'Emerson String Quartet');
INSERT INTO "artist" ("artist_id", "name") VALUES (273, N'C. Monteverdi, Nigel Rogers - Chiaroscuro; London Baroque; London Cornett & Sackbu');
INSERT INTO "artist" ("artist_id", "name") VALUES (274, N'Nash Ensemble');
INSERT INTO "artist" ("artist_id", "name") VALUES (275, N'Philip Glass Ensemble');

INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (1, N'For Those About To Rock We Salute You', 1);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (2, N'Balls to the Wall', 2);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (3, N'Restless and Wild', 2);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (4, N'Let There Be Rock', 1);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (5, N'Big Ones', 3);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (6, N'Jagged Little Pill', 4);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (7, N'Facelift', 5);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (8, N'Warner 25 Anos', 6);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (9, N'Plays Metallica By Four Cellos', 7);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (10, N'Audioslave', 8);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (11, N'Out Of Exile', 8);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (12, N'BackBeat Soundtrack', 9);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (13, N'The Best Of Billy Cobham', 10);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (14, N'Alcohol Fueled Brewtality Live! [Disc 1]', 11);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (15, N'Alcohol Fueled Brewtality Live! [Disc 2]', 11);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (16, N'Black Sabbath', 12);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (17, N'Black Sabbath Vol. 4 (Remaster)', 12);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (18, N'Body Count', 13);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (19, N'Chemical Wedding', 14);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (20, N'The Best Of Buddy Guy - The Millenium Collection', 15);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (21, N'Prenda Minha', 16);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (22, N'Sozinho Remix Ao Vivo', 16);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (23, N'Minha Historia', 17);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (24, N'Afrociberdelia', 18);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (25, N'Da Lama Ao Caos', 18);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (26, N'Ac�stico MTV [Live]', 19);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (27, N'Cidade Negra - Hits', 19);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (28, N'Na Pista', 20);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (29, N'Ax� Bahia 2001', 21);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (30, N'BBC Sessions [Disc 1] [Live]', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (31, N'Bongo Fury', 23);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (32, N'Carnaval 2001', 21);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (33, N'Chill: Brazil (Disc 1)', 24);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (34, N'Chill: Brazil (Disc 2)', 6);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (35, N'Garage Inc. (Disc 1)', 50);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (36, N'Greatest Hits II', 51);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (37, N'Greatest Kiss', 52);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (38, N'Heart of the Night', 53);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (39, N'International Superhits', 54);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (40, N'Into The Light', 55);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (41, N'Meus Momentos', 56);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (42, N'Minha Hist�ria', 57);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (43, N'MK III The Final Concerts [Disc 1]', 58);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (44, N'Physical Graffiti [Disc 1]', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (45, N'Sambas De Enredo 2001', 21);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (46, N'Supernatural', 59);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (47, N'The Best of Ed Motta', 37);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (48, N'The Essential Miles Davis [Disc 1]', 68);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (49, N'The Essential Miles Davis [Disc 2]', 68);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (50, N'The Final Concerts (Disc 2)', 58);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (51, N'Up An'' Atom', 69);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (52, N'Vin�cius De Moraes - Sem Limite', 70);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (53, N'Vozes do MPB', 21);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (54, N'Chronicle, Vol. 1', 76);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (55, N'Chronicle, Vol. 2', 76);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (56, N'C�ssia Eller - Cole��o Sem Limite [Disc 2]', 77);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (57, N'C�ssia Eller - Sem Limite [Disc 1]', 77);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (58, N'Come Taste The Band', 58);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (59, N'Deep Purple In Rock', 58);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (60, N'Fireball', 58);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (61, N'Knocking at Your Back Door: The Best Of Deep Purple in the 80''s', 58);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (62, N'Machine Head', 58);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (63, N'Purpendicular', 58);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (64, N'Slaves And Masters', 58);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (65, N'Stormbringer', 58);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (66, N'The Battle Rages On', 58);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (67, N'Vault: Def Leppard''s Greatest Hits', 78);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (68, N'Outbreak', 79);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (69, N'Djavan Ao Vivo - Vol. 02', 80);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (70, N'Djavan Ao Vivo - Vol. 1', 80);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (71, N'Elis Regina-Minha Hist�ria', 41);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (72, N'The Cream Of Clapton', 81);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (73, N'Unplugged', 81);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (74, N'album Of The Year', 82);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (75, N'Angel Dust', 82);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (76, N'King For A Day Fool For A Lifetime', 82);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (77, N'The Real Thing', 82);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (78, N'Deixa Entrar', 83);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (79, N'In Your Honor [Disc 1]', 84);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (80, N'In Your Honor [Disc 2]', 84);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (81, N'One By One', 84);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (82, N'The Colour And The Shape', 84);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (83, N'My Way: The Best Of Frank Sinatra [Disc 1]', 85);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (84, N'Roda De Funk', 86);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (85, N'As Can��es de Eu Tu Eles', 27);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (86, N'Quanta Gente Veio Ver (Live)', 27);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (87, N'Quanta Gente Veio ver--B�nus De Carnaval', 27);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (88, N'Faceless', 87);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (89, N'American Idiot', 54);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (90, N'Appetite for Destruction', 88);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (91, N'Use Your Illusion I', 88);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (92, N'Use Your Illusion II', 88);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (93, N'Blue Moods', 89);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (94, N'A Matter of Life and Death', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (95, N'A Real Dead One', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (96, N'A Real Live One', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (97, N'Brave New World', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (98, N'Dance Of Death', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (99, N'Fear Of The Dark', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (100, N'Iron Maiden', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (101, N'Killers', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (102, N'Live After Death', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (103, N'Live At Donington 1992 (Disc 1)', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (104, N'Live At Donington 1992 (Disc 2)', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (105, N'No Prayer For The Dying', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (106, N'Piece Of Mind', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (107, N'Powerslave', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (108, N'Rock In Rio [CD1]', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (109, N'Rock In Rio [CD2]', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (110, N'Seventh Son of a Seventh Son', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (111, N'Somewhere in Time', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (112, N'The Number of The Beast', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (113, N'The X Factor', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (114, N'Virtual XI', 90);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (115, N'Sex Machine', 91);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (116, N'Emergency On Planet Earth', 92);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (117, N'Synkronized', 92);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (118, N'The Return Of The Space Cowboy', 92);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (119, N'Get Born', 93);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (120, N'Are You Experienced?', 94);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (121, N'Surfing with the Alien (Remastered)', 95);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (122, N'Jorge Ben Jor 25 Anos', 46);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (123, N'Jota Quest-1995', 96);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (124, N'Cafezinho', 97);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (125, N'Living After Midnight', 98);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (126, N'Unplugged [Live]', 52);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (127, N'BBC Sessions [Disc 2] [Live]', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (128, N'Coda', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (129, N'Houses Of The Holy', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (130, N'In Through The Out Door', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (131, N'IV', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (132, N'Led Zeppelin I', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (133, N'Led Zeppelin II', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (134, N'Led Zeppelin III', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (135, N'Physical Graffiti [Disc 2]', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (136, N'Presence', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (137, N'The Song Remains The Same (Disc 1)', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (138, N'The Song Remains The Same (Disc 2)', 22);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (139, N'A TempestadeTempestade Ou O Livro Dos Dias', 99);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (140, N'Mais Do Mesmo', 99);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (141, N'Greatest Hits', 100);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (142, N'Lulu Santos - RCA 100 Anos De M�sica - �lbum 01', 101);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (143, N'Lulu Santos - RCA 100 Anos De M�sica - �lbum 02', 101);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (144, N'Misplaced Childhood', 102);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (145, N'Barulhinho Bom', 103);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (146, N'Seek And Shall Find: More Of The Best (1963-1981)', 104);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (147, N'The Best Of Men At Work', 105);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (148, N'Black album', 50);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (149, N'Garage Inc. (Disc 2)', 50);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (150, N'Kill ''Em All', 50);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (151, N'Load', 50);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (152, N'Master Of Puppets', 50);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (153, N'ReLoad', 50);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (154, N'Ride The Lightning', 50);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (155, N'St. Anger', 50);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (156, N'...And Justice For All', 50);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (157, N'Miles Ahead', 68);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (158, N'Milton Nascimento Ao Vivo', 42);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (159, N'Minas', 42);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (160, N'Ace Of Spades', 106);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (161, N'Demorou...', 108);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (162, N'Motley Crue Greatest Hits', 109);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (163, N'From The Muddy Banks Of The Wishkah [Live]', 110);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (164, N'Nevermind', 110);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (165, N'Compositores', 111);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (166, N'Olodum', 112);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (167, N'Ac�stico MTV', 113);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (168, N'Arquivo II', 113);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (169, N'Arquivo Os Paralamas Do Sucesso', 113);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (170, N'Bark at the Moon (Remastered)', 114);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (171, N'Blizzard of Ozz', 114);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (172, N'Diary of a Madman (Remastered)', 114);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (173, N'No More Tears (Remastered)', 114);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (174, N'Tribute', 114);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (175, N'Walking Into Clarksdale', 115);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (176, N'Original Soundtracks 1', 116);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (177, N'The Beast Live', 117);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (178, N'Live On Two Legs [Live]', 118);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (179, N'Pearl Jam', 118);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (180, N'Riot Act', 118);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (181, N'Ten', 118);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (182, N'Vs.', 118);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (183, N'Dark Side Of The Moon', 120);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (184, N'Os C�es Ladram Mas A Caravana N�o P�ra', 121);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (185, N'Greatest Hits I', 51);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (186, N'News Of The World', 51);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (187, N'Out Of Time', 122);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (188, N'Green', 124);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (189, N'New Adventures In Hi-Fi', 124);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (190, N'The Best Of R.E.M.: The IRS Years', 124);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (191, N'Cesta B�sica', 125);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (192, N'Raul Seixas', 126);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (193, N'Blood Sugar Sex Magik', 127);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (194, N'By The Way', 127);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (195, N'Californication', 127);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (196, N'Retrospective I (1974-1980)', 128);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (197, N'Santana - As Years Go By', 59);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (198, N'Santana Live', 59);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (199, N'Maquinarama', 130);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (200, N'O Samba Pocon�', 130);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (201, N'Judas 0: B-Sides and Rarities', 131);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (202, N'Rotten Apples: Greatest Hits', 131);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (203, N'A-Sides', 132);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (204, N'Morning Dance', 53);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (205, N'In Step', 133);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (206, N'Core', 134);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (207, N'Mezmerize', 135);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (208, N'[1997] Black Light Syndrome', 136);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (209, N'Live [Disc 1]', 137);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (210, N'Live [Disc 2]', 137);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (211, N'The Singles', 138);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (212, N'Beyond Good And Evil', 139);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (213, N'Pure Cult: The Best Of The Cult (For Rockers, Ravers, Lovers & Sinners) [UK]', 139);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (214, N'The Doors', 140);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (215, N'The Police Greatest Hits', 141);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (216, N'Hot Rocks, 1964-1971 (Disc 1)', 142);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (217, N'No Security', 142);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (218, N'Voodoo Lounge', 142);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (219, N'Tangents', 143);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (220, N'Transmission', 143);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (221, N'My Generation - The Very Best Of The Who', 144);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (222, N'Serie Sem Limite (Disc 1)', 145);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (223, N'Serie Sem Limite (Disc 2)', 145);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (224, N'Ac�stico', 146);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (225, N'Volume Dois', 146);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (226, N'Battlestar Galactica: The Story So Far', 147);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (227, N'Battlestar Galactica, Season 3', 147);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (228, N'Heroes, Season 1', 148);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (229, N'Lost, Season 3', 149);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (230, N'Lost, Season 1', 149);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (231, N'Lost, Season 2', 149);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (232, N'Achtung Baby', 150);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (233, N'All That You Can''t Leave Behind', 150);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (234, N'B-Sides 1980-1990', 150);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (235, N'How To Dismantle An Atomic Bomb', 150);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (236, N'Pop', 150);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (237, N'Rattle And Hum', 150);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (238, N'The Best Of 1980-1990', 150);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (239, N'War', 150);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (240, N'Zooropa', 150);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (241, N'UB40 The Best Of - Volume Two [UK]', 151);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (242, N'Diver Down', 152);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (243, N'The Best Of Van Halen, Vol. I', 152);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (244, N'Van Halen', 152);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (245, N'Van Halen III', 152);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (246, N'Contraband', 153);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (247, N'Vinicius De Moraes', 72);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (248, N'Ao Vivo [IMPORT]', 155);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (249, N'The Office, Season 1', 156);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (250, N'The Office, Season 2', 156);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (251, N'The Office, Season 3', 156);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (252, N'Un-Led-Ed', 157);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (253, N'Battlestar Galactica (Classic), Season 1', 158);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (254, N'Aquaman', 159);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (255, N'Instant Karma: The Amnesty International Campaign to Save Darfur', 150);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (256, N'Speak of the Devil', 114);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (257, N'20th Century Masters - The Millennium Collection: The Best of Scorpions', 179);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (258, N'House of Pain', 180);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (259, N'Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henrique Amaro', 36);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (260, N'Cake: B-Sides and Rarities', 196);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (261, N'LOST, Season 4', 149);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (262, N'Quiet Songs', 197);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (263, N'Muso Ko', 198);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (264, N'Realize', 199);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (265, N'Every Kind of Light', 200);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (266, N'Duos II', 201);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (267, N'Worlds', 202);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (268, N'The Best of Beethoven', 203);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (269, N'Temple of the Dog', 204);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (270, N'Carry On', 205);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (271, N'Revelations', 8);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (272, N'Adorate Deum: Gregorian Chant from the Proper of the Mass', 206);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (273, N'Allegri: Miserere', 207);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (274, N'Pachelbel: Canon & Gigue', 208);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (275, N'Vivaldi: The Four Seasons', 209);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (276, N'Bach: Violin Concertos', 210);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (277, N'Bach: Goldberg Variations', 211);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (278, N'Bach: The Cello Suites', 212);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (279, N'Handel: The Messiah (Highlights)', 213);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (280, N'The World of Classical Favourites', 214);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (281, N'Sir Neville Marriner: A Celebration', 215);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (282, N'Mozart: Wind Concertos', 216);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (283, N'Haydn: Symphonies 99 - 104', 217);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (284, N'Beethoven: Symhonies Nos. 5 & 6', 218);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (285, N'A Soprano Inspired', 219);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (286, N'Great Opera Choruses', 220);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (287, N'Wagner: Favourite Overtures', 221);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (288, N'Faur�: Requiem, Ravel: Pavane & Others', 222);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (289, N'Tchaikovsky: The Nutcracker', 223);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (290, N'The Last Night of the Proms', 224);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (291, N'Puccini: Madama Butterfly - Highlights', 225);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (292, N'Holst: The Planets, Op. 32 & Vaughan Williams: Fantasies', 226);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (293, N'Pavarotti''s Opera Made Easy', 227);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (294, N'Great Performances - Barber''s Adagio and Other Romantic Favorites for Strings', 228);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (295, N'Carmina Burana', 229);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (296, N'A Copland Celebration, Vol. I', 230);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (297, N'Bach: Toccata & Fugue in D Minor', 231);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (298, N'Prokofiev: Symphony No.1', 232);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (299, N'Scheherazade', 233);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (300, N'Bach: The Brandenburg Concertos', 234);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (301, N'Chopin: Piano Concertos Nos. 1 & 2', 235);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (302, N'Mascagni: Cavalleria Rusticana', 236);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (303, N'Sibelius: Finlandia', 237);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (304, N'Beethoven Piano Sonatas: Moonlight & Pastorale', 238);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (305, N'Great Recordings of the Century - Mahler: Das Lied von der Erde', 240);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (306, N'Elgar: Cello Concerto & Vaughan Williams: Fantasias', 241);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (307, N'Adams, John: The Chairman Dances', 242);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (308, N'Tchaikovsky: 1812 Festival Overture, Op.49, Capriccio Italien & Beethoven: Wellington''s Victory', 243);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (309, N'Palestrina: Missa Papae Marcelli & Allegri: Miserere', 244);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (310, N'Prokofiev: Romeo & Juliet', 245);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (311, N'Strauss: Waltzes', 226);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (312, N'Berlioz: Symphonie Fantastique', 245);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (313, N'Bizet: Carmen Highlights', 246);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (314, N'English Renaissance', 247);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (315, N'Handel: Music for the Royal Fireworks (Original Version 1749)', 208);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (316, N'Grieg: Peer Gynt Suites & Sibelius: Pell�as et M�lisande', 248);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (317, N'Mozart Gala: Famous Arias', 249);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (318, N'SCRIABIN: Vers la flamme', 250);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (319, N'Armada: Music from the Courts of England and Spain', 251);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (320, N'Mozart: Symphonies Nos. 40 & 41', 248);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (321, N'Back to Black', 252);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (322, N'Frank', 252);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (323, N'Carried to Dust (Bonus track Version)', 253);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (324, N'Beethoven: Symphony No. 6 ''Pastoral'' Etc.', 254);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (325, N'Bartok: Violin & Viola Concertos', 255);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (326, N'Mendelssohn: A Midsummer Night''s Dream', 256);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (327, N'Bach: Orchestral Suites Nos. 1 - 4', 257);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (328, N'Charpentier: Divertissements, Airs & Concerts', 258);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (329, N'South American Getaway', 259);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (330, N'G�recki: Symphony No. 3', 260);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (331, N'Purcell: The Fairy Queen', 261);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (332, N'The Ultimate Relexation album', 262);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (333, N'Purcell: Music for the Queen Mary', 263);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (334, N'Weill: The Seven Deadly Sins', 264);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (335, N'J.S. Bach: Chaconne, Suite in E Minor, Partita in E Major & Prelude, Fugue and Allegro', 265);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (336, N'Prokofiev: Symphony No.5 & Stravinksy: Le Sacre Du Printemps', 248);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (337, N'Szymanowski: Piano Works, Vol. 1', 266);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (338, N'Nielsen: The Six Symphonies', 267);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (339, N'Great Recordings of the Century: Paganini''s 24 Caprices', 268);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (340, N'Liszt - 12 �tudes D''Execution Transcendante', 269);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (341, N'Great Recordings of the Century - Shubert: Schwanengesang, 4 Lieder', 270);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (342, N'Locatelli: Concertos for Violin, Strings and Continuo, Vol. 3', 271);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (343, N'Respighi:Pines of Rome', 226);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (344, N'Schubert: The Late String Quartets & String Quintet (3 CD''s)', 272);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (345, N'Monteverdi: L''Orfeo', 273);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (346, N'Mozart: Chamber Music', 274);
INSERT INTO "album" ("album_id", "title", "artist_id") VALUES (347, N'Koyaanisqatsi (Soundtrack from the Motion Picture)', 275);

INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (1, N'For Those About To Rock (We Salute You)', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 343719, 11170334, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (2, N'Balls to the Wall', 2, 2, 1, 342562, 5510424, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (3, N'Fast As a Shark', 3, 2, 1, N'F. Baltes, S. Kaufman, U. Dirkscneider & W. Hoffman', 230619, 3990994, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (4, N'Restless and Wild', 3, 2, 1, N'F. Baltes, R.A. Smith-Diesel, S. Kaufman, U. Dirkscneider & W. Hoffman', 252051, 4331779, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (5, N'Princess of the Dawn', 3, 2, 1, N'Deaffy & R.A. Smith-Diesel', 375418, 6290521, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (6, N'Put The Finger On You', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 205662, 6713451, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (7, N'Let''s Get It Up', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 233926, 7636561, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (8, N'Inject The Venom', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 210834, 6852860, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (9, N'Snowballed', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 203102, 6599424, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (10, N'Evil Walks', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 263497, 8611245, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (11, N'C.O.D.', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 199836, 6566314, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (12, N'Breaking The Rules', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 263288, 8596840, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (13, N'Night Of The Long Knives', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 205688, 6706347, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (14, N'Spellbound', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 270863, 8817038, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (15, N'Go Down', 4, 1, 1, N'AC/DC', 331180, 10847611, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (16, N'Dog Eat Dog', 4, 1, 1, N'AC/DC', 215196, 7032162, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (17, N'Let There Be Rock', 4, 1, 1, N'AC/DC', 366654, 12021261, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (18, N'Bad Boy Boogie', 4, 1, 1, N'AC/DC', 267728, 8776140, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (19, N'Problem Child', 4, 1, 1, N'AC/DC', 325041, 10617116, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (20, N'Overdose', 4, 1, 1, N'AC/DC', 369319, 12066294, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (21, N'Hell Ain''t A Bad Place To Be', 4, 1, 1, N'AC/DC', 254380, 8331286, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (22, N'Whole Lotta Rosie', 4, 1, 1, N'AC/DC', 323761, 10547154, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (23, N'Walk On Water', 5, 1, 1, N'Steven Tyler, Joe Perry, Jack Blades, Tommy Shaw', 295680, 9719579, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (24, N'Love In An Elevator', 5, 1, 1, N'Steven Tyler, Joe Perry', 321828, 10552051, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (25, N'Rag Doll', 5, 1, 1, N'Steven Tyler, Joe Perry, Jim Vallance, Holly Knight', 264698, 8675345, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (26, N'What It Takes', 5, 1, 1, N'Steven Tyler, Joe Perry, Desmond Child', 310622, 10144730, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (27, N'Dude (Looks Like A Lady)', 5, 1, 1, N'Steven Tyler, Joe Perry, Desmond Child', 264855, 8679940, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (28, N'Janie''s Got A Gun', 5, 1, 1, N'Steven Tyler, Tom Hamilton', 330736, 10869391, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (29, N'Cryin''', 5, 1, 1, N'Steven Tyler, Joe Perry, Taylor Rhodes', 309263, 10056995, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (30, N'Amazing', 5, 1, 1, N'Steven Tyler, Richie Supa', 356519, 11616195, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (31, N'Blind Man', 5, 1, 1, N'Steven Tyler, Joe Perry, Taylor Rhodes', 240718, 7877453, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (32, N'Deuces Are Wild', 5, 1, 1, N'Steven Tyler, Jim Vallance', 215875, 7074167, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (33, N'The Other Side', 5, 1, 1, N'Steven Tyler, Jim Vallance', 244375, 7983270, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (34, N'Crazy', 5, 1, 1, N'Steven Tyler, Joe Perry, Desmond Child', 316656, 10402398, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (35, N'Eat The Rich', 5, 1, 1, N'Steven Tyler, Joe Perry, Jim Vallance', 251036, 8262039, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (36, N'Angel', 5, 1, 1, N'Steven Tyler, Desmond Child', 307617, 9989331, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (37, N'Livin'' On The Edge', 5, 1, 1, N'Steven Tyler, Joe Perry, Mark Hudson', 381231, 12374569, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (38, N'All I Really Want', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 284891, 9375567, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (39, N'You Oughta Know', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 249234, 8196916, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (40, N'Perfect', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 188133, 6145404, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (41, N'Hand In My Pocket', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 221570, 7224246, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (42, N'Right Through You', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 176117, 5793082, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (43, N'Forgiven', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 300355, 9753256, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (44, N'You Learn', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 239699, 7824837, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (45, N'Head Over Feet', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 267493, 8758008, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (46, N'Mary Jane', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 280607, 9163588, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (47, N'Ironic', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 229825, 7598866, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (48, N'Not The Doctor', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 227631, 7604601, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (49, N'Wake Up', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 293485, 9703359, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (50, N'You Oughta Know (Alternate)', 6, 1, 1, N'Alanis Morissette & Glenn Ballard', 491885, 16008629, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (51, N'We Die Young', 7, 1, 1, N'Jerry Cantrell', 152084, 4925362, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (52, N'Man In The Box', 7, 1, 1, N'Jerry Cantrell, Layne Staley', 286641, 9310272, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (53, N'Sea Of Sorrow', 7, 1, 1, N'Jerry Cantrell', 349831, 11316328, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (54, N'Bleed The Freak', 7, 1, 1, N'Jerry Cantrell', 241946, 7847716, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (55, N'I Can''t Remember', 7, 1, 1, N'Jerry Cantrell, Layne Staley', 222955, 7302550, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (56, N'Love, Hate, Love', 7, 1, 1, N'Jerry Cantrell, Layne Staley', 387134, 12575396, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (57, N'It Ain''t Like That', 7, 1, 1, N'Jerry Cantrell, Michael Starr, Sean Kinney', 277577, 8993793, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (58, N'Sunshine', 7, 1, 1, N'Jerry Cantrell', 284969, 9216057, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (59, N'Put You Down', 7, 1, 1, N'Jerry Cantrell', 196231, 6420530, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (60, N'Confusion', 7, 1, 1, N'Jerry Cantrell, Michael Starr, Layne Staley', 344163, 11183647, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (61, N'I Know Somethin (Bout You)', 7, 1, 1, N'Jerry Cantrell', 261955, 8497788, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (62, N'Real Thing', 7, 1, 1, N'Jerry Cantrell, Layne Staley', 243879, 7937731, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (63, N'Desafinado', 8, 1, 2, 185338, 5990473, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (64, N'Garota De Ipanema', 8, 1, 2, 285048, 9348428, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (65, N'Samba De Uma Nota S� (One Note Samba)', 8, 1, 2, 137273, 4535401, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (66, N'Por Causa De Voc�', 8, 1, 2, 169900, 5536496, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (67, N'Ligia', 8, 1, 2, 251977, 8226934, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (68, N'Fotografia', 8, 1, 2, 129227, 4198774, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (69, N'Dindi (Dindi)', 8, 1, 2, 253178, 8149148, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (70, N'Se Todos Fossem Iguais A Voc� (Instrumental)', 8, 1, 2, 134948, 4393377, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (71, N'Falando De Amor', 8, 1, 2, 219663, 7121735, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (72, N'Angela', 8, 1, 2, 169508, 5574957, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (73, N'Corcovado (Quiet Nights Of Quiet Stars)', 8, 1, 2, 205662, 6687994, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (74, N'Outra Vez', 8, 1, 2, 126511, 4110053, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (75, N'O Boto (B�to)', 8, 1, 2, 366837, 12089673, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (76, N'Canta, Canta Mais', 8, 1, 2, 271856, 8719426, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (77, N'Enter Sandman', 9, 1, 3, N'Apocalyptica', 221701, 7286305, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (78, N'Master Of Puppets', 9, 1, 3, N'Apocalyptica', 436453, 14375310, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (79, N'Harvester Of Sorrow', 9, 1, 3, N'Apocalyptica', 374543, 12372536, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (80, N'The Unforgiven', 9, 1, 3, N'Apocalyptica', 322925, 10422447, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (81, N'Sad But True', 9, 1, 3, N'Apocalyptica', 288208, 9405526, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (82, N'Creeping Death', 9, 1, 3, N'Apocalyptica', 308035, 10110980, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (83, N'Wherever I May Roam', 9, 1, 3, N'Apocalyptica', 369345, 12033110, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (84, N'Welcome Home (Sanitarium)', 9, 1, 3, N'Apocalyptica', 350197, 11406431, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (85, N'Cochise', 10, 1, 1, N'Audioslave/Chris Cornell', 222380, 5339931, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (86, N'Show Me How to Live', 10, 1, 1, N'Audioslave/Chris Cornell', 277890, 6672176, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (87, N'Gasoline', 10, 1, 1, N'Audioslave/Chris Cornell', 279457, 6709793, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (88, N'What You Are', 10, 1, 1, N'Audioslave/Chris Cornell', 249391, 5988186, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (89, N'Like a Stone', 10, 1, 1, N'Audioslave/Chris Cornell', 294034, 7059624, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (90, N'Set It Off', 10, 1, 1, N'Audioslave/Chris Cornell', 263262, 6321091, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (91, N'Shadow on the Sun', 10, 1, 1, N'Audioslave/Chris Cornell', 343457, 8245793, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (92, N'I am the Highway', 10, 1, 1, N'Audioslave/Chris Cornell', 334942, 8041411, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (93, N'Exploder', 10, 1, 1, N'Audioslave/Chris Cornell', 206053, 4948095, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (94, N'Hypnotize', 10, 1, 1, N'Audioslave/Chris Cornell', 206628, 4961887, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (95, N'Bring''em Back Alive', 10, 1, 1, N'Audioslave/Chris Cornell', 329534, 7911634, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (96, N'Light My Way', 10, 1, 1, N'Audioslave/Chris Cornell', 303595, 7289084, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (97, N'Getaway Car', 10, 1, 1, N'Audioslave/Chris Cornell', 299598, 7193162, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (98, N'The Last Remaining Light', 10, 1, 1, N'Audioslave/Chris Cornell', 317492, 7622615, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (99, N'Your Time Has Come', 11, 1, 4, N'Cornell, Commerford, Morello, Wilk', 255529, 8273592, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (100, N'Out Of Exile', 11, 1, 4, N'Cornell, Commerford, Morello, Wilk', 291291, 9506571, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (101, N'Be Yourself', 11, 1, 4, N'Cornell, Commerford, Morello, Wilk', 279484, 9106160, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (102, N'Doesn''t Remind Me', 11, 1, 4, N'Cornell, Commerford, Morello, Wilk', 255869, 8357387, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (103, N'Drown Me Slowly', 11, 1, 4, N'Cornell, Commerford, Morello, Wilk', 233691, 7609178, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (104, N'Heaven''s Dead', 11, 1, 4, N'Cornell, Commerford, Morello, Wilk', 276688, 9006158, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (105, N'The Worm', 11, 1, 4, N'Cornell, Commerford, Morello, Wilk', 237714, 7710800, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (106, N'Man Or Animal', 11, 1, 4, N'Cornell, Commerford, Morello, Wilk', 233195, 7542942, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (107, N'Yesterday To Tomorrow', 11, 1, 4, N'Cornell, Commerford, Morello, Wilk', 273763, 8944205, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (108, N'Dandelion', 11, 1, 4, N'Cornell, Commerford, Morello, Wilk', 278125, 9003592, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (109, N'#1 Zero', 11, 1, 4, N'Cornell, Commerford, Morello, Wilk', 299102, 9731988, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (110, N'The Curse', 11, 1, 4, N'Cornell, Commerford, Morello, Wilk', 309786, 10029406, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (111, N'Money', 12, 1, 5, N'Berry Gordy, Jr./Janie Bradford', 147591, 2365897, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (112, N'Long Tall Sally', 12, 1, 5, N'Enotris Johnson/Little Richard/Robert "Bumps" Blackwell', 106396, 1707084, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (113, N'Bad Boy', 12, 1, 5, N'Larry Williams', 116088, 1862126, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (114, N'Twist And Shout', 12, 1, 5, N'Bert Russell/Phil Medley', 161123, 2582553, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (115, N'Please Mr. Postman', 12, 1, 5, N'Brian Holland/Freddie Gorman/Georgia Dobbins/Robert Bateman/William Garrett', 137639, 2206986, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (116, N'C''Mon Everybody', 12, 1, 5, N'Eddie Cochran/Jerry Capehart', 140199, 2247846, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (117, N'Rock ''N'' Roll Music', 12, 1, 5, N'Chuck Berry', 141923, 2276788, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (118, N'Slow Down', 12, 1, 5, N'Larry Williams', 163265, 2616981, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (119, N'Roadrunner', 12, 1, 5, N'Bo Diddley', 143595, 2301989, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (120, N'Carol', 12, 1, 5, N'Chuck Berry', 143830, 2306019, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (121, N'Good Golly Miss Molly', 12, 1, 5, N'Little Richard', 106266, 1704918, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (122, N'20 Flight Rock', 12, 1, 5, N'Ned Fairchild', 107807, 1299960, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (123, N'Quadrant', 13, 1, 2, N'Billy Cobham', 261851, 8538199, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (124, N'Snoopy''s search-Red baron', 13, 1, 2, N'Billy Cobham', 456071, 15075616, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (125, N'Spanish moss-"A sound portrait"-Spanish moss', 13, 1, 2, N'Billy Cobham', 248084, 8217867, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (126, N'Moon germs', 13, 1, 2, N'Billy Cobham', 294060, 9714812, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (127, N'Stratus', 13, 1, 2, N'Billy Cobham', 582086, 19115680, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (128, N'The pleasant pheasant', 13, 1, 2, N'Billy Cobham', 318066, 10630578, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (129, N'Solo-Panhandler', 13, 1, 2, N'Billy Cobham', 246151, 8230661, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (130, N'Do what cha wanna', 13, 1, 2, N'George Duke', 274155, 9018565, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (131, N'Intro/ Low Down', 14, 1, 3, 323683, 10642901, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (132, N'13 Years Of Grief', 14, 1, 3, 246987, 8137421, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (133, N'Stronger Than Death', 14, 1, 3, 300747, 9869647, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (134, N'All For You', 14, 1, 3, 235833, 7726948, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (135, N'Super Terrorizer', 14, 1, 3, 319373, 10513905, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (136, N'Phoney Smile Fake Hellos', 14, 1, 3, 273606, 9011701, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (137, N'Lost My Better Half', 14, 1, 3, 284081, 9355309, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (138, N'Bored To Tears', 14, 1, 3, 247327, 8130090, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (139, N'A.N.D.R.O.T.A.Z.', 14, 1, 3, 266266, 8574746, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (140, N'Born To Booze', 14, 1, 3, 282122, 9257358, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (141, N'World Of Trouble', 14, 1, 3, 359157, 11820932, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (142, N'No More Tears', 14, 1, 3, 555075, 18041629, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (143, N'The Begining... At Last', 14, 1, 3, 365662, 11965109, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (144, N'Heart Of Gold', 15, 1, 3, 194873, 6417460, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (145, N'Snowblind', 15, 1, 3, 420022, 13842549, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (146, N'Like A Bird', 15, 1, 3, 276532, 9115657, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (147, N'Blood In The Wall', 15, 1, 3, 284368, 9359475, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (148, N'The Beginning...At Last', 15, 1, 3, 271960, 8975814, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (149, N'Black Sabbath', 16, 1, 3, 382066, 12440200, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (150, N'The Wizard', 16, 1, 3, 264829, 8646737, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (151, N'Behind The Wall Of Sleep', 16, 1, 3, 217573, 7169049, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (152, N'N.I.B.', 16, 1, 3, 368770, 12029390, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (153, N'Evil Woman', 16, 1, 3, 204930, 6655170, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (154, N'Sleeping Village', 16, 1, 3, 644571, 21128525, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (155, N'Warning', 16, 1, 3, 212062, 6893363, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (156, N'Wheels Of Confusion / The Straightener', 17, 1, 3, N'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 494524, 16065830, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (157, N'Tomorrow''s Dream', 17, 1, 3, N'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 192496, 6252071, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (158, N'Changes', 17, 1, 3, N'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 286275, 9175517, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (159, N'FX', 17, 1, 3, N'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 103157, 3331776, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (160, N'Supernaut', 17, 1, 3, N'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 285779, 9245971, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (161, N'Snowblind', 17, 1, 3, N'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 331676, 10813386, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (162, N'Cornucopia', 17, 1, 3, N'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 234814, 7653880, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (163, N'Laguna Sunrise', 17, 1, 3, N'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 173087, 5671374, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (164, N'St. Vitus Dance', 17, 1, 3, N'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 149655, 4884969, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (165, N'Under The Sun/Every Day Comes and Goes', 17, 1, 3, N'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 350458, 11360486, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (166, N'Smoked Pork', 18, 1, 4, 47333, 1549074, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (167, N'Body Count''s In The House', 18, 1, 4, 204251, 6715413, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (168, N'Now Sports', 18, 1, 4, 4884, 161266, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (169, N'Body Count', 18, 1, 4, 317936, 10489139, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (170, N'A Statistic', 18, 1, 4, 6373, 211997, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (171, N'Bowels Of The Devil', 18, 1, 4, 223216, 7324125, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (172, N'The Real Problem', 18, 1, 4, 11650, 387360, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (173, N'KKK Bitch', 18, 1, 4, 173008, 5709631, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (174, N'D Note', 18, 1, 4, 95738, 3067064, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (175, N'Voodoo', 18, 1, 4, 300721, 9875962, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (176, N'The Winner Loses', 18, 1, 4, 392254, 12843821, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (177, N'There Goes The Neighborhood', 18, 1, 4, 350171, 11443471, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (178, N'Oprah', 18, 1, 4, 6635, 224313, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (179, N'Evil Dick', 18, 1, 4, 239020, 7828873, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (180, N'Body Count Anthem', 18, 1, 4, 166426, 5463690, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (181, N'Momma''s Gotta Die Tonight', 18, 1, 4, 371539, 12122946, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (182, N'Freedom Of Speech', 18, 1, 4, 281234, 9337917, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (183, N'King In Crimson', 19, 1, 3, N'Roy Z', 283167, 9218499, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (184, N'Chemical Wedding', 19, 1, 3, N'Roy Z', 246177, 8022764, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (185, N'The Tower', 19, 1, 3, N'Roy Z', 285257, 9435693, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (186, N'Killing Floor', 19, 1, 3, N'Adrian Smith', 269557, 8854240, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (187, N'Book Of Thel', 19, 1, 3, N'Eddie Casillas/Roy Z', 494393, 16034404, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (188, N'Gates Of Urizen', 19, 1, 3, N'Roy Z', 265351, 8627004, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (189, N'Jerusalem', 19, 1, 3, N'Roy Z', 402390, 13194463, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (190, N'Trupets Of Jericho', 19, 1, 3, N'Roy Z', 359131, 11820908, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (191, N'Machine Men', 19, 1, 3, N'Adrian Smith', 341655, 11138147, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (192, N'The Alchemist', 19, 1, 3, N'Roy Z', 509413, 16545657, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (193, N'Realword', 19, 1, 3, N'Roy Z', 237531, 7802095, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (194, N'First Time I Met The Blues', 20, 1, 6, N'Eurreal Montgomery', 140434, 4604995, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (195, N'Let Me Love You Baby', 20, 1, 6, N'Willie Dixon', 175386, 5716994, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (196, N'Stone Crazy', 20, 1, 6, N'Buddy Guy', 433397, 14184984, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (197, N'Pretty Baby', 20, 1, 6, N'Willie Dixon', 237662, 7848282, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (198, N'When My Left Eye Jumps', 20, 1, 6, N'Al Perkins/Willie Dixon', 235311, 7685363, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (199, N'Leave My Girl Alone', 20, 1, 6, N'Buddy Guy', 204721, 6859518, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (200, N'She Suits Me To A Tee', 20, 1, 6, N'Buddy Guy', 136803, 4456321, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (201, N'Keep It To Myself (Aka Keep It To Yourself)', 20, 1, 6, N'Sonny Boy Williamson [I]', 166060, 5487056, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (202, N'My Time After Awhile', 20, 1, 6, N'Robert Geddins/Ron Badger/Sheldon Feinberg', 182491, 6022698, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (203, N'Too Many Ways (Alternate)', 20, 1, 6, N'Willie Dixon', 135053, 4459946, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (204, N'Talkin'' ''Bout Women Obviously', 20, 1, 6, N'Amos Blakemore/Buddy Guy', 589531, 19161377, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (205, N'Jorge Da Capad�cia', 21, 1, 7, N'Jorge Ben', 177397, 5842196, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (206, N'Prenda Minha', 21, 1, 7, N'Tradicional', 99369, 3225364, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (207, N'Medita��o', 21, 1, 7, N'Tom Jobim - Newton Mendo�a', 148793, 4865597, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (208, N'Terra', 21, 1, 7, N'Caetano Veloso', 482429, 15889054, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (209, N'Eclipse Oculto', 21, 1, 7, N'Caetano Veloso', 221936, 7382703, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (210, N'Texto "Verdade Tropical"', 21, 1, 7, N'Caetano Veloso', 84088, 2752161, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (211, N'Bem Devagar', 21, 1, 7, N'Gilberto Gil', 133172, 4333651, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (212, N'Dr�o', 21, 1, 7, N'Gilberto Gil', 156264, 5065932, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (213, N'Saudosismo', 21, 1, 7, N'Caetano Veloso', 144326, 4726981, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (214, N'Carolina', 21, 1, 7, N'Chico Buarque', 181812, 5924159, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (215, N'Sozinho', 21, 1, 7, N'Peninha', 190589, 6253200, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (216, N'Esse Cara', 21, 1, 7, N'Caetano Veloso', 223111, 7217126, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (217, N'Mel', 21, 1, 7, N'Caetano Veloso - Waly Salom�o', 294765, 9854062, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (218, N'Linha Do Equador', 21, 1, 7, N'Caetano Veloso - Djavan', 299337, 10003747, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (219, N'Odara', 21, 1, 7, N'Caetano Veloso', 141270, 4704104, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (220, N'A Luz De Tieta', 21, 1, 7, N'Caetano Veloso', 251742, 8507446, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (221, N'Atr�s Da Verd-E-Rosa S� N�o Vai Quem J� Morreu', 21, 1, 7, N'David Corr�a - Paulinho Carvalho - Carlos Sena - Bira do Ponto', 307252, 10364247, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (222, N'Vida Boa', 21, 1, 7, N'Fausto Nilo - Armandinho', 281730, 9411272, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (223, N'Sozinho (Hitmakers Classic Mix)', 22, 1, 7, 436636, 14462072, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (224, N'Sozinho (Hitmakers Classic Radio Edit)', 22, 1, 7, 195004, 6455134, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (225, N'Sozinho (Ca�drum ''n'' Bass)', 22, 1, 7, 328071, 10975007, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (226, N'Carolina', 23, 1, 7, 163056, 5375395, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (227, N'Essa Mo�a Ta Diferente', 23, 1, 7, 167235, 5568574, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (228, N'Vai Passar', 23, 1, 7, 369763, 12359161, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (229, N'Samba De Orly', 23, 1, 7, 162429, 5431854, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (230, N'Bye, Bye Brasil', 23, 1, 7, 283402, 9499590, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (231, N'Atras Da Porta', 23, 1, 7, 189675, 6132843, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (232, N'Tatuagem', 23, 1, 7, 172120, 5645703, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (233, N'O Que Ser� (� Flor Da Terra)', 23, 1, 7, 167288, 5574848, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (234, N'Morena De Angola', 23, 1, 7, 186801, 6373932, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (235, N'Apesar De Voc�', 23, 1, 7, 234501, 7886937, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (236, N'A Banda', 23, 1, 7, 132493, 4349539, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (237, N'Minha Historia', 23, 1, 7, 182256, 6029673, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (238, N'Com A��car E Com Afeto', 23, 1, 7, 175386, 5846442, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (239, N'Brejo Da Cruz', 23, 1, 7, 214099, 7270749, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (240, N'Meu Caro Amigo', 23, 1, 7, 260257, 8778172, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (241, N'Geni E O Zepelim', 23, 1, 7, 317570, 10342226, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (242, N'Trocando Em Mi�dos', 23, 1, 7, 169717, 5461468, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (243, N'Vai Trabalhar Vagabundo', 23, 1, 7, 139154, 4693941, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (244, N'Gota D''�gua', 23, 1, 7, 153208, 5074189, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (245, N'Constru��o / Deus Lhe Pague', 23, 1, 7, 383059, 12675305, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (246, N'Mateus Enter', 24, 1, 7, N'Chico Science', 33149, 1103013, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (247, N'O Cidad�o Do Mundo', 24, 1, 7, N'Chico Science', 200933, 6724966, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (248, N'Etnia', 24, 1, 7, N'Chico Science', 152555, 5061413, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (249, N'Quilombo Groove [Instrumental]', 24, 1, 7, N'Chico Science', 151823, 5042447, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (250, N'Mac�', 24, 1, 7, N'Chico Science', 249600, 8253934, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (251, N'Um Passeio No Mundo Livre', 24, 1, 7, N'Chico Science', 240091, 7984291, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (252, N'Samba Do Lado', 24, 1, 7, N'Chico Science', 227317, 7541688, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (253, N'Maracatu At�mico', 24, 1, 7, N'Chico Science', 284264, 9670057, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (254, N'O Encontro De Isaac Asimov Com Santos Dumont No C�u', 24, 1, 7, N'Chico Science', 99108, 3240816, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (255, N'Corpo De Lama', 24, 1, 7, N'Chico Science', 232672, 7714954, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (256, N'Sobremesa', 24, 1, 7, N'Chico Science', 240091, 7960868, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (257, N'Manguetown', 24, 1, 7, N'Chico Science', 194560, 6475159, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (258, N'Um Sat�lite Na Cabe�a', 24, 1, 7, N'Chico Science', 126615, 4272821, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (259, N'Bai�o Ambiental [Instrumental]', 24, 1, 7, N'Chico Science', 152659, 5198539, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (260, N'Sangue De Bairro', 24, 1, 7, N'Chico Science', 132231, 4415557, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (261, N'Enquanto O Mundo Explode', 24, 1, 7, N'Chico Science', 88764, 2968650, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (262, N'Interlude Zumbi', 24, 1, 7, N'Chico Science', 71627, 2408550, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (263, N'Crian�a De Domingo', 24, 1, 7, N'Chico Science', 208222, 6984813, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (264, N'Amor De Muito', 24, 1, 7, N'Chico Science', 175333, 5881293, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (265, N'Samidarish [Instrumental]', 24, 1, 7, N'Chico Science', 272431, 8911641, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (266, N'Maracatu At�mico [Atomic Version]', 24, 1, 7, N'Chico Science', 273084, 9019677, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (267, N'Maracatu At�mico [Ragga Mix]', 24, 1, 7, N'Chico Science', 210155, 6986421, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (268, N'Maracatu At�mico [Trip Hop]', 24, 1, 7, N'Chico Science', 221492, 7380787, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (269, N'Banditismo Por Uma Questa', 25, 1, 7, 307095, 10251097, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (270, N'Banditismo Por Uma Questa', 25, 1, 7, 243644, 8147224, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (271, N'Rios Pontes & Overdrives', 25, 1, 7, 286720, 9659152, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (272, N'Cidade', 25, 1, 7, 216346, 7241817, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (273, N'Praiera', 25, 1, 7, 183640, 6172781, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (274, N'Samba Makossa', 25, 1, 7, 271856, 9095410, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (275, N'Da Lama Ao Caos', 25, 1, 7, 251559, 8378065, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (276, N'Maracatu De Tiro Certeiro', 25, 1, 7, 88868, 2901397, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (277, N'Salustiano Song', 25, 1, 7, 215405, 7183969, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (278, N'Antene Se', 25, 1, 7, 248372, 8253618, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (279, N'Risoflora', 25, 1, 7, 105586, 3536938, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (280, N'Lixo Do Mangue', 25, 1, 7, 193253, 6534200, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (281, N'Computadores Fazem Arte', 25, 1, 7, 404323, 13702771, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (282, N'Girassol', 26, 1, 8, N'Bino Farias/Da Gama/Laz�o/Pedro Luis/Toni Garrido', 249808, 8327676, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (283, N'A Sombra Da Maldade', 26, 1, 8, N'Da Gama/Toni Garrido', 230922, 7697230, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (284, N'Johnny B. Goode', 26, 1, 8, N'Chuck Berry', 254615, 8505985, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (285, N'Soldado Da Paz', 26, 1, 8, N'Herbert Vianna', 194220, 6455080, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (286, N'Firmamento', 26, 1, 8, N'Bino Farias/Da Gama/Henry Lawes/Laz�o/Toni Garrido/Winston Foser-Vers', 222145, 7402658, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (287, N'Extra', 26, 1, 8, N'Gilberto Gil', 304352, 10078050, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (288, N'O Er�', 26, 1, 8, N'Bernardo Vilhena/Bino Farias/Da Gama/Laz�o/Toni Garrido', 236382, 7866924, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (289, N'Podes Crer', 26, 1, 8, N'Bino Farias/Da Gama/Laz�o/Toni Garrido', 232280, 7747747, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (290, N'A Estrada', 26, 1, 8, N'Bino Farias/Da Gama/Laz�o/Toni Garrido', 248842, 8275673, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (291, N'Berlim', 26, 1, 8, N'Da Gama/Toni Garrido', 207542, 6920424, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (292, N'J� Foi', 26, 1, 8, N'Bino Farias/Da Gama/Laz�o/Toni Garrido', 221544, 7388466, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (293, N'Onde Voc� Mora?', 26, 1, 8, N'Marisa Monte/Nando Reis', 256026, 8502588, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (294, N'Pensamento', 26, 1, 8, N'Bino Farias/Da Gamma/Laz�o/R�s Bernard', 173008, 5748424, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (295, N'Concilia��o', 26, 1, 8, N'Da Gama/Laz�o/R�s Bernardo', 257619, 8552474, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (296, N'Realidade Virtual', 26, 1, 8, N'Bino Farias/Da Gama/Laz�o/Toni Garrido', 195239, 6503533, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (297, N'Mensagem', 26, 1, 8, N'Bino Farias/Da Gama/Laz�o/R�s Bernardo', 225332, 7488852, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (298, N'A Cor Do Sol', 26, 1, 8, N'Bernardo Vilhena/Da Gama/Laz�o', 231392, 7663348, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (299, N'Onde Voc� Mora?', 27, 1, 8, N'Marisa Monte/Nando Reis', 298396, 10056970, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (300, N'O Er�', 27, 1, 8, N'Bernardo Vilhena/Bino/Da Gama/Lazao/Toni Garrido', 206942, 6950332, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (301, N'A Sombra Da Maldade', 27, 1, 8, N'Da Gama/Toni Garrido', 285231, 9544383, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (302, N'A Estrada', 27, 1, 8, N'Da Gama/Lazao/Toni Garrido', 282174, 9344477, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (303, N'Falar A Verdade', 27, 1, 8, N'Bino/Da Gama/Ras Bernardo', 244950, 8189093, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (304, N'Firmamento', 27, 1, 8, N'Harry Lawes/Winston Foster-Vers', 225488, 7507866, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (305, N'Pensamento', 27, 1, 8, N'Bino/Da Gama/Ras Bernardo', 192391, 6399761, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (306, N'Realidade Virtual', 27, 1, 8, N'Bino/Da Gamma/Lazao/Toni Garrido', 240300, 8069934, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (307, N'Doutor', 27, 1, 8, N'Bino/Da Gama/Toni Garrido', 178155, 5950952, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (308, N'Na Frente Da TV', 27, 1, 8, N'Bino/Da Gama/Lazao/Ras Bernardo', 289750, 9633659, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (309, N'Downtown', 27, 1, 8, N'Cidade Negra', 239725, 8024386, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (310, N'S�bado A Noite', 27, 1, 8, N'Lulu Santos', 267363, 8895073, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (311, N'A Cor Do Sol', 27, 1, 8, N'Bernardo Vilhena/Da Gama/Lazao', 273031, 9142937, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (312, N'Eu Tamb�m Quero Beijar', 27, 1, 8, N'Fausto Nilo/Moraes Moreira/Pepeu Gomes', 211147, 7029400, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (313, N'Noite Do Prazer', 28, 1, 7, 311353, 10309980, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (314, N'� Francesa', 28, 1, 7, 244532, 8150846, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (315, N'Cada Um Cada Um (A Namoradeira)', 28, 1, 7, 253492, 8441034, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (316, N'Linha Do Equador', 28, 1, 7, 244715, 8123466, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (317, N'Amor Demais', 28, 1, 7, 254040, 8420093, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (318, N'F�rias', 28, 1, 7, 264202, 8731945, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (319, N'Gostava Tanto De Voc�', 28, 1, 7, 230452, 7685326, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (320, N'Flor Do Futuro', 28, 1, 7, 275748, 9205941, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (321, N'Felicidade Urgente', 28, 1, 7, 266605, 8873358, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (322, N'Livre Pra Viver', 28, 1, 7, 214595, 7111596, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (323, N'Dig-Dig, Lambe-Lambe (Ao Vivo)', 29, 1, 9, N'Cassiano Costa/Cintia Maviane/J.F./Lucas Costa', 205479, 6892516, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (324, N'Perer�', 29, 1, 9, N'Augusto Concei��o/Chiclete Com Banana', 198661, 6643207, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (325, N'TriboTchan', 29, 1, 9, N'Cal Adan/Paulo Levi', 194194, 6507950, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (326, N'Tapa Aqui, Descobre Ali', 29, 1, 9, N'Paulo Levi/W. Rangel', 188630, 6327391, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (327, N'Daniela', 29, 1, 9, N'Jorge Cardoso/Pierre Onasis', 230791, 7748006, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (328, N'Bate Lata', 29, 1, 9, N'F�bio Nolasco/Gal Sales/Ivan Brasil', 206733, 7034985, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (329, N'Garotas do Brasil', 29, 1, 9, N'Garay, Ricardo Engels/Luca Predabom/Ludwig, Carlos Henrique/Maur�cio Vieira', 210155, 6973625, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (330, N'Levada do Amor (Ailoviu)', 29, 1, 9, N'Luiz Wanderley/Paulo Levi', 190093, 6457752, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (331, N'Lavadeira', 29, 1, 9, N'Do Vale, Valverde/Gal Oliveira/Luciano Pinto', 214256, 7254147, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (332, N'Reboladeira', 29, 1, 9, N'Cal Adan/Ferrugem/Julinho Carioca/Tr�ona N� Dhomhnaill', 210599, 7027525, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (333, N'� que Nessa Encarna��o Eu Nasci Manga', 29, 1, 9, N'Lucina/Luli', 196519, 6568081, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (334, N'Reggae Tchan', 29, 1, 9, N'Cal Adan/Del Rey, Tension/Edu Casanova', 206654, 6931328, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (335, N'My Love', 29, 1, 9, N'Jauperi/Zeu G�es', 203493, 6772813, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (336, N'Latinha de Cerveja', 29, 1, 9, N'Adriano Bernandes/Edmar Neves', 166687, 5532564, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (337, N'You Shook Me', 30, 1, 1, N'J B Lenoir/Willie Dixon', 315951, 10249958, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (338, N'I Can''t Quit You Baby', 30, 1, 1, N'Willie Dixon', 263836, 8581414, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (339, N'Communication Breakdown', 30, 1, 1, N'Jimmy Page/John Bonham/John Paul Jones', 192653, 6287257, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (340, N'Dazed and Confused', 30, 1, 1, N'Jimmy Page', 401920, 13035765, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (341, N'The Girl I Love She Got Long Black Wavy Hair', 30, 1, 1, N'Jimmy Page/John Bonham/John Estes/John Paul Jones/Robert Plant', 183327, 5995686, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (342, N'What is and Should Never Be', 30, 1, 1, N'Jimmy Page/Robert Plant', 260675, 8497116, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (343, N'Communication Breakdown(2)', 30, 1, 1, N'Jimmy Page/John Bonham/John Paul Jones', 161149, 5261022, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (344, N'Travelling Riverside Blues', 30, 1, 1, N'Jimmy Page/Robert Johnson/Robert Plant', 312032, 10232581, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (345, N'Whole Lotta Love', 30, 1, 1, N'Jimmy Page/John Bonham/John Paul Jones/Robert Plant/Willie Dixon', 373394, 12258175, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (346, N'Somethin'' Else', 30, 1, 1, N'Bob Cochran/Sharon Sheeley', 127869, 4165650, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (347, N'Communication Breakdown(3)', 30, 1, 1, N'Jimmy Page/John Bonham/John Paul Jones', 185260, 6041133, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (348, N'I Can''t Quit You Baby(2)', 30, 1, 1, N'Willie Dixon', 380551, 12377615, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (349, N'You Shook Me(2)', 30, 1, 1, N'J B Lenoir/Willie Dixon', 619467, 20138673, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (350, N'How Many More Times', 30, 1, 1, N'Chester Burnett/Jimmy Page/John Bonham/John Paul Jones/Robert Plant', 711836, 23092953, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (351, N'Debra Kadabra', 31, 1, 1, N'Frank Zappa', 234553, 7649679, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (352, N'Carolina Hard-Core Ecstasy', 31, 1, 1, N'Frank Zappa', 359680, 11731061, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (353, N'Sam With The Showing Scalp Flat Top', 31, 1, 1, N'Don Van Vliet', 171284, 5572993, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (354, N'Poofter''s Froth Wyoming Plans Ahead', 31, 1, 1, N'Frank Zappa', 183902, 6007019, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (355, N'200 Years Old', 31, 1, 1, N'Frank Zappa', 272561, 8912465, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (356, N'Cucamonga', 31, 1, 1, N'Frank Zappa', 144483, 4728586, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (357, N'Advance Romance', 31, 1, 1, N'Frank Zappa', 677694, 22080051, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (358, N'Man With The Woman Head', 31, 1, 1, N'Don Van Vliet', 88894, 2922044, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (359, N'Muffin Man', 31, 1, 1, N'Frank Zappa', 332878, 10891682, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (360, N'Vai-Vai 2001', 32, 1, 10, 276349, 9402241, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (361, N'X-9 2001', 32, 1, 10, 273920, 9310370, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (362, N'Gavioes 2001', 32, 1, 10, 282723, 9616640, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (363, N'Nene 2001', 32, 1, 10, 284969, 9694508, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (364, N'Rosas De Ouro 2001', 32, 1, 10, 284342, 9721084, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (365, N'Mocidade Alegre 2001', 32, 1, 10, 282488, 9599937, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (366, N'Camisa Verde 2001', 32, 1, 10, 283454, 9633755, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (367, N'Leandro De Itaquera 2001', 32, 1, 10, 274808, 9451845, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (368, N'Tucuruvi 2001', 32, 1, 10, 287921, 9883335, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (369, N'Aguia De Ouro 2001', 32, 1, 10, 284160, 9698729, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (370, N'Ipiranga 2001', 32, 1, 10, 248293, 8522591, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (371, N'Morro Da Casa Verde 2001', 32, 1, 10, 284708, 9718778, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (372, N'Perola Negra 2001', 32, 1, 10, 281626, 9619196, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (373, N'Sao Lucas 2001', 32, 1, 10, 296254, 10020122, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (374, N'Guanabara', 33, 1, 7, N'Marcos Valle', 247614, 8499591, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (375, N'Mas Que Nada', 33, 1, 7, N'Jorge Ben', 248398, 8255254, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (376, N'V�o Sobre o Horizonte', 33, 1, 7, N'J.r.Bertami/Parana', 225097, 7528825, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (377, N'A Paz', 33, 1, 7, N'Donato/Gilberto Gil', 263183, 8619173, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (378, N'Wave (Vou te Contar)', 33, 1, 7, N'Antonio Carlos Jobim', 271647, 9057557, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (379, N'�gua de Beber', 33, 1, 7, N'Antonio Carlos Jobim/Vinicius de Moraes', 146677, 4866476, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (380, N'Samba da Ben�aco', 33, 1, 7, N'Baden Powell/Vinicius de Moraes', 282200, 9440676, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (381, N'Pode Parar', 33, 1, 7, N'Jorge Vercilo/Jota Maranhao', 179408, 6046678, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (382, N'Menino do Rio', 33, 1, 7, N'Caetano Veloso', 262713, 8737489, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (383, N'Ando Meio Desligado', 33, 1, 7, N'Caetano Veloso', 195813, 6547648, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (384, N'Mist�rio da Ra�a', 33, 1, 7, N'Luiz Melodia/Ricardo Augusto', 184320, 6191752, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (385, N'All Star', 33, 1, 7, N'Nando Reis', 176326, 5891697, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (386, N'Menina Bonita', 33, 1, 7, N'Alexandre Brazil/Pedro Luis/Rodrigo Cabelo', 237087, 7938246, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (387, N'Pescador de Ilus�es', 33, 1, 7, N'Macelo Yuka/O Rappa', 245524, 8267067, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (388, N'� Vontade (Live Mix)', 33, 1, 7, N'Bombom/Ed Motta', 180636, 5972430, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (389, N'Maria Fuma�a', 33, 1, 7, N'Luiz Carlos/Oberdan', 141008, 4743149, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (390, N'Sambassim (dj patife remix)', 33, 1, 7, N'Alba Carvalho/Fernando Porto', 213655, 7243166, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (391, N'Garota De Ipanema', 34, 1, 7, N'V�rios', 279536, 9141343, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (392, N'Tim Tim Por Tim Tim', 34, 1, 7, N'V�rios', 213237, 7143328, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (393, N'Tarde Em Itapo�', 34, 1, 7, N'V�rios', 313704, 10344491, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (394, N'Tanto Tempo', 34, 1, 7, N'V�rios', 170292, 5572240, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (395, N'Eu Vim Da Bahia - Live', 34, 1, 7, N'V�rios', 157988, 5115428, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (396, N'Al� Al� Marciano', 34, 1, 7, N'V�rios', 238106, 8013065, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (397, N'Linha Do Horizonte', 34, 1, 7, N'V�rios', 279484, 9275929, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (398, N'Only A Dream In Rio', 34, 1, 7, N'V�rios', 371356, 12192989, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (399, N'Abrir A Porta', 34, 1, 7, N'V�rios', 271960, 8991141, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (400, N'Alice', 34, 1, 7, N'V�rios', 165982, 5594341, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (401, N'Momentos Que Marcam', 34, 1, 7, N'V�rios', 280137, 9313740, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (402, N'Um Jantar Pra Dois', 34, 1, 7, N'V�rios', 237714, 7819755, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (403, N'Bumbo Da Mangueira', 34, 1, 7, N'V�rios', 270158, 9073350, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (404, N'Mr Funk Samba', 34, 1, 7, N'V�rios', 213890, 7102545, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (405, N'Santo Antonio', 34, 1, 7, N'V�rios', 162716, 5492069, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (406, N'Por Voc�', 34, 1, 7, N'V�rios', 205557, 6792493, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (407, N'S� Tinha De Ser Com Voc�', 34, 1, 7, N'V�rios', 389642, 13085596, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (408, N'Free Speech For The Dumb', 35, 1, 3, N'Molaney/Morris/Roberts/Wainwright', 155428, 5076048, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (409, N'It''s Electric', 35, 1, 3, N'Harris/Tatler', 213995, 6978601, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (410, N'Sabbra Cadabra', 35, 1, 3, N'Black Sabbath', 380342, 12418147, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (411, N'Turn The Page', 35, 1, 3, N'Seger', 366524, 11946327, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (412, N'Die Die My Darling', 35, 1, 3, N'Danzig', 149315, 4867667, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (413, N'Loverman', 35, 1, 3, N'Cave', 472764, 15446975, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (414, N'Mercyful Fate', 35, 1, 3, N'Diamond/Shermann', 671712, 21942829, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (415, N'Astronomy', 35, 1, 3, N'A.Bouchard/J.Bouchard/S.Pearlman', 397531, 13065612, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (416, N'Whiskey In The Jar', 35, 1, 3, N'Traditional', 305005, 9943129, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (417, N'Tuesday''s Gone', 35, 1, 3, N'Collins/Van Zandt', 545750, 17900787, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (418, N'The More I See', 35, 1, 3, N'Molaney/Morris/Roberts/Wainwright', 287973, 9378873, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (419, N'A Kind Of Magic', 36, 1, 1, N'Roger Taylor', 262608, 8689618, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (420, N'Under Pressure', 36, 1, 1, N'Queen & David Bowie', 236617, 7739042, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (421, N'Radio GA GA', 36, 1, 1, N'Roger Taylor', 343745, 11358573, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (422, N'I Want It All', 36, 1, 1, N'Queen', 241684, 7876564, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (423, N'I Want To Break Free', 36, 1, 1, N'John Deacon', 259108, 8552861, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (424, N'Innuendo', 36, 1, 1, N'Queen', 387761, 12664591, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (425, N'It''s A Hard Life', 36, 1, 1, N'Freddie Mercury', 249417, 8112242, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (426, N'Breakthru', 36, 1, 1, N'Queen', 249234, 8150479, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (427, N'Who Wants To Live Forever', 36, 1, 1, N'Brian May', 297691, 9577577, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (428, N'Headlong', 36, 1, 1, N'Queen', 273057, 8921404, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (429, N'The Miracle', 36, 1, 1, N'Queen', 294974, 9671923, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (430, N'I''m Going Slightly Mad', 36, 1, 1, N'Queen', 248032, 8192339, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (431, N'The Invisible Man', 36, 1, 1, N'Queen', 238994, 7920353, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (432, N'Hammer To Fall', 36, 1, 1, N'Brian May', 220316, 7255404, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (433, N'Friends Will Be Friends', 36, 1, 1, N'Freddie Mercury & John Deacon', 248920, 8114582, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (434, N'The Show Must Go On', 36, 1, 1, N'Queen', 263784, 8526760, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (435, N'One Vision', 36, 1, 1, N'Queen', 242599, 7936928, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (436, N'Detroit Rock city', 37, 1, 1, N'Paul Stanley, B. Ezrin', 218880, 7146372, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (437, N'Black Diamond', 37, 1, 1, N'Paul Stanley', 314148, 10266007, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (438, N'Hard Luck Woman', 37, 1, 1, N'Paul Stanley', 216032, 7109267, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (439, N'Sure Know Something', 37, 1, 1, N'Paul Stanley, Vincent Poncia', 242468, 7939886, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (440, N'Love Gun', 37, 1, 1, N'Paul Stanley', 196257, 6424915, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (441, N'Deuce', 37, 1, 1, N'Gene Simmons', 185077, 6097210, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (442, N'Goin'' Blind', 37, 1, 1, N'Gene Simmons, S. Coronel', 216215, 7045314, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (443, N'Shock Me', 37, 1, 1, N'Ace Frehley', 227291, 7529336, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (444, N'Do You Love Me', 37, 1, 1, N'Paul Stanley, B. Ezrin, K. Fowley', 214987, 6976194, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (445, N'She', 37, 1, 1, N'Gene Simmons, S. Coronel', 248346, 8229734, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (446, N'I Was Made For Loving You', 37, 1, 1, N'Paul Stanley, Vincent Poncia, Desmond Child', 271360, 9018078, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (447, N'Shout It Out Loud', 37, 1, 1, N'Paul Stanley, Gene Simmons, B. Ezrin', 219742, 7194424, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (448, N'God Of Thunder', 37, 1, 1, N'Paul Stanley', 255791, 8309077, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (449, N'Calling Dr. Love', 37, 1, 1, N'Gene Simmons', 225332, 7395034, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (450, N'Beth', 37, 1, 1, N'S. Penridge, Bob Ezrin, Peter Criss', 166974, 5360574, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (451, N'Strutter', 37, 1, 1, N'Paul Stanley, Gene Simmons', 192496, 6317021, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (452, N'Rock And Roll All Nite', 37, 1, 1, N'Paul Stanley, Gene Simmons', 173609, 5735902, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (453, N'Cold Gin', 37, 1, 1, N'Ace Frehley', 262243, 8609783, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (454, N'Plaster Caster', 37, 1, 1, N'Gene Simmons', 207333, 6801116, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (455, N'God Gave Rock ''n'' Roll To You', 37, 1, 1, N'Paul Stanley, Gene Simmons, Rus Ballard, Bob Ezrin', 320444, 10441590, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (456, N'Heart of the Night', 38, 1, 2, 273737, 9098263, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (457, N'De La Luz', 38, 1, 2, 315219, 10518284, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (458, N'Westwood Moon', 38, 1, 2, 295627, 9765802, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (459, N'Midnight', 38, 1, 2, 266866, 8851060, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (460, N'Playtime', 38, 1, 2, 273580, 9070880, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (461, N'Surrender', 38, 1, 2, 287634, 9422926, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (462, N'Valentino''s', 38, 1, 2, 296124, 9848545, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (463, N'Believe', 38, 1, 2, 310778, 10317185, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (464, N'As We Sleep', 38, 1, 2, 316865, 10429398, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (465, N'When Evening Falls', 38, 1, 2, 298135, 9863942, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (466, N'J Squared', 38, 1, 2, 288757, 9480777, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (467, N'Best Thing', 38, 1, 2, 274259, 9069394, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (468, N'Maria', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 167262, 5484747, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (469, N'Poprocks And Coke', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 158354, 5243078, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (470, N'Longview', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 234083, 7714939, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (471, N'Welcome To Paradise', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 224208, 7406008, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (472, N'Basket Case', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 181629, 5951736, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (473, N'When I Come Around', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 178364, 5839426, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (474, N'She', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 134164, 4425128, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (475, N'J.A.R. (Jason Andrew Relva)', 39, 1, 4, N'Mike Dirnt -Words Green Day -Music', 170997, 5645755, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (476, N'Geek Stink Breath', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 135888, 4408983, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (477, N'Brain Stew', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 193149, 6305550, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (478, N'Jaded', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 90331, 2950224, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (479, N'Walking Contradiction', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 151170, 4932366, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (480, N'Stuck With Me', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 135523, 4431357, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (481, N'Hitchin'' A Ride', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 171546, 5616891, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (482, N'Good Riddance (Time Of Your Life)', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 153600, 5075241, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (483, N'Redundant', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 198164, 6481753, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (484, N'Nice Guys Finish Last', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 170187, 5604618, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (485, N'Minority', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 168803, 5535061, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (486, N'Warning', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 221910, 7343176, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (487, N'Waiting', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 192757, 6316430, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (488, N'Macy''s Day Parade', 39, 1, 4, N'Billie Joe Armstrong -Words Green Day -Music', 213420, 7075573, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (489, N'Into The Light', 40, 1, 1, N'David Coverdale', 76303, 2452653, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (490, N'River Song', 40, 1, 1, N'David Coverdale', 439510, 14359478, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (491, N'She Give Me ...', 40, 1, 1, N'David Coverdale', 252551, 8385478, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (492, N'Don''t You Cry', 40, 1, 1, N'David Coverdale', 347036, 11269612, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (493, N'Love Is Blind', 40, 1, 1, N'David Coverdale/Earl Slick', 344999, 11409720, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (494, N'Slave', 40, 1, 1, N'David Coverdale/Earl Slick', 291892, 9425200, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (495, N'Cry For Love', 40, 1, 1, N'Bossi/David Coverdale/Earl Slick', 293015, 9567075, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (496, N'Living On Love', 40, 1, 1, N'Bossi/David Coverdale/Earl Slick', 391549, 12785876, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (497, N'Midnight Blue', 40, 1, 1, N'David Coverdale/Earl Slick', 298631, 9750990, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (498, N'Too Many Tears', 40, 1, 1, N'Adrian Vanderberg/David Coverdale', 359497, 11810238, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (499, N'Don''t Lie To Me', 40, 1, 1, N'David Coverdale/Earl Slick', 283585, 9288007, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (500, N'Wherever You May Go', 40, 1, 1, N'David Coverdale', 239699, 7803074, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (501, N'Grito De Alerta', 41, 1, 7, N'Gonzaga Jr.', 202213, 6539422, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (502, N'N�o D� Mais Pra Segurar (Explode Cora��o)', 41, 1, 7, 219768, 7083012, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (503, N'Come�aria Tudo Outra Vez', 41, 1, 7, 196545, 6473395, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (504, N'O Que � O Que � ?', 41, 1, 7, 259291, 8650647, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (505, N'Sangrando', 41, 1, 7, N'Gonzaga Jr/Gonzaguinha', 169717, 5494406, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (506, N'Diga L�, Cora��o', 41, 1, 7, 255921, 8280636, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (507, N'Lindo Lago Do Amor', 41, 1, 7, N'Gonzaga Jr.', 249678, 8353191, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (508, N'Eu Apenas Queria Que Vo�� Soubesse', 41, 1, 7, 155637, 5130056, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (509, N'Com A Perna No Mundo', 41, 1, 7, N'Gonzaga Jr.', 227448, 7747108, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (510, N'E Vamos � Luta', 41, 1, 7, 222406, 7585112, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (511, N'Um Homem Tamb�m Chora (Guerreiro Menino)', 41, 1, 7, 207229, 6854219, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (512, N'Comportamento Geral', 41, 1, 7, N'Gonzaga Jr', 181577, 5997444, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (513, N'Ponto De Interroga��o', 41, 1, 7, 180950, 5946265, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (514, N'Espere Por Mim, Morena', 41, 1, 7, N'Gonzaguinha', 207072, 6796523, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (515, N'Meia-Lua Inteira', 23, 1, 7, 222093, 7466288, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (516, N'Voce e Linda', 23, 1, 7, 242938, 8050268, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (517, N'Um Indio', 23, 1, 7, 195944, 6453213, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (518, N'Podres Poderes', 23, 1, 7, 259761, 8622495, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (519, N'Voce Nao Entende Nada - Cotidiano', 23, 1, 7, 421982, 13885612, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (520, N'O Estrangeiro', 23, 1, 7, 374700, 12472890, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (521, N'Menino Do Rio', 23, 1, 7, 147670, 4862277, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (522, N'Qualquer Coisa', 23, 1, 7, 193410, 6372433, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (523, N'Sampa', 23, 1, 7, 185051, 6151831, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (524, N'Queixa', 23, 1, 7, 299676, 9953962, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (525, N'O Leaozinho', 23, 1, 7, 184398, 6098150, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (526, N'Fora Da Ordem', 23, 1, 7, 354011, 11746781, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (527, N'Terra', 23, 1, 7, 401319, 13224055, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (528, N'Alegria, Alegria', 23, 1, 7, 169221, 5497025, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (529, N'Balada Do Louco', 42, 1, 4, N'Arnaldo Baptista - Rita Lee', 241057, 7852328, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (530, N'Ando Meio Desligado', 42, 1, 4, N'Arnaldo Baptista - Rita Lee -  S�rgio Dias', 287817, 9484504, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (531, N'Top Top', 42, 1, 4, N'Os Mutantes - Arnolpho Lima Filho', 146938, 4875374, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (532, N'Baby', 42, 1, 4, N'Caetano Veloso', 177188, 5798202, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (533, N'A E O Z', 42, 1, 4, N'Mutantes', 518556, 16873005, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (534, N'Panis Et Circenses', 42, 1, 4, N'Caetano Veloso - Gilberto Gil', 125152, 4069688, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (535, N'Ch�o De Estrelas', 42, 1, 4, N'Orestes Barbosa-S�lvio Caldas', 284813, 9433620, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (536, N'Vida De Cachorro', 42, 1, 4, N'Rita Lee - Arnaldo Baptista - S�rgio Baptista', 195186, 6411149, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (537, N'Bat Macumba', 42, 1, 4, N'Gilberto Gil - Caetano Veloso', 187794, 6295223, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (538, N'Desculpe Babe', 42, 1, 4, N'Arnaldo Baptista - Rita Lee', 170422, 5637959, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (539, N'Rita Lee', 42, 1, 4, N'Arnaldo Baptista/Rita Lee/S�rgio Dias', 189257, 6270503, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (540, N'Posso Perder Minha Mulher, Minha M�e, Desde Que Eu Tenha O Rock And Roll', 42, 1, 4, N'Arnaldo Baptista - Rita Lee - Arnolpho Lima Filho', 222955, 7346254, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (541, N'Banho De Lua', 42, 1, 4, N'B. de Filippi - F. Migliaci - Vers�o: Fred Jorge', 221831, 7232123, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (542, N'Meu Refrigerador N�o Funciona', 42, 1, 4, N'Arnaldo Baptista - Rita Lee - S�rgio Dias', 382981, 12495906, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (543, N'Burn', 43, 1, 1, N'Coverdale/Lord/Paice', 453955, 14775708, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (544, N'Stormbringer', 43, 1, 1, N'Coverdale', 277133, 9050022, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (545, N'Gypsy', 43, 1, 1, N'Coverdale/Hughes/Lord/Paice', 339173, 11046952, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (546, N'Lady Double Dealer', 43, 1, 1, N'Coverdale', 233586, 7608759, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (547, N'Mistreated', 43, 1, 1, N'Coverdale', 758648, 24596235, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (548, N'Smoke On The Water', 43, 1, 1, N'Gillan/Glover/Lord/Paice', 618031, 20103125, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (549, N'You Fool No One', 43, 1, 1, N'Coverdale/Lord/Paice', 804101, 26369966, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (550, N'Custard Pie', 44, 1, 1, N'Jimmy Page/Robert Plant', 253962, 8348257, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (551, N'The Rover', 44, 1, 1, N'Jimmy Page/Robert Plant', 337084, 11011286, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (552, N'In My Time Of Dying', 44, 1, 1, N'John Bonham/John Paul Jones', 666017, 21676727, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (553, N'Houses Of The Holy', 44, 1, 1, N'Jimmy Page/Robert Plant', 242494, 7972503, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (554, N'Trampled Under Foot', 44, 1, 1, N'John Paul Jones', 336692, 11154468, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (555, N'Kashmir', 44, 1, 1, N'John Bonham', 508604, 16686580, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (556, N'Imperatriz', 45, 1, 7, N'Guga/Marquinho Lessa/Tuninho Professor', 339173, 11348710, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (557, N'Beija-Flor', 45, 1, 7, N'Caruso/Cleber/Deo/Osmar', 327000, 10991159, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (558, N'Viradouro', 45, 1, 7, N'Dadinho/Gilbreto Gomes/Gustavo/P.C. Portugal/R. Mocoto', 344320, 11484362, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (559, N'Mocidade', 45, 1, 7, N'Domenil/J. Brito/Joaozinho/Rap, Marcelo Do', 261720, 8817757, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (560, N'Unidos Da Tijuca', 45, 1, 7, N'Douglas/Neves, Vicente Das/Silva, Gilmar L./Toninho Gentil/Wantuir', 338834, 11440689, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (561, N'Salgueiro', 45, 1, 7, N'Augusto/Craig Negoescu/Rocco Filho/Saara, Ze Carlos Da', 305920, 10294741, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (562, N'Mangueira', 45, 1, 7, N'Bizuca/Cl�vis P�/Gilson Bernini/Marelo D''Aguia', 298318, 9999506, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (563, N'Uni�o Da Ilha', 45, 1, 7, N'Dito/Djalma Falcao/Ilha, Almir Da/M�rcio Andr�', 330945, 11100945, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (564, N'Grande Rio', 45, 1, 7, N'Carlos Santos/Ciro/Claudio Russo/Z� Luiz', 307252, 10251428, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (565, N'Portela', 45, 1, 7, N'Flavio Bororo/Paulo Apparicio/Wagner Alves/Zeca Sereno', 319608, 10712216, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (566, N'Caprichosos', 45, 1, 7, N'Gule/Jorge 101/Lequinho/Luiz Piao', 351320, 11870956, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (567, N'Tradi��o', 45, 1, 7, N'Adalto Magalha/Lourenco', 269165, 9114880, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (568, N'Imp�rio Serrano', 45, 1, 7, N'Arlindo Cruz/Carlos Sena/Elmo Caetano/Mauricao', 334942, 11161196, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (569, N'Tuiuti', 45, 1, 7, N'Claudio Martins/David Lima/Kleber Rodrigues/Livre, Cesare Som', 259657, 8749492, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (570, N'(Da Le) Yaleo', 46, 1, 1, N'Santana', 353488, 11769507, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (571, N'Love Of My Life', 46, 1, 1, N'Carlos Santana & Dave Matthews', 347820, 11634337, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (572, N'Put Your Lights On', 46, 1, 1, N'E. Shrody', 285178, 9394769, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (573, N'Africa Bamba', 46, 1, 1, N'I. Toure, S. Tidiane Toure, Carlos Santana & K. Perazzo', 282827, 9492487, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (574, N'Smooth', 46, 1, 1, N'M. Itaal Shur & Rob Thomas', 298161, 9867455, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (575, N'Do You Like The Way', 46, 1, 1, N'L. Hill', 354899, 11741062, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (576, N'Maria Maria', 46, 1, 1, N'W. Jean, J. Duplessis, Carlos Santana, K. Perazzo & R. Rekow', 262635, 8664601, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (577, N'Migra', 46, 1, 1, N'R. Taha, Carlos Santana & T. Lindsay', 329064, 10963305, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (578, N'Corazon Espinado', 46, 1, 1, N'F. Olivera', 276114, 9206802, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (579, N'Wishing It Was', 46, 1, 1, N'Eale-Eye Cherry, M. Simpson, J. King & M. Nishita', 292832, 9771348, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (580, N'El Farol', 46, 1, 1, N'Carlos Santana & KC Porter', 291160, 9599353, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (581, N'Primavera', 46, 1, 1, N'KC Porter & JB Eckl', 378618, 12504234, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (582, N'The Calling', 46, 1, 1, N'Carlos Santana & C. Thompson', 747755, 24703884, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (583, N'Solu��o', 47, 1, 7, 247431, 8100449, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (584, N'Manuel', 47, 1, 7, 230269, 7677671, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (585, N'Entre E Ou�a', 47, 1, 7, 286302, 9391004, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (586, N'Um Contrato Com Deus', 47, 1, 7, 202501, 6636465, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (587, N'Um Jantar Pra Dois', 47, 1, 7, 244009, 8021589, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (588, N'Vamos Dan�ar', 47, 1, 7, 226194, 7617432, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (589, N'Um Love', 47, 1, 7, 181603, 6095524, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (590, N'Seis Da Tarde', 47, 1, 7, 238445, 7935898, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (591, N'Baixo Rio', 47, 1, 7, 198008, 6521676, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (592, N'Sombras Do Meu Destino', 47, 1, 7, 280685, 9161539, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (593, N'Do You Have Other Loves?', 47, 1, 7, 295235, 9604273, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (594, N'Agora Que O Dia Acordou', 47, 1, 7, 323213, 10572752, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (595, N'J�!!!', 47, 1, 7, 217782, 7103608, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (596, N'A Rua', 47, 1, 7, 238027, 7930264, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (597, N'Now''s The Time', 48, 1, 2, N'Miles Davis', 197459, 6358868, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (598, N'Jeru', 48, 1, 2, N'Miles Davis', 193410, 6222536, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (599, N'Compulsion', 48, 1, 2, N'Miles Davis', 345025, 11254474, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (600, N'Tempus Fugit', 48, 1, 2, N'Miles Davis', 231784, 7548434, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (601, N'Walkin''', 48, 1, 2, N'Miles Davis', 807392, 26411634, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (602, N'''Round Midnight', 48, 1, 2, N'Miles Davis', 357459, 11590284, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (603, N'Bye Bye Blackbird', 48, 1, 2, N'Miles Davis', 476003, 15549224, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (604, N'New Rhumba', 48, 1, 2, N'Miles Davis', 277968, 9018024, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (605, N'Generique', 48, 1, 2, N'Miles Davis', 168777, 5437017, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (606, N'Summertime', 48, 1, 2, N'Miles Davis', 200437, 6461370, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (607, N'So What', 48, 1, 2, N'Miles Davis', 564009, 18360449, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (608, N'The Pan Piper', 48, 1, 2, N'Miles Davis', 233769, 7593713, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (609, N'Someday My Prince Will Come', 48, 1, 2, N'Miles Davis', 544078, 17890773, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (610, N'My Funny Valentine (Live)', 49, 1, 2, N'Miles Davis', 907520, 29416781, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (611, N'E.S.P.', 49, 1, 2, N'Miles Davis', 330684, 11079866, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (612, N'Nefertiti', 49, 1, 2, N'Miles Davis', 473495, 15478450, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (613, N'Petits Machins (Little Stuff)', 49, 1, 2, N'Miles Davis', 487392, 16131272, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (614, N'Miles Runs The Voodoo Down', 49, 1, 2, N'Miles Davis', 843964, 27967919, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (615, N'Little Church (Live)', 49, 1, 2, N'Miles Davis', 196101, 6273225, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (616, N'Black Satin', 49, 1, 2, N'Miles Davis', 316682, 10529483, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (617, N'Jean Pierre (Live)', 49, 1, 2, N'Miles Davis', 243461, 7955114, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (618, N'Time After Time', 49, 1, 2, N'Miles Davis', 220734, 7292197, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (619, N'Portia', 49, 1, 2, N'Miles Davis', 378775, 12520126, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (620, N'Space Truckin''', 50, 1, 1, N'Blackmore/Gillan/Glover/Lord/Paice', 1196094, 39267613, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (621, N'Going Down / Highway Star', 50, 1, 1, N'Gillan/Glover/Lord/Nix - Blackmore/Paice', 913658, 29846063, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (622, N'Mistreated (Alternate Version)', 50, 1, 1, N'Blackmore/Coverdale', 854700, 27775442, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (623, N'You Fool No One (Alternate Version)', 50, 1, 1, N'Blackmore/Coverdale/Lord/Paice', 763924, 24887209, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (624, N'Jeepers Creepers', 51, 1, 2, 185965, 5991903, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (625, N'Blue Rythm Fantasy', 51, 1, 2, 348212, 11204006, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (626, N'Drum Boogie', 51, 1, 2, 191555, 6185636, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (627, N'Let Me Off Uptown', 51, 1, 2, 187637, 6034685, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (628, N'Leave Us Leap', 51, 1, 2, 182726, 5898810, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (629, N'Opus No.1', 51, 1, 2, 179800, 5846041, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (630, N'Boogie Blues', 51, 1, 2, 204199, 6603153, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (631, N'How High The Moon', 51, 1, 2, 201430, 6529487, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (632, N'Disc Jockey Jump', 51, 1, 2, 193149, 6260820, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (633, N'Up An'' Atom', 51, 1, 2, 179565, 5822645, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (634, N'Bop Boogie', 51, 1, 2, 189596, 6093124, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (635, N'Lemon Drop', 51, 1, 2, 194089, 6287531, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (636, N'Coronation Drop', 51, 1, 2, 176222, 5899898, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (637, N'Overtime', 51, 1, 2, 163030, 5432236, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (638, N'Imagination', 51, 1, 2, 289306, 9444385, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (639, N'Don''t Take Your Love From Me', 51, 1, 2, 282331, 9244238, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (640, N'Midget', 51, 1, 2, 217025, 7257663, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (641, N'I''m Coming Virginia', 51, 1, 2, 280163, 9209827, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (642, N'Payin'' Them Dues Blues', 51, 1, 2, 198556, 6536918, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (643, N'Jungle Drums', 51, 1, 2, 199627, 6546063, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (644, N'Showcase', 51, 1, 2, 201560, 6697510, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (645, N'Swedish Schnapps', 51, 1, 2, 191268, 6359750, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (646, N'Samba Da B�n��o', 52, 1, 11, 409965, 13490008, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (647, N'Pot-Pourri N.� 4', 52, 1, 11, 392437, 13125975, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (648, N'Onde Anda Voc�', 52, 1, 11, 168437, 5550356, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (649, N'Samba Da Volta', 52, 1, 11, 170631, 5676090, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (650, N'Canto De Ossanha', 52, 1, 11, 204956, 6771624, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (651, N'Pot-Pourri N.� 5', 52, 1, 11, 219898, 7117769, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (652, N'Formosa', 52, 1, 11, 137482, 4560873, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (653, N'Como � Duro Trabalhar', 52, 1, 11, 226168, 7541177, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (654, N'Minha Namorada', 52, 1, 11, 244297, 7927967, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (655, N'Por Que Ser�', 52, 1, 11, 162142, 5371483, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (656, N'Berimbau', 52, 1, 11, 190667, 6335548, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (657, N'Deixa', 52, 1, 11, 179826, 5932799, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (658, N'Pot-Pourri N.� 2', 52, 1, 11, 211748, 6878359, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (659, N'Samba Em Prel�dio', 52, 1, 11, 212636, 6923473, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (660, N'Carta Ao Tom 74', 52, 1, 11, 162560, 5382354, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (661, N'Linha de Passe (Jo�o Bosco)', 53, 1, 7, 230948, 7902328, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (662, N'Pela Luz dos Olhos Teus (Mi�cha e Tom Jobim)', 53, 1, 7, 163970, 5399626, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (663, N'Ch�o de Giz (Elba Ramalho)', 53, 1, 7, 274834, 9016916, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (664, N'Marina (Dorival Caymmi)', 53, 1, 7, 172643, 5523628, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (665, N'Aquarela (Toquinho)', 53, 1, 7, 259944, 8480140, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (666, N'Cora��o do Agreste (Faf� de Bel�m)', 53, 1, 7, 258194, 8380320, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (667, N'Dona (Roupa Nova)', 53, 1, 7, 243356, 7991295, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (668, N'Come�aria Tudo Outra Vez (Maria Creuza)', 53, 1, 7, 206994, 6851151, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (669, N'Ca�ador de Mim (S� & Guarabyra)', 53, 1, 7, 238341, 7751360, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (670, N'Romaria (Renato Teixeira)', 53, 1, 7, 244793, 8033885, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (671, N'As Rosas N�o Falam (Beth Carvalho)', 53, 1, 7, 116767, 3836641, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (672, N'Wave (Os Cariocas)', 53, 1, 7, 130063, 4298006, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (673, N'Garota de Ipanema (Dick Farney)', 53, 1, 7, 174367, 5767474, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (674, N'Preciso Apender a Viver S� (Maysa)', 53, 1, 7, 143464, 4642359, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (675, N'Susie Q', 54, 1, 1, N'Hawkins-Lewis-Broadwater', 275565, 9043825, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (676, N'I Put A Spell On You', 54, 1, 1, N'Jay Hawkins', 272091, 8943000, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (677, N'Proud Mary', 54, 1, 1, N'J. C. Fogerty', 189022, 6229590, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (678, N'Bad Moon Rising', 54, 1, 1, N'J. C. Fogerty', 140146, 4609835, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (679, N'Lodi', 54, 1, 1, N'J. C. Fogerty', 191451, 6260214, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (680, N'Green River', 54, 1, 1, N'J. C. Fogerty', 154279, 5105874, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (681, N'Commotion', 54, 1, 1, N'J. C. Fogerty', 162899, 5354252, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (682, N'Down On The Corner', 54, 1, 1, N'J. C. Fogerty', 164858, 5521804, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (683, N'Fortunate Son', 54, 1, 1, N'J. C. Fogerty', 140329, 4617559, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (684, N'Travelin'' Band', 54, 1, 1, N'J. C. Fogerty', 129358, 4270414, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (685, N'Who''ll Stop The Rain', 54, 1, 1, N'J. C. Fogerty', 149394, 4899579, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (686, N'Up Around The Bend', 54, 1, 1, N'J. C. Fogerty', 162429, 5368701, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (687, N'Run Through The Jungle', 54, 1, 1, N'J. C. Fogerty', 186044, 6156567, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (688, N'Lookin'' Out My Back Door', 54, 1, 1, N'J. C. Fogerty', 152946, 5034670, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (689, N'Long As I Can See The Light', 54, 1, 1, N'J. C. Fogerty', 213237, 6924024, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (690, N'I Heard It Through The Grapevine', 54, 1, 1, N'Whitfield-Strong', 664894, 21947845, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (691, N'Have You Ever Seen The Rain?', 54, 1, 1, N'J. C. Fogerty', 160052, 5263675, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (692, N'Hey Tonight', 54, 1, 1, N'J. C. Fogerty', 162847, 5343807, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (693, N'Sweet Hitch-Hiker', 54, 1, 1, N'J. C. Fogerty', 175490, 5716603, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (694, N'Someday Never Comes', 54, 1, 1, N'J. C. Fogerty', 239360, 7945235, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (695, N'Walking On The Water', 55, 1, 1, N'J.C. Fogerty', 281286, 9302129, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (696, N'Suzie-Q, Pt. 2', 55, 1, 1, N'J.C. Fogerty', 244114, 7986637, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (697, N'Born On The Bayou', 55, 1, 1, N'J.C. Fogerty', 316630, 10361866, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (698, N'Good Golly Miss Molly', 55, 1, 1, N'J.C. Fogerty', 163604, 5348175, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (699, N'Tombstone Shadow', 55, 1, 1, N'J.C. Fogerty', 218880, 7209080, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (700, N'Wrote A Song For Everyone', 55, 1, 1, N'J.C. Fogerty', 296385, 9675875, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (701, N'Night Time Is The Right Time', 55, 1, 1, N'J.C. Fogerty', 190119, 6211173, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (702, N'Cotton Fields', 55, 1, 1, N'J.C. Fogerty', 178181, 5919224, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (703, N'It Came Out Of The Sky', 55, 1, 1, N'J.C. Fogerty', 176718, 5807474, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (704, N'Don''t Look Now', 55, 1, 1, N'J.C. Fogerty', 131918, 4366455, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (705, N'The Midnight Special', 55, 1, 1, N'J.C. Fogerty', 253596, 8297482, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (706, N'Before You Accuse Me', 55, 1, 1, N'J.C. Fogerty', 207804, 6815126, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (707, N'My Baby Left Me', 55, 1, 1, N'J.C. Fogerty', 140460, 4633440, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (708, N'Pagan Baby', 55, 1, 1, N'J.C. Fogerty', 385619, 12713813, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (709, N'(Wish I Could) Hideaway', 55, 1, 1, N'J.C. Fogerty', 228466, 7432978, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (710, N'It''s Just A Thought', 55, 1, 1, N'J.C. Fogerty', 237374, 7778319, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (711, N'Molina', 55, 1, 1, N'J.C. Fogerty', 163239, 5390811, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (712, N'Born To Move', 55, 1, 1, N'J.C. Fogerty', 342804, 11260814, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (713, N'Lookin'' For A Reason', 55, 1, 1, N'J.C. Fogerty', 209789, 6933135, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (714, N'Hello Mary Lou', 55, 1, 1, N'J.C. Fogerty', 132832, 4476563, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (715, N'Gatas Extraordin�rias', 56, 1, 7, 212506, 7095702, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (716, N'Brasil', 56, 1, 7, 243696, 7911683, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (717, N'Eu Sou Neguinha (Ao Vivo)', 56, 1, 7, 251768, 8376000, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (718, N'Gera��o Coca-Cola (Ao Vivo)', 56, 1, 7, 228153, 7573301, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (719, N'Lanterna Dos Afogados', 56, 1, 7, 204538, 6714582, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (720, N'Coron� Antonio Bento', 56, 1, 7, 200437, 6713066, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (721, N'Voc� Passa, Eu Acho Gra�a (Ao Vivo)', 56, 1, 7, 206733, 6943576, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (722, N'Meu Mundo Fica Completo (Com Voc�)', 56, 1, 7, 247771, 8322240, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (723, N'1� De Julho', 56, 1, 7, 270262, 9017535, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (724, N'M�sica Urbana 2', 56, 1, 7, 194899, 6383472, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (725, N'Vida Bandida (Ao Vivo)', 56, 1, 7, 192626, 6360785, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (726, N'Palavras Ao Vento', 56, 1, 7, 212453, 7048676, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (727, N'N�o Sei O Que Eu Quero Da Vida', 56, 1, 7, 151849, 5024963, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (728, N'Woman Of The World (Ao Vivo)', 56, 1, 7, 298919, 9724145, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (729, N'Juventude Transviada (Ao Vivo)', 56, 1, 7, 278622, 9183808, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (730, N'Malandragem', 57, 1, 7, 247588, 8165048, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (731, N'O Segundo Sol', 57, 1, 7, 252133, 8335629, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (732, N'Smells Like Teen Spirit (Ao Vivo)', 57, 1, 7, 316865, 10384506, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (733, N'E.C.T.', 57, 1, 7, 227500, 7571834, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (734, N'Todo Amor Que Houver Nesta Vida', 57, 1, 7, 227160, 7420347, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (735, N'Metr�. Linha 743', 57, 1, 7, 174654, 5837495, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (736, N'N�s (Ao Vivo)', 57, 1, 7, 193828, 6498661, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (737, N'Na Cad�ncia Do Samba', 57, 1, 7, 196075, 6483952, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (738, N'Admir�vel Gado Novo', 57, 1, 7, 274390, 9144031, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (739, N'Eleanor Rigby', 57, 1, 7, 189466, 6303205, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (740, N'Socorro', 57, 1, 7, 258586, 8549393, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (741, N'Blues Da Piedade', 57, 1, 7, 257123, 8472964, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (742, N'Rubens', 57, 1, 7, 211853, 7026317, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (743, N'N�o Deixe O Samba Morrer - Cassia Eller e Alcione', 57, 1, 7, 268173, 8936345, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (744, N'Mis Penas Lloraba Yo (Ao Vivo) Soy Gitano (Tangos)', 57, 1, 7, 188473, 6195854, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (745, N'Comin'' Home', 58, 1, 1, N'Bolin/Coverdale/Paice', 235781, 7644604, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (746, N'Lady Luck', 58, 1, 1, N'Cook/Coverdale', 168202, 5501379, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (747, N'Gettin'' Tighter', 58, 1, 1, N'Bolin/Hughes', 218044, 7176909, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (748, N'Dealer', 58, 1, 1, N'Bolin/Coverdale', 230922, 7591066, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (749, N'I Need Love', 58, 1, 1, N'Bolin/Coverdale', 263836, 8701064, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (750, N'Drifter', 58, 1, 1, N'Bolin/Coverdale', 242834, 8001505, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (751, N'Love Child', 58, 1, 1, N'Bolin/Coverdale', 188160, 6173806, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (752, N'This Time Around / Owed to ''G'' [Instrumental]', 58, 1, 1, N'Bolin/Hughes/Lord', 370102, 11995679, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (753, N'You Keep On Moving', 58, 1, 1, N'Coverdale/Hughes', 319111, 10447868, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (754, N'Speed King', 59, 1, 1, N'Blackmore, Gillan, Glover, Lord, Paice', 264385, 8587578, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (755, N'Bloodsucker', 59, 1, 1, N'Blackmore, Gillan, Glover, Lord, Paice', 256261, 8344405, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (756, N'Child In Time', 59, 1, 1, N'Blackmore, Gillan, Glover, Lord, Paice', 620460, 20230089, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (757, N'Flight Of The Rat', 59, 1, 1, N'Blackmore, Gillan, Glover, Lord, Paice', 478302, 15563967, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (758, N'Into The Fire', 59, 1, 1, N'Blackmore, Gillan, Glover, Lord, Paice', 210259, 6849310, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (759, N'Living Wreck', 59, 1, 1, N'Blackmore, Gillan, Glover, Lord, Paice', 274886, 8993056, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (760, N'Hard Lovin'' Man', 59, 1, 1, N'Blackmore, Gillan, Glover, Lord, Paice', 431203, 13931179, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (761, N'Fireball', 60, 1, 1, N'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 204721, 6714807, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (762, N'No No No', 60, 1, 1, N'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 414902, 13646606, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (763, N'Strange Kind Of Woman', 60, 1, 1, N'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 247092, 8072036, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (764, N'Anyone''s Daughter', 60, 1, 1, N'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 284682, 9354480, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (765, N'The Mule', 60, 1, 1, N'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 322063, 10638390, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (766, N'Fools', 60, 1, 1, N'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 500427, 16279366, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (767, N'No One Came', 60, 1, 1, N'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 385880, 12643813, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (768, N'Knocking At Your Back Door', 61, 1, 1, N'Richie Blackmore, Ian Gillian, Roger Glover', 424829, 13779332, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (769, N'Bad Attitude', 61, 1, 1, N'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord', 307905, 10035180, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (770, N'Child In Time (Son Of Aleric - Instrumental)', 61, 1, 1, N'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice', 602880, 19712753, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (771, N'Nobody''s Home', 61, 1, 1, N'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice', 243017, 7929493, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (772, N'Black Night', 61, 1, 1, N'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice', 368770, 12058906, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (773, N'Perfect Strangers', 61, 1, 1, N'Richie Blackmore, Ian Gillian, Roger Glover', 321149, 10445353, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (774, N'The Unwritten Law', 61, 1, 1, N'Richie Blackmore, Ian Gillian, Roger Glover, Ian Paice', 295053, 9740361, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (775, N'Call Of The Wild', 61, 1, 1, N'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord', 293851, 9575295, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (776, N'Hush', 61, 1, 1, N'South', 213054, 6944928, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (777, N'Smoke On The Water', 61, 1, 1, N'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice', 464378, 15180849, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (778, N'Space Trucking', 61, 1, 1, N'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice', 341185, 11122183, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (779, N'Highway Star', 62, 1, 1, N'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 368770, 12012452, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (780, N'Maybe I''m A Leo', 62, 1, 1, N'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 290455, 9502646, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (781, N'Pictures Of Home', 62, 1, 1, N'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 303777, 9903835, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (782, N'Never Before', 62, 1, 1, N'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 239830, 7832790, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (783, N'Smoke On The Water', 62, 1, 1, N'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 340871, 11246496, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (784, N'Lazy', 62, 1, 1, N'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 442096, 14397671, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (785, N'Space Truckin''', 62, 1, 1, N'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 272796, 8981030, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (786, N'Vavoom : Ted The Mechanic', 63, 1, 1, N'Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice', 257384, 8510755, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (787, N'Loosen My Strings', 63, 1, 1, N'Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice', 359680, 11702232, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (788, N'Soon Forgotten', 63, 1, 1, N'Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice', 287791, 9401383, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (789, N'Sometimes I Feel Like Screaming', 63, 1, 1, N'Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice', 451840, 14789410, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (790, N'Cascades : I''m Not Your Lover', 63, 1, 1, N'Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice', 283689, 9209693, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (791, N'The Aviator', 63, 1, 1, N'Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice', 320992, 10532053, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (792, N'Rosa''s Cantina', 63, 1, 1, N'Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice', 312372, 10323804, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (793, N'A Castle Full Of Rascals', 63, 1, 1, N'Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice', 311693, 10159566, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (794, N'A Touch Away', 63, 1, 1, N'Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice', 276323, 9098561, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (795, N'Hey Cisco', 63, 1, 1, N'Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice', 354089, 11600029, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (796, N'Somebody Stole My Guitar', 63, 1, 1, N'Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice', 249443, 8180421, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (797, N'The Purpendicular Waltz', 63, 1, 1, N'Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice', 283924, 9299131, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (798, N'King Of Dreams', 64, 1, 1, N'Blackmore, Glover, Turner', 328385, 10733847, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (799, N'The Cut Runs Deep', 64, 1, 1, N'Blackmore, Glover, Turner, Lord, Paice', 342752, 11191650, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (800, N'Fire In The Basement', 64, 1, 1, N'Blackmore, Glover, Turner, Lord, Paice', 283977, 9267550, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (801, N'Truth Hurts', 64, 1, 1, N'Blackmore, Glover, Turner', 314827, 10224612, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (802, N'Breakfast In Bed', 64, 1, 1, N'Blackmore, Glover, Turner', 317126, 10323804, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (803, N'Love Conquers All', 64, 1, 1, N'Blackmore, Glover, Turner', 227186, 7328516, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (804, N'Fortuneteller', 64, 1, 1, N'Blackmore, Glover, Turner, Lord, Paice', 349335, 11369671, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (805, N'Too Much Is Not Enough', 64, 1, 1, N'Turner, Held, Greenwood', 257724, 8382800, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (806, N'Wicked Ways', 64, 1, 1, N'Blackmore, Glover, Turner, Lord, Paice', 393691, 12826582, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (807, N'Stormbringer', 65, 1, 1, N'D.Coverdale/R.Blackmore/Ritchie Blackmore', 246413, 8044864, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (808, N'Love Don''t Mean a Thing', 65, 1, 1, N'D.Coverdale/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord/R.Blackmore/Ritchie Blackmore', 263862, 8675026, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (809, N'Holy Man', 65, 1, 1, N'D.Coverdale/G.Hughes/Glenn Hughes/J.Lord/John Lord', 270236, 8818093, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (810, N'Hold On', 65, 1, 1, N'D.Coverdal/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord', 306860, 10022428, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (811, N'Lady Double Dealer', 65, 1, 1, N'D.Coverdale/R.Blackmore/Ritchie Blackmore', 201482, 6554330, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (812, N'You Can''t Do it Right (With the One You Love)', 65, 1, 1, N'D.Coverdale/G.Hughes/Glenn Hughes/R.Blackmore/Ritchie Blackmore', 203755, 6709579, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (813, N'High Ball Shooter', 65, 1, 1, N'D.Coverdale/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord/R.Blackmore/Ritchie Blackmore', 267833, 8772471, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (814, N'The Gypsy', 65, 1, 1, N'D.Coverdale/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord/R.Blackmore/Ritchie Blackmore', 242886, 7946614, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (815, N'Soldier Of Fortune', 65, 1, 1, N'D.Coverdale/R.Blackmore/Ritchie Blackmore', 193750, 6315321, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (816, N'The Battle Rages On', 66, 1, 1, N'ian paice/jon lord', 356963, 11626228, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (817, N'Lick It Up', 66, 1, 1, N'roger glover', 240274, 7792604, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (818, N'Anya', 66, 1, 1, N'jon lord/roger glover', 392437, 12754921, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (819, N'Talk About Love', 66, 1, 1, N'roger glover', 247823, 8072171, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (820, N'Time To Kill', 66, 1, 1, N'roger glover', 351033, 11354742, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (821, N'Ramshackle Man', 66, 1, 1, N'roger glover', 334445, 10874679, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (822, N'A Twist In The Tail', 66, 1, 1, N'roger glover', 257462, 8413103, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (823, N'Nasty Piece Of Work', 66, 1, 1, N'jon lord/roger glover', 276662, 9076997, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (824, N'Solitaire', 66, 1, 1, N'roger glover', 282226, 9157021, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (825, N'One Man''s Meat', 66, 1, 1, N'roger glover', 278804, 9068960, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (826, N'Pour Some Sugar On Me', 67, 1, 1, 292519, 9518842, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (827, N'Photograph', 67, 1, 1, 248633, 8108507, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (828, N'Love Bites', 67, 1, 1, 346853, 11305791, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (829, N'Let''s Get Rocked', 67, 1, 1, 296019, 9724150, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (830, N'Two Steps Behind [Acoustic Version]', 67, 1, 1, 259787, 8523388, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (831, N'Animal', 67, 1, 1, 244741, 7985133, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (832, N'Heaven Is', 67, 1, 1, 214021, 6988128, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (833, N'Rocket', 67, 1, 1, 247248, 8092463, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (834, N'When Love & Hate Collide', 67, 1, 1, 257280, 8364633, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (835, N'Action', 67, 1, 1, 220604, 7130830, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (836, N'Make Love Like A Man', 67, 1, 1, 255660, 8309725, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (837, N'Armageddon It', 67, 1, 1, 322455, 10522352, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (838, N'Have You Ever Needed Someone So Bad', 67, 1, 1, 319320, 10400020, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (839, N'Rock Of Ages', 67, 1, 1, 248424, 8150318, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (840, N'Hysteria', 67, 1, 1, 355056, 11622738, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (841, N'Bringin'' On The Heartbreak', 67, 1, 1, 272457, 8853324, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (842, N'Roll Call', 68, 1, 2, N'Jim Beard', 321358, 10653494, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (843, N'Otay', 68, 1, 2, N'John Scofield, Robert Aries, Milton Chambers and Gary Grainger', 423653, 14176083, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (844, N'Groovus Interruptus', 68, 1, 2, N'Jim Beard', 319373, 10602166, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (845, N'Paris On Mine', 68, 1, 2, N'Jon Herington', 368875, 12059507, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (846, N'In Time', 68, 1, 2, N'Sylvester Stewart', 368953, 12287103, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (847, N'Plan B', 68, 1, 2, N'Dean Brown, Dennis Chambers & Jim Beard', 272039, 9032315, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (848, N'Outbreak', 68, 1, 2, N'Jim Beard & Jon Herington', 659226, 21685807, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (849, N'Baltimore, DC', 68, 1, 2, N'John Scofield', 346932, 11394473, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (850, N'Talkin Loud and Saying Nothin', 68, 1, 2, N'James Brown & Bobby Byrd', 360411, 11994859, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (851, N'P�tala', 69, 1, 7, 270080, 8856165, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (852, N'Meu Bem-Querer', 69, 1, 7, 255608, 8330047, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (853, N'Cigano', 69, 1, 7, 304692, 10037362, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (854, N'Boa Noite', 69, 1, 7, 338755, 11283582, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (855, N'Fato Consumado', 69, 1, 7, 211565, 7018586, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (856, N'Faltando Um Peda�o', 69, 1, 7, 267728, 8788760, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (857, N'�libi', 69, 1, 7, 213237, 6928434, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (858, N'Esquinas', 69, 1, 7, 280999, 9096726, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (859, N'Se...', 69, 1, 7, 286432, 9413777, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (860, N'Eu Te Devoro', 69, 1, 7, 311614, 10312775, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (861, N'Lil�s', 69, 1, 7, 274181, 9049542, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (862, N'Acelerou', 69, 1, 7, 284081, 9396942, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (863, N'Um Amor Puro', 69, 1, 7, 327784, 10687311, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (864, N'Samurai', 70, 1, 7, N'Djavan', 330997, 10872787, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (865, N'Nem Um Dia', 70, 1, 7, N'Djavan', 337423, 11181446, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (866, N'Oceano', 70, 1, 7, N'Djavan', 217338, 7026441, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (867, N'A�ai', 70, 1, 7, N'Djavan', 270968, 8893682, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (868, N'Serrado', 70, 1, 7, N'Djavan', 295314, 9842240, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (869, N'Flor De Lis', 70, 1, 7, N'Djavan', 236355, 7801108, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (870, N'Amar � Tudo', 70, 1, 7, N'Djavan', 211617, 7073899, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (871, N'Azul', 70, 1, 7, N'Djavan', 253962, 8381029, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (872, N'Seduzir', 70, 1, 7, N'Djavan', 277524, 9163253, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (873, N'A Carta', 70, 1, 7, N'Djavan - Gabriel, O Pensador', 347297, 11493463, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (874, N'Sina', 70, 1, 7, N'Djavan', 268173, 8906539, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (875, N'Acelerou', 70, 1, 7, N'Djavan', 284133, 9391439, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (876, N'Um Amor Puro', 70, 1, 7, N'Djavan', 327105, 10664698, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (877, N'O B�bado e a Equilibrista', 71, 1, 7, 223059, 7306143, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (878, N'O Mestre-Sala dos Mares', 71, 1, 7, 186226, 6180414, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (879, N'Atr�s da Porta', 71, 1, 7, 166608, 5432518, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (880, N'Dois Pra L�, Dois Pra C�', 71, 1, 7, 263026, 8684639, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (881, N'Casa no Campo', 71, 1, 7, 170788, 5531841, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (882, N'Romaria', 71, 1, 7, 242834, 7968525, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (883, N'Al�, Al�, Marciano', 71, 1, 7, 241397, 8137254, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (884, N'Me Deixas Louca', 71, 1, 7, 214831, 6888030, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (885, N'Fascina��o', 71, 1, 7, 180793, 5793959, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (886, N'Saudosa Maloca', 71, 1, 7, 278125, 9059416, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (887, N'As Apar�ncias Enganam', 71, 1, 7, 247379, 8014346, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (888, N'Madalena', 71, 1, 7, 157387, 5243721, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (889, N'Maria Rosa', 71, 1, 7, 232803, 7592504, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "milliseconds", "bytes", "unitprice") VALUES (890, N'Aprendendo A Jogar', 71, 1, 7, 290664, 9391041, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (891, N'Layla', 72, 1, 6, N'Clapton/Gordon', 430733, 14115792, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (892, N'Badge', 72, 1, 6, N'Clapton/Harrison', 163552, 5322942, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (893, N'I Feel Free', 72, 1, 6, N'Bruce/Clapton', 174576, 5725684, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (894, N'Sunshine Of Your Love', 72, 1, 6, N'Bruce/Clapton', 252891, 8225889, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (895, N'Crossroads', 72, 1, 6, N'Clapton/Robert Johnson Arr: Eric Clapton', 253335, 8273540, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (896, N'Strange Brew', 72, 1, 6, N'Clapton/Collins/Pappalardi', 167810, 5489787, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (897, N'White Room', 72, 1, 6, N'Bruce/Clapton', 301583, 9872606, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (898, N'Bell Bottom Blues', 72, 1, 6, N'Clapton', 304744, 9946681, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (899, N'Cocaine', 72, 1, 6, N'Cale/Clapton', 215928, 7138399, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (900, N'I Shot The Sheriff', 72, 1, 6, N'Marley', 263862, 8738973, 0.99);
INSERT INTO "track" ("track_id", "name", "album_id", "mediatype_id", "genre_id", "composer", "milliseconds", "bytes", "unitprice") VALUES (901, N'After Midnight', 72, 1, 6, N'Clapton/J. J. Cale', 191320, 64
</pre>
<hr>


