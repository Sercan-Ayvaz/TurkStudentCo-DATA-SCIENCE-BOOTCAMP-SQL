  # 🎬 DVD Rental Veritabanı Kurulumu (PostgreSQL)

Bu rehberde, PostgreSQL üzerinde DVD Rental örnek veritabanını `.sql` uzantılı dosya kullanarak nasıl kurabileceğinizi adım adım öğreneceksiniz.

## 📦 Gereksinimler

- PostgreSQL (13+ sürüm önerilir)
- pgAdmin veya terminal
- `dvdrental.sql` dosyası (veritabanı yedeği)

> 📌 Not: `.sql` dosyasını [PostgreSQL resmi sitesinden](https://www.postgresql.org/ftp/projects/pgFoundry/dbsamples/dvdrental/) veya güvenilir kaynaklardan indirebilirsiniz.
Eğer bulamazsanız, `.tar` uzantılı dosyayı SQL'e dönüştürerek de kullanabilirsiniz.

---

## 🔧 Kurulum Adımları

### 1. Veritabanını Oluşturun

İlk olarak PostgreSQL'de boş bir veritabanı oluşturun. Örneğin:

```sql
CREATE DATABASE dvdrental;

## 2. SQL Dosyasını Yükleyin
1. Yöntem: pgAdmin (GUI)
- dvdrental.sql dosyasını açın.
- pgAdmin üzerinde "dvdrental" veritabanını seçin.
- Sağ tıklayıp "Query Tool" (Sorgu Aracı) seçeneğini açın.
- Dosyanın içeriğini yapıştırın ve Execute (▶) butonuna basın.

2. Yöntem: Terminal (psql)

psql -U postgres -d dvdrental -f dvdrental.sql
```
___U postgres kısmı kullanıcı adını, -d dvdrental ise veritabanı adını temsil eder.___

✅ Kurulum Sonrası
Kurulum tamamlandığında DVD Rental veritabanı içerisinde aşağıdaki tablolar aktif hale gelir:

- actor
- address
- category
- city
- country
- customer
- film
- inventory
- language
- payment
- rental
- staff
- store

Veritabanınız test ve sorgu çalışmaları için hazırdır.

## 🧠 Ek Bilgi
Eğer elinizde .tar uzantılı bir yedeğiniz varsa, terminalden pg_restore komutu ile de kurulum yapılabilir.

Veritabanı örneği, eğitim ve test amaçlıdır. Gerçek projelerde doğrudan kullanılmamalıdır.

## 📁 Kaynaklar
PostgreSQL Resmi DVD Rental Örneği
