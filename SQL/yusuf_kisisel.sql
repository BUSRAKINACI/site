-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 01 Haz 2020, 12:15:33
-- Sunucu sürümü: 10.4.10-MariaDB
-- PHP Sürümü: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `yusuf_kisisel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adres`
--

DROP TABLE IF EXISTS `adres`;
CREATE TABLE IF NOT EXISTS `adres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uyeid` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adres_tipi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `firma_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adres` text COLLATE utf8_turkish_ci NOT NULL,
  `sehir` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `semt` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `postakodu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `vd` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `vn` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `tc` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ceptel` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `evtel` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `istel` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `adres`
--

INSERT INTO `adres` (`id`, `uyeid`, `baslik`, `adres_tipi`, `ad`, `soyad`, `firma_adi`, `adres`, `sehir`, `semt`, `postakodu`, `vd`, `vn`, `tc`, `ceptel`, `evtel`, `istel`) VALUES
(6, '9', 'İş Adresim', 'kurumsal', 'osman', 'FATSA', 'Web Ofisi Yazılım Hizmetleri', 'Liman Mahallesi Gezi Caddesi 6-A/12', '55', '751', '55000', 'Gaziler', '43411208610', '43411208610', '05449058442', '05378726708', ''),
(7, '9', 'Ev Adresim', 'bireysel', 'osman', 'fatsa', '', 'Liman Mahallesi Gezi Caddesi', '55', '751', '55000', '', '', '43411208610', '05378726708', '', ''),
(8, '11', '', 'bireysel', 'asdas', 'asdas', '', 'asdasdas', '75', '927', '432', '', '', '32423423423', '32423423', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `alt_urun_kategori`
--

DROP TABLE IF EXISTS `alt_urun_kategori`;
CREATE TABLE IF NOT EXISTS `alt_urun_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sec_kat` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ust_id` int(11) NOT NULL,
  `sira` int(11) NOT NULL,
  `kategori_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `alt_urun_kategori`
--

INSERT INTO `alt_urun_kategori` (`id`, `sec_kat`, `ust_id`, `sira`, `kategori_adi`, `seo`, `durum`) VALUES
(40, 'Renk', 58, 1, 'LİSE 1', 'Anahtarlik-Cesitleri', 1),
(41, 'Renk', 58, 2, 'LİSE 2', 'Cerceve-ve-Album-Cesitleri', 1),
(42, 'Renk', 58, 3, 'LİSE 3', 'Karma-Ahsap-Urunleri', 1),
(43, 'Renk', 58, 4, 'LİSE 4', 'Meyvelik-ve-Cerezlik', 1),
(44, 'Matematik', 59, 1, 'Matematik', 'Bilgisayar', 1),
(45, 'Geometri', 59, 2, 'Geometri', 'Notebook', 1),
(46, 'Fizik', 59, 3, 'Fizik', 'Labtop', 1),
(47, 'Kimya', 59, 4, 'Kimya', 'Dizustu', 1),
(49, 'renk', 60, 1, 'Matematik', 'Deneme', 1),
(50, 'Renk', 60, 2, 'Geometri', 'Ozel', 1),
(52, '', 60, 3, 'Fizik', 'Matematik', 1),
(53, '', 60, 4, 'Kimya', 'Matematik', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka_hesaplari`
--

DROP TABLE IF EXISTS `banka_hesaplari`;
CREATE TABLE IF NOT EXISTS `banka_hesaplari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banka_adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `alici` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sube_adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sube_kodu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hesap_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `IBAN` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hesap_turu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `banka_hesaplari`
--

INSERT INTO `banka_hesaplari` (`id`, `banka_adi`, `alici`, `sube_adi`, `sube_kodu`, `hesap_no`, `IBAN`, `hesap_turu`, `logo`, `durum`) VALUES
(1, 'Finansbank', 'SEZEN AKSU', '19 Mayıs', '965', '323443243', 'TR51 0011 1000 0000 0040 7708 24', 'TL', 'finansbank_logo4_425x230.jpg', 1),
(2, 'Garanti', 'SEZEN AKSU', 'Cumhuriyet Meydanı', '1174', '23423', 'TR25 0006 2001 1740 0006 6821 63', 'TL', 'logo_1.jpg', 1),
(4, 'Akbank', 'SEZEN AKSU', '&Ccedil;iftlik Şubesi', '0233', '342233', 'TR57 0004 6002 3388 8000 1905 82', '', '', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bilgiler`
--

DROP TABLE IF EXISTS `bilgiler`;
CREATE TABLE IF NOT EXISTS `bilgiler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bilgiler`
--

INSERT INTO `bilgiler` (`id`, `adi`, `aciklama`, `resim`, `seo`, `durum`) VALUES
(27, 'Teslimat', '<p>Kitap siparişlerinizin takibi PTT kargo aracılığıyla yapılmakta olup hep kargo şirketi hem online eğitim şirketimiz tarafından takip edilmektedir. Herhangi bir sorunda iade talimatını okuyarak ürünü iade edebilirisiniz.</p>\r\n\r\n', '', 'Teslimat', 1),
(28, 'Kalite Politikamız', '<p>Online Eğitim şirketi olarak amacımız sizlerin istediğiniz derslerden faydalanabilmeniz ve bizleri ülkemizi zirvelerde temsil etmeniiz. Bu yüzden sizler için sürekli kampanyalar yapmaktayız lütfen bizleri takip de kalın.</p>\r\n\r\n\r\n', '', 'Kalite-Politikamiz', 1),
(29, 'İade Şartları', '<p>Almış olduğunuz ders ve kitapların iade mevcuttur fakat bazı şartlarımız varıdır. Bunları iade şartları kısmından bakabilirsiniz.</p>\r\n', 'banner_left.jpg', 'Iade-Sartlari', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bloglar`
--

DROP TABLE IF EXISTS `bloglar`;
CREATE TABLE IF NOT EXISTS `bloglar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durum` int(11) NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `etiket` text COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `hit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bloglar`
--

INSERT INTO `bloglar` (`id`, `durum`, `resim`, `adi`, `aciklama`, `tarih`, `etiket`, `seo`, `hit`) VALUES
(18, 1, 'adsiz.jpg', '2021\' e kadar eklenecek yeni yayınevleri', '<p style=\"margin-bottom: 16px; line-height: 30px; color: rgb(34, 34, 34); font-family: \'Open Sans\', sans-serif;\">Her geçen gün yayınevleri gelişmekte ve yenileri gelmekte. Sizler için aralarından en iyi yayın yapanları ve sizler için en faydalı olan kaynakları bünyemize eklemeye çalışıyoruz.</p>', '28 Mayıs 2020, 13,10', 'eticaret kategorileri|mysql|jquery|sektörel paketler', '-2016-da-one-cikmasi-beklenen-e-ticaret-kategorileri', 26),
(19, 1, 'blogu.jpg', 'Çok izlenen derslerin diğer derslere göre farkı', '<p style=\"margin-bottom: 16px; line-height: 30px; color: rgb(34, 34, 34); font-family: \'Open Sans\', sans-serif;\">Online eğitimde kullanıcılarımıza daha çok öğrenmeleri için daha çok çeşitliliğe gidilmeye çalışmaktadır. Her dersten farklı hocalar tarafından sunulduğundan bazı derslerimiz tam anlaşılamıyor olabilir. Bu yüzden en çok satın alınan dersin fiyatını diğer derslere göre az tutuyoruz ki sizler daha kaliteli derslerden faydalanabilesiniz. İyi ki varsınız...</p>', '28 Mayıs 2020, 13:43', 'reklam ajansı|php|eticaret|yazılım hizmetleri', 'Bir-reklam-ajansi-e-ticaret-isinizi-gelistirmenizde-size-nasil-yardimci-olabilir-', 41),
(20, 1, 'blogs.jpg', 'Dünden bugüne online eğitimdeki gelişmeler', '<p style=\"margin-bottom: 16px; line-height: 30px; color: rgb(34, 34, 34); font-family: \'Open Sans\', sans-serif;\">İnternetten eğitimin ortaya çıkmasıyla pek çoğumuz için eğitim kavramı bambaşka bir noktaya geldi. Muhtemelen, online eğitim hayatımız boyunca görebileceğimiz en büyük yenilik olan&nbsp;<font color=\"#4483bd\">online eğitim</font>&nbsp;kavramı da hızla gelişmeye devam ediyor.</p><p style=\"margin-bottom: 16px; line-height: 30px; color: rgb(34, 34, 34); font-family: \'Open Sans\', sans-serif;\">Online eğitim kavramını bugünlere taşıyan gelişmeler nasıl yaşandı? Hangi yenilik ne kattı? İşte kronolojik sırasıyla her biri online eğitimin birer kilometre taşı olan bu önemli gelişmeler…</p><p style=\"margin-bottom: 16px; line-height: 30px; color: rgb(34, 34, 34); font-family: \'Open Sans\', sans-serif;\">İlk olarak 1830\'lu yıllarda mektupla öğrenim şeklide başlamıştır. Mektupla uzaktan eğitim, bir okul tarafından posta yoluyla yürütülen öğretim yöntemidir. Mektupla eğitim sisteminden genellikle fiziksel engelleri nedeniyle eve bağlı olanlar yararlanmıştır.  O yıllarda dernekler, aktif çalışanlar, silahlı kuvvetler mektupla eğitim sisteminden sertifika almak için  yararlanmışlardır.</p>Ülkemizde ilk uzaktan eğitim, 1956 senesinde Ankara Üniversitesi Hukuk Fakültesi Banka  ve Ticaret Hukuku Araştırma Enstitüsünde başlamıştır. Banka çalışanlarına eğitim verip sertifika kazanmayı hedefleyen bu çalışmanın başarılı olmasından sonra Milli Eğitim Bakanlığı Mektupla Öğretim Merkezi\'ni kurmuştur. Eğitimini dışarıdan tamamlamak isteyenlere mektupla kurslar verilmeye başlanmıştır.</p></h2><p style=\"margin-bottom: 16px; line-height: 30px; color: rgb(34, 34, 34); font-family: \'Open Sans\', sans-serif;\">Ülkemizde uzaktan eğitim adına büyük gelişme 1974 yılında, Mektupla yüksek öğretim merkezinin kurulmasıyla yaşanmıştır. En son 1981 yılında yürürlüğe giren yüksek öğretim yasası ile Anadolu Üniversitesi dahilinde Açık Öğretim Fakültesi Kurulmuştur.</p></h2><p style=\"margin-bottom: 16px; line-height: 30px; color: rgb(34, 34, 34); font-family: \'Open Sans\', sans-serif;\">Aynı kartı kullanarak farklı işletmelerde ödeme yapabilme kavramını ilk olarak 1950 yılında ortaya çıkartan Ralph Schneider ve Frank McNamara, o dönem sadece restoranlarda kullanılabilecek “The Diner’s Club” adında bir kart fikrini hayata geçirdiklerinde, alışveriş için de geleceğe yön veren bir yeniliğe imza atmış oldular. Bugün artık pek çok ülkede neredeyse nakit alışverişin önüne geçen kredi kartı kullanımı e-ticaretin de en önemli ödeme araçlerından biri olarak karşımıza çıkıyor.</p><p style=\"margin-bottom: 16px; line-height: 30px; color: rgb(34, 34, 34); font-family: \'Open Sans\', sans-serif;\">Mektupla uzaktan eğitim, öğrenciler arası eşitliklerin bozulması ve posta ulaşımlarında yaşanan problemler, gecikmeler ya da kayıplar öğrencilerin eğitimini doğrudan etkilemekteydi. Bu nedenle teknolojik gelişmeler ile beraber mektupla eğitim yerini yavaş yavaş diğer araçlara bırakmıştır. Aynı zamanda şuanki teknolojik imkanlarla yapılabilien grup halinde çalışmalar. Mektupla uzaktan eğitim sisteminde sağlanamamaktaydı.</p><p style=\"margin-bottom: 16px; line-height: 30px; color: rgb(34, 34, 34); font-family: \'Open Sans\', sans-serif;\">Yoğun iş hayatı yüzünden eğitimine devam etmek isteyip, gerçekleştiremeyen için uzaktan eğitim büyük bir avantajdır.  Uzaktan eğitim sisteminden alacağınız sertifika, herhangi bir eğitim biriminden alacağınız sertifikadan farksızdır. Uzaktan eğitim, örgün eğitime göre daha ekonomik ve pratiktir. Dolayısıyla geniş kitlelerin eğitilmesi, sertifika kazandırılması uzaktan eğitim sayesinde refah seviyesinin yükselmesini sağlayacaktır.</p>', '28 Mayıs 2020, 14:24', 'google|seo|eticaretv3|sektörel paketler', 'Dunden-bugune-alisverisi-etkileyen-en-onemli-gelismeler', 46);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ebulten`
--

DROP TABLE IF EXISTS `ebulten`;
CREATE TABLE IF NOT EXISTS `ebulten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ebulten`
--

INSERT INTO `ebulten` (`id`, `email`, `ip`, `tarih`) VALUES
(2, 'serkan@bey.com', '::1', '31 Temmuz 2016, 12:57'),
(5, 'demo@example.com', '::1', '31 Temmuz 2016, 20:52'),
(6, 'serkan@bey.com', '::1', '02 Ağustos 2016, 20:06');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etiketler`
--

DROP TABLE IF EXISTS `etiketler`;
CREATE TABLE IF NOT EXISTS `etiketler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `url` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `etiketler`
--

INSERT INTO `etiketler` (`id`, `adi`, `url`, `durum`) VALUES
(17, 'photoshop', '#', 1),
(18, 'web tasarım', '#', 1),
(19, 'php', '#', 1),
(20, 'mysql', '#', 1),
(21, 'jquery', '#', 1),
(22, 'eticaretv3', '#', 1),
(23, 'sekt&ouml;rel paketler', '#', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

DROP TABLE IF EXISTS `haberler`;
CREATE TABLE IF NOT EXISTS `haberler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durum` int(11) NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `ingaciklama` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`id`, `durum`, `resim`, `adi`, `aciklama`, `tarih`, `seo`, `ingadi`, `ingaciklama`) VALUES
(1, 1, 'genel.jpg', 'Anasayfa Büyük 529PX - 326PX', 'url', '03 Ağustos 2016, 23:28', 'Anasayfa-Buyuk-529PX---326PX', '', ''),
(2, 1, 'felsefe.jpg', 'Anasayfa Küçük 326PX - 260PX', '', '03 Ağustos 2016, 23:22', 'Anasayfa-Kucuk-326PX---260PX', '', ''),
(3, 1, 'indirim.jpg', 'Anasayfa Küçük Alt 336PX - 161PX', '', '03 Ağustos 2016, 23:22', 'Anasayfa-Kucuk-Alt-336PX---161PX', '', ''),
(4, 1, 'hoca.jpg', 'Yeni ürünler Yanı 270px - 310 px', '', '03 Ağustos 2016, 23:23', 'Yeni-urunler-Yani-270px---310-px', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilceler`
--

DROP TABLE IF EXISTS `ilceler`;
CREATE TABLE IF NOT EXISTS `ilceler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `il_id` int(11) DEFAULT NULL,
  `baslik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DF2497D4BAF0B6B8` (`il_id`)
) ENGINE=InnoDB AUTO_INCREMENT=968 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `ilceler`
--

INSERT INTO `ilceler` (`id`, `il_id`, `baslik`) VALUES
(1, 1, 'Seyhan'),
(2, 1, 'Ceyhan'),
(3, 1, 'Feke'),
(4, 1, 'Karaisalı'),
(5, 1, 'Karataş'),
(6, 1, 'Kozan'),
(7, 1, 'Pozantı'),
(8, 1, 'Saimbeyli'),
(9, 1, 'Tufanbeyli'),
(10, 1, 'Yumurtalık'),
(11, 1, 'Yüreğir'),
(12, 1, 'Aladağ'),
(13, 1, 'İmamoğlu'),
(14, 1, 'Sarıçam'),
(15, 1, 'Çukurova'),
(16, 2, 'Adıyaman Merkez'),
(17, 2, 'Besni'),
(18, 2, 'Çelikhan'),
(19, 2, 'Gerger'),
(20, 2, 'Gölbaşı / Adıyaman'),
(21, 2, 'Kahta'),
(22, 2, 'Samsat'),
(23, 2, 'Sincik'),
(24, 2, 'Tut'),
(25, 3, 'Afyonkarahisar Merkez'),
(26, 3, 'Bolvadin'),
(27, 3, 'Çay'),
(28, 3, 'Dazkırı'),
(29, 3, 'Dinar'),
(30, 3, 'Emirdağ'),
(31, 3, 'İhsaniye'),
(32, 3, 'Sandıklı'),
(33, 3, 'Sinanpaşa'),
(34, 3, 'Sultandağı'),
(35, 3, 'Şuhut'),
(36, 3, 'Başmakçı'),
(37, 3, 'Bayat / Afyonkarahisar'),
(38, 3, 'İscehisar'),
(39, 3, 'Çobanlar'),
(40, 3, 'Evciler'),
(41, 3, 'Hocalar'),
(42, 3, 'Kızılören'),
(43, 4, 'Ağrı Merkez'),
(44, 4, 'Diyadin'),
(45, 4, 'Doğubayazıt'),
(46, 4, 'Eleşkirt'),
(47, 4, 'Hamur'),
(48, 4, 'Patnos'),
(49, 4, 'Taşlıçay'),
(50, 4, 'Tutak'),
(51, 5, 'Amasya Merkez'),
(52, 5, 'Göynücek'),
(53, 5, 'Gümüşhacıköy'),
(54, 5, 'Merzifon'),
(55, 5, 'Suluova'),
(56, 5, 'Taşova'),
(57, 5, 'Hamamözü'),
(58, 6, 'Altındağ'),
(59, 6, 'Ayaş'),
(60, 6, 'Bala'),
(61, 6, 'Beypazarı'),
(62, 6, 'Çamlıdere'),
(63, 6, 'Çankaya'),
(64, 6, 'Çubuk'),
(65, 6, 'Elmadağ'),
(66, 6, 'Güdül'),
(67, 6, 'Haymana'),
(68, 6, 'Kalecik'),
(69, 6, 'Kızılcahamam'),
(70, 6, 'Nallıhan'),
(71, 6, 'Polatlı'),
(72, 6, 'Şereflikoçhisar'),
(73, 6, 'Yenimahalle'),
(74, 6, 'Gölbaşı / Ankara'),
(75, 6, 'Keçiören'),
(76, 6, 'Mamak'),
(77, 6, 'Sincan'),
(78, 6, 'Kazan'),
(79, 6, 'Akyurt'),
(80, 6, 'Etimesgut'),
(81, 6, 'Evren'),
(82, 6, 'Pursaklar'),
(83, 7, 'Akseki'),
(84, 7, 'Alanya'),
(85, 7, 'Elmalı'),
(86, 7, 'Finike'),
(87, 7, 'Gazipaşa'),
(88, 7, 'Gündoğmuş'),
(89, 7, 'Kaş'),
(90, 7, 'Korkuteli'),
(91, 7, 'Kumluca'),
(92, 7, 'Manavgat'),
(93, 7, 'Serik'),
(94, 7, 'Demre'),
(95, 7, 'İbradı'),
(96, 7, 'Kemer / Antalya'),
(97, 7, 'Aksu / Antalya'),
(98, 7, 'Döşemealtı'),
(99, 7, 'Kepez'),
(100, 7, 'Konyaaltı'),
(101, 7, 'Muratpaşa'),
(102, 8, 'Ardanuç'),
(103, 8, 'Arhavi'),
(104, 8, 'Artvin Merkez'),
(105, 8, 'Borçka'),
(106, 8, 'Hopa'),
(107, 8, 'Şavşat'),
(108, 8, 'Yusufeli'),
(109, 8, 'Murgul'),
(110, 9, 'Bozdoğan'),
(111, 9, 'Çine'),
(112, 9, 'Germencik'),
(113, 9, 'Karacasu'),
(114, 9, 'Koçarlı'),
(115, 9, 'Kuşadası'),
(116, 9, 'Kuyucak'),
(117, 9, 'Nazilli'),
(118, 9, 'Söke'),
(119, 9, 'Sultanhisar'),
(120, 9, 'Yenipazar / Aydın'),
(121, 9, 'Buharkent'),
(122, 9, 'İncirliova'),
(123, 9, 'Karpuzlu'),
(124, 9, 'Köşk'),
(125, 9, 'Didim'),
(126, 9, 'Efeler'),
(127, 10, 'Ayvalık'),
(128, 10, 'Balya'),
(129, 10, 'Bandırma'),
(130, 10, 'Bigadiç'),
(131, 10, 'Burhaniye'),
(132, 10, 'Dursunbey'),
(133, 10, 'Edremit / Balıkesir'),
(134, 10, 'Erdek'),
(135, 10, 'Gönen / Balıkesir'),
(136, 10, 'Havran'),
(137, 10, 'İvrindi'),
(138, 10, 'Kepsut'),
(139, 10, 'Manyas'),
(140, 10, 'Savaştepe'),
(141, 10, 'Sındırgı'),
(142, 10, 'Susurluk'),
(143, 10, 'Marmara'),
(144, 10, 'Gömeç'),
(145, 10, 'Altıeylül'),
(146, 10, 'Karesi'),
(147, 11, 'Bilecik Merkez'),
(148, 11, 'Bozüyük'),
(149, 11, 'Gölpazarı'),
(150, 11, 'Osmaneli'),
(151, 11, 'Pazaryeri'),
(152, 11, 'Söğüt'),
(153, 11, 'Yenipazar / Bilecik'),
(154, 11, 'İnhisar'),
(155, 12, 'Bingöl Merkez'),
(156, 12, 'Genç'),
(157, 12, 'Karlıova'),
(158, 12, 'Kiğı'),
(159, 12, 'Solhan'),
(160, 12, 'Adaklı'),
(161, 12, 'Yayladere'),
(162, 12, 'Yedisu'),
(163, 13, 'Adilcevaz'),
(164, 13, 'Ahlat'),
(165, 13, 'Bitlis Merkez'),
(166, 13, 'Hizan'),
(167, 13, 'Mutki'),
(168, 13, 'Tatvan'),
(169, 13, 'Güroymak'),
(170, 14, 'Bolu Merkez'),
(171, 14, 'Gerede'),
(172, 14, 'Göynük'),
(173, 14, 'Kıbrıscık'),
(174, 14, 'Mengen'),
(175, 14, 'Mudurnu'),
(176, 14, 'Seben'),
(177, 14, 'Dörtdivan'),
(178, 14, 'Yeniçağa'),
(179, 15, 'Ağlasun'),
(180, 15, 'Bucak'),
(181, 15, 'Burdur Merkez'),
(182, 15, 'Gölhisar'),
(183, 15, 'Tefenni'),
(184, 15, 'Yeşilova'),
(185, 15, 'Karamanlı'),
(186, 15, 'Kemer / Burdur'),
(187, 15, 'Altınyayla / Burdur'),
(188, 15, 'Çavdır'),
(189, 15, 'Çeltikçi'),
(190, 16, 'Gemlik'),
(191, 16, 'İnegöl'),
(192, 16, 'İznik'),
(193, 16, 'Karacabey'),
(194, 16, 'Keles'),
(195, 16, 'Mudanya'),
(196, 16, 'Mustafakemalpaşa'),
(197, 16, 'Orhaneli'),
(198, 16, 'Orhangazi'),
(199, 16, 'Yenişehir / Bursa'),
(200, 16, 'Büyükorhan'),
(201, 16, 'Harmancık'),
(202, 16, 'Nilüfer'),
(203, 16, 'Osmangazi'),
(204, 16, 'Yıldırım'),
(205, 16, 'Gürsu'),
(206, 16, 'Kestel'),
(207, 17, 'Ayvacık / Çanakkale'),
(208, 17, 'Bayramiç'),
(209, 17, 'Biga'),
(210, 17, 'Bozcaada'),
(211, 17, 'Çan'),
(212, 17, 'Çanakkale Merkez'),
(213, 17, 'Eceabat'),
(214, 17, 'Ezine'),
(215, 17, 'Gelibolu'),
(216, 17, 'Gökçeada'),
(217, 17, 'Lapseki'),
(218, 17, 'Yenice / Çanakkale'),
(219, 18, 'Çankırı Merkez'),
(220, 18, 'Çerkeş'),
(221, 18, 'Eldivan'),
(222, 18, 'Ilgaz'),
(223, 18, 'Kurşunlu'),
(224, 18, 'Orta'),
(225, 18, 'Şabanözü'),
(226, 18, 'Yapraklı'),
(227, 18, 'Atkaracalar'),
(228, 18, 'Kızılırmak'),
(229, 18, 'Bayramören'),
(230, 18, 'Korgun'),
(231, 19, 'Alaca'),
(232, 19, 'Bayat / Çorum'),
(233, 19, 'Çorum Merkez'),
(234, 19, 'İskilip'),
(235, 19, 'Kargı'),
(236, 19, 'Mecitözü'),
(237, 19, 'Ortaköy / Çorum'),
(238, 19, 'Osmancık'),
(239, 19, 'Sungurlu'),
(240, 19, 'Boğazkale'),
(241, 19, 'Uğurludağ'),
(242, 19, 'Dodurga'),
(243, 19, 'Laçin'),
(244, 19, 'Oğuzlar'),
(245, 20, 'Acıpayam'),
(246, 20, 'Buldan'),
(247, 20, 'Çal'),
(248, 20, 'Çameli'),
(249, 20, 'Çardak'),
(250, 20, 'Çivril'),
(251, 20, 'Güney'),
(252, 20, 'Kale / Denizli'),
(253, 20, 'Sarayköy'),
(254, 20, 'Tavas'),
(255, 20, 'Babadağ'),
(256, 20, 'Bekilli'),
(257, 20, 'Honaz'),
(258, 20, 'Serinhisar'),
(259, 20, 'Pamukkale'),
(260, 20, 'Baklan'),
(261, 20, 'Beyağaç'),
(262, 20, 'Bozkurt / Denizli'),
(263, 20, 'Merkezefendi'),
(264, 21, 'Bismil'),
(265, 21, 'Çermik'),
(266, 21, 'Çınar'),
(267, 21, 'Çüngüş'),
(268, 21, 'Dicle'),
(269, 21, 'Ergani'),
(270, 21, 'Hani'),
(271, 21, 'Hazro'),
(272, 21, 'Kulp'),
(273, 21, 'Lice'),
(274, 21, 'Silvan'),
(275, 21, 'Eğil'),
(276, 21, 'Kocaköy'),
(277, 21, 'Bağlar'),
(278, 21, 'Kayapınar'),
(279, 21, 'Sur'),
(280, 21, 'Yenişehir / Diyarbakır'),
(281, 22, 'Edirne Merkez'),
(282, 22, 'Enez'),
(283, 22, 'Havsa'),
(284, 22, 'İpsala'),
(285, 22, 'Keşan'),
(286, 22, 'Lalapaşa'),
(287, 22, 'Meriç'),
(288, 22, 'Uzunköprü'),
(289, 22, 'Süloğlu'),
(290, 23, 'Ağın'),
(291, 23, 'Baskil'),
(292, 23, 'Elazığ Merkez'),
(293, 23, 'Karakoçan'),
(294, 23, 'Keban'),
(295, 23, 'Maden'),
(296, 23, 'Palu'),
(297, 23, 'Sivrice'),
(298, 23, 'Arıcak'),
(299, 23, 'Kovancılar'),
(300, 23, 'Alacakaya'),
(301, 24, 'Çayırlı'),
(302, 24, 'Erzincan Merkez'),
(303, 24, 'İliç'),
(304, 24, 'Kemah'),
(305, 24, 'Kemaliye'),
(306, 24, 'Refahiye'),
(307, 24, 'Tercan'),
(308, 24, 'Üzümlü'),
(309, 24, 'Otlukbeli'),
(310, 25, 'Aşkale'),
(311, 25, 'Çat'),
(312, 25, 'Hınıs'),
(313, 25, 'Horasan'),
(314, 25, 'İspir'),
(315, 25, 'Karayazı'),
(316, 25, 'Narman'),
(317, 25, 'Oltu'),
(318, 25, 'Olur'),
(319, 25, 'Pasinler'),
(320, 25, 'Şenkaya'),
(321, 25, 'Tekman'),
(322, 25, 'Tortum'),
(323, 25, 'Karaçoban'),
(324, 25, 'Uzundere'),
(325, 25, 'Pazaryolu'),
(326, 25, 'Aziziye'),
(327, 25, 'Köprüköy'),
(328, 25, 'Palandöken'),
(329, 25, 'Yakutiye'),
(330, 26, 'Çifteler'),
(331, 26, 'Mahmudiye'),
(332, 26, 'Mihalıççık'),
(333, 26, 'Sarıcakaya'),
(334, 26, 'Seyitgazi'),
(335, 26, 'Sivrihisar'),
(336, 26, 'Alpu'),
(337, 26, 'Beylikova'),
(338, 26, 'İnönü'),
(339, 26, 'Günyüzü'),
(340, 26, 'Han'),
(341, 26, 'Mihalgazi'),
(342, 26, 'Odunpazarı'),
(343, 26, 'Tepebaşı'),
(344, 27, 'Araban'),
(345, 27, 'İslahiye'),
(346, 27, 'Nizip'),
(347, 27, 'Oğuzeli'),
(348, 27, 'Yavuzeli'),
(349, 27, 'Şahinbey'),
(350, 27, 'Şehitkamil'),
(351, 27, 'Karkamış'),
(352, 27, 'Nurdağı'),
(353, 28, 'Alucra'),
(354, 28, 'Bulancak'),
(355, 28, 'Dereli'),
(356, 28, 'Espiye'),
(357, 28, 'Eynesil'),
(358, 28, 'Giresun Merkez'),
(359, 28, 'Görele'),
(360, 28, 'Keşap'),
(361, 28, 'Şebinkarahisar'),
(362, 28, 'Tirebolu'),
(363, 28, 'Piraziz'),
(364, 28, 'Yağlıdere'),
(365, 28, 'Çamoluk'),
(366, 28, 'Çanakçı'),
(367, 28, 'Doğankent'),
(368, 28, 'Güce'),
(369, 29, 'Gümüşhane Merkez'),
(370, 29, 'Kelkit'),
(371, 29, 'Şiran'),
(372, 29, 'Torul'),
(373, 29, 'Köse'),
(374, 29, 'Kürtün'),
(375, 30, 'Çukurca'),
(376, 30, 'Hakkari Merkez'),
(377, 30, 'Şemdinli'),
(378, 30, 'Yüksekova'),
(379, 31, 'Altınözü'),
(380, 31, 'Dörtyol'),
(381, 31, 'Hassa'),
(382, 31, 'İskenderun'),
(383, 31, 'Kırıkhan'),
(384, 31, 'Reyhanlı'),
(385, 31, 'Samandağ'),
(386, 31, 'Yayladağı'),
(387, 31, 'Erzin'),
(388, 31, 'Belen'),
(389, 31, 'Kumlu'),
(390, 31, 'Antakya'),
(391, 31, 'Arsuz'),
(392, 31, 'Defne'),
(393, 31, 'Payas'),
(394, 32, 'Atabey'),
(395, 32, 'Eğirdir'),
(396, 32, 'Gelendost'),
(397, 32, 'Isparta Merkez'),
(398, 32, 'Keçiborlu'),
(399, 32, 'Senirkent'),
(400, 32, 'Sütçüler'),
(401, 32, 'Şarkikaraağaç'),
(402, 32, 'Uluborlu'),
(403, 32, 'Yalvaç'),
(404, 32, 'Aksu / Isparta'),
(405, 32, 'Gönen / Isparta'),
(406, 32, 'Yenişarbademli'),
(407, 33, 'Anamur'),
(408, 33, 'Erdemli'),
(409, 33, 'Gülnar'),
(410, 33, 'Mut'),
(411, 33, 'Silifke'),
(412, 33, 'Tarsus'),
(413, 33, 'Aydıncık / Mersin'),
(414, 33, 'Bozyazı'),
(415, 33, 'Çamlıyayla'),
(416, 33, 'Akdeniz'),
(417, 33, 'Mezitli'),
(418, 33, 'Toroslar'),
(419, 33, 'Yenişehir / Mersin'),
(420, 34, 'Adalar'),
(421, 34, 'Bakırköy'),
(422, 34, 'Beşiktaş'),
(423, 34, 'Beykoz'),
(424, 34, 'Beyoğlu'),
(425, 34, 'Çatalca'),
(426, 34, 'Eyüp'),
(427, 34, 'Fatih'),
(428, 34, 'Gaziosmanpaşa'),
(429, 34, 'Kadıköy'),
(430, 34, 'Kartal'),
(431, 34, 'Sarıyer'),
(432, 34, 'Silivri'),
(433, 34, 'Şile'),
(434, 34, 'Şişli'),
(435, 34, 'Üsküdar'),
(436, 34, 'Zeytinburnu'),
(437, 34, 'Büyükçekmece'),
(438, 34, 'Kağıthane'),
(439, 34, 'Küçükçekmece'),
(440, 34, 'Pendik'),
(441, 34, 'Ümraniye'),
(442, 34, 'Bayrampaşa'),
(443, 34, 'Avcılar'),
(444, 34, 'Bağcılar'),
(445, 34, 'Bahçelievler'),
(446, 34, 'Güngören'),
(447, 34, 'Maltepe'),
(448, 34, 'Sultanbeyli'),
(449, 34, 'Tuzla'),
(450, 34, 'Esenler'),
(451, 34, 'Arnavutköy'),
(452, 34, 'Ataşehir'),
(453, 34, 'Başakşehir'),
(454, 34, 'Beylikdüzü'),
(455, 34, 'Çekmeköy'),
(456, 34, 'Esenyurt'),
(457, 34, 'Sancaktepe'),
(458, 34, 'Sultangazi'),
(459, 35, 'Aliağa'),
(460, 35, 'Bayındır'),
(461, 35, 'Bergama'),
(462, 35, 'Bornova'),
(463, 35, 'Çeşme'),
(464, 35, 'Dikili'),
(465, 35, 'Foça'),
(466, 35, 'Karaburun'),
(467, 35, 'Karşıyaka'),
(468, 35, 'Kemalpaşa'),
(469, 35, 'Kınık'),
(470, 35, 'Kiraz'),
(471, 35, 'Menemen'),
(472, 35, 'Ödemiş'),
(473, 35, 'Seferihisar'),
(474, 35, 'Selçuk'),
(475, 35, 'Tire'),
(476, 35, 'Torbalı'),
(477, 35, 'Urla'),
(478, 35, 'Beydağ'),
(479, 35, 'Buca'),
(480, 35, 'Konak'),
(481, 35, 'Menderes'),
(482, 35, 'Balçova'),
(483, 35, 'Çiğli'),
(484, 35, 'Gaziemir'),
(485, 35, 'Narlıdere'),
(486, 35, 'Güzelbahçe'),
(487, 35, 'Bayraklı'),
(488, 35, 'Karabağlar'),
(489, 36, 'Arpaçay'),
(490, 36, 'Digor'),
(491, 36, 'Kağızman'),
(492, 36, 'Kars Merkez'),
(493, 36, 'Sarıkamış'),
(494, 36, 'Selim'),
(495, 36, 'Susuz'),
(496, 36, 'Akyaka'),
(497, 37, 'Abana'),
(498, 37, 'Araç'),
(499, 37, 'Azdavay'),
(500, 37, 'Bozkurt / Kastamonu'),
(501, 37, 'Cide'),
(502, 37, 'Çatalzeytin'),
(503, 37, 'Daday'),
(504, 37, 'Devrekani'),
(505, 37, 'İnebolu'),
(506, 37, 'Kastamonu Merkez'),
(507, 37, 'Küre'),
(508, 37, 'Taşköprü'),
(509, 37, 'Tosya'),
(510, 37, 'İhsangazi'),
(511, 37, 'Pınarbaşı / Kastamonu'),
(512, 37, 'Şenpazar'),
(513, 37, 'Ağlı'),
(514, 37, 'Doğanyurt'),
(515, 37, 'Hanönü'),
(516, 37, 'Seydiler'),
(517, 38, 'Bünyan'),
(518, 38, 'Develi'),
(519, 38, 'Felahiye'),
(520, 38, 'İncesu'),
(521, 38, 'Pınarbaşı / Kayseri'),
(522, 38, 'Sarıoğlan'),
(523, 38, 'Sarız'),
(524, 38, 'Tomarza'),
(525, 38, 'Yahyalı'),
(526, 38, 'Yeşilhisar'),
(527, 38, 'Akkışla'),
(528, 38, 'Talas'),
(529, 38, 'Kocasinan'),
(530, 38, 'Melikgazi'),
(531, 38, 'Hacılar'),
(532, 38, 'Özvatan'),
(533, 39, 'Babaeski'),
(534, 39, 'Demirköy'),
(535, 39, 'Kırklareli Merkez'),
(536, 39, 'Kofçaz'),
(537, 39, 'Lüleburgaz'),
(538, 39, 'Pehlivanköy'),
(539, 39, 'Pınarhisar'),
(540, 39, 'Vize'),
(541, 40, 'Çiçekdağı'),
(542, 40, 'Kaman'),
(543, 40, 'Kırşehir Merkez'),
(544, 40, 'Mucur'),
(545, 40, 'Akpınar'),
(546, 40, 'Akçakent'),
(547, 40, 'Boztepe'),
(548, 41, 'Gebze'),
(549, 41, 'Gölcük'),
(550, 41, 'Kandıra'),
(551, 41, 'Karamürsel'),
(552, 41, 'Körfez'),
(553, 41, 'Derince'),
(554, 41, 'Başiskele'),
(555, 41, 'Çayırova'),
(556, 41, 'Darıca'),
(557, 41, 'Dilovası'),
(558, 41, 'İzmit'),
(559, 41, 'Kartepe'),
(560, 42, 'Akşehir'),
(561, 42, 'Beyşehir'),
(562, 42, 'Bozkır'),
(563, 42, 'Cihanbeyli'),
(564, 42, 'Çumra'),
(565, 42, 'Doğanhisar'),
(566, 42, 'Ereğli / Konya'),
(567, 42, 'Hadim'),
(568, 42, 'Ilgın'),
(569, 42, 'Kadınhanı'),
(570, 42, 'Karapınar'),
(571, 42, 'Kulu'),
(572, 42, 'Sarayönü'),
(573, 42, 'Seydişehir'),
(574, 42, 'Yunak'),
(575, 42, 'Akören'),
(576, 42, 'Altınekin'),
(577, 42, 'Derebucak'),
(578, 42, 'Hüyük'),
(579, 42, 'Karatay'),
(580, 42, 'Meram'),
(581, 42, 'Selçuklu'),
(582, 42, 'Taşkent'),
(583, 42, 'Ahırlı'),
(584, 42, 'Çeltik'),
(585, 42, 'Derbent'),
(586, 42, 'Emirgazi'),
(587, 42, 'Güneysınır'),
(588, 42, 'Halkapınar'),
(589, 42, 'Tuzlukçu'),
(590, 42, 'Yalıhüyük'),
(591, 43, 'Altıntaş'),
(592, 43, 'Domaniç'),
(593, 43, 'Emet'),
(594, 43, 'Gediz'),
(595, 43, 'Kütahya Merkez'),
(596, 43, 'Simav'),
(597, 43, 'Tavşanlı'),
(598, 43, 'Aslanapa'),
(599, 43, 'Dumlupınar'),
(600, 43, 'Hisarcık'),
(601, 43, 'Şaphane'),
(602, 43, 'Çavdarhisar'),
(603, 43, 'Pazarlar'),
(604, 44, 'Akçadağ'),
(605, 44, 'Arapgir'),
(606, 44, 'Arguvan'),
(607, 44, 'Darende'),
(608, 44, 'Doğanşehir'),
(609, 44, 'Hekimhan'),
(610, 44, 'Pütürge'),
(611, 44, 'Yeşilyurt / Malatya'),
(612, 44, 'Battalgazi'),
(613, 44, 'Doğanyol'),
(614, 44, 'Kale / Malatya'),
(615, 44, 'Kuluncak'),
(616, 44, 'Yazıhan'),
(617, 45, 'Akhisar'),
(618, 45, 'Alaşehir'),
(619, 45, 'Demirci'),
(620, 45, 'Gördes'),
(621, 45, 'Kırkağaç'),
(622, 45, 'Kula'),
(623, 45, 'Salihli'),
(624, 45, 'Sarıgöl'),
(625, 45, 'Saruhanlı'),
(626, 45, 'Selendi'),
(627, 45, 'Soma'),
(628, 45, 'Turgutlu'),
(629, 45, 'Ahmetli'),
(630, 45, 'Gölmarmara'),
(631, 45, 'Köprübaşı / Manisa'),
(632, 45, 'Şehzadeler'),
(633, 45, 'Yunusemre'),
(634, 46, 'Afşin'),
(635, 46, 'Andırın'),
(636, 46, 'Elbistan'),
(637, 46, 'Göksun'),
(638, 46, 'Pazarcık'),
(639, 46, 'Türkoğlu'),
(640, 46, 'Çağlayancerit'),
(641, 46, 'Ekinözü'),
(642, 46, 'Nurhak'),
(643, 46, 'Dulkadiroğlu'),
(644, 46, 'Onikişubat'),
(645, 47, 'Derik'),
(646, 47, 'Kızıltepe'),
(647, 47, 'Mazıdağı'),
(648, 47, 'Midyat'),
(649, 47, 'Nusaybin'),
(650, 47, 'Ömerli'),
(651, 47, 'Savur'),
(652, 47, 'Dargeçit'),
(653, 47, 'Yeşilli'),
(654, 47, 'Artuklu'),
(655, 48, 'Bodrum'),
(656, 48, 'Datça'),
(657, 48, 'Fethiye'),
(658, 48, 'Köyceğiz'),
(659, 48, 'Marmaris'),
(660, 48, 'Milas'),
(661, 48, 'Ula'),
(662, 48, 'Yatağan'),
(663, 48, 'Dalaman'),
(664, 48, 'Ortaca'),
(665, 48, 'Kavaklıdere'),
(666, 48, 'Menteşe'),
(667, 48, 'Seydikemer'),
(668, 49, 'Bulanık'),
(669, 49, 'Malazgirt'),
(670, 49, 'Muş Merkez'),
(671, 49, 'Varto'),
(672, 49, 'Hasköy'),
(673, 49, 'Korkut'),
(674, 50, 'Avanos'),
(675, 50, 'Derinkuyu'),
(676, 50, 'Gülşehir'),
(677, 50, 'Hacıbektaş'),
(678, 50, 'Kozaklı'),
(679, 50, 'Nevşehir Merkez'),
(680, 50, 'Ürgüp'),
(681, 50, 'Acıgöl'),
(682, 51, 'Bor'),
(683, 51, 'Çamardı'),
(684, 51, 'Niğde Merkez'),
(685, 51, 'Ulukışla'),
(686, 51, 'Altunhisar'),
(687, 51, 'Çiftlik'),
(688, 52, 'Akkuş'),
(689, 52, 'Aybastı'),
(690, 52, 'Fatsa'),
(691, 52, 'Gölköy'),
(692, 52, 'Korgan'),
(693, 52, 'Kumru'),
(694, 52, 'Mesudiye'),
(695, 52, 'Perşembe'),
(696, 52, 'Ulubey / Ordu'),
(697, 52, 'Ünye'),
(698, 52, 'Gülyalı'),
(699, 52, 'Gürgentepe'),
(700, 52, 'Çamaş'),
(701, 52, 'Çatalpınar'),
(702, 52, 'Çaybaşı'),
(703, 52, 'İkizce'),
(704, 52, 'Kabadüz'),
(705, 52, 'Kabataş'),
(706, 52, 'Altınordu'),
(707, 53, 'Ardeşen'),
(708, 53, 'Çamlıhemşin'),
(709, 53, 'Çayeli'),
(710, 53, 'Fındıklı'),
(711, 53, 'İkizdere'),
(712, 53, 'Kalkandere'),
(713, 53, 'Pazar / Rize'),
(714, 53, 'Rize Merkez'),
(715, 53, 'Güneysu'),
(716, 53, 'Derepazarı'),
(717, 53, 'Hemşin'),
(718, 53, 'İyidere'),
(719, 54, 'Akyazı'),
(720, 54, 'Geyve'),
(721, 54, 'Hendek'),
(722, 54, 'Karasu'),
(723, 54, 'Kaynarca'),
(724, 54, 'Sapanca'),
(725, 54, 'Kocaali'),
(726, 54, 'Pamukova'),
(727, 54, 'Taraklı'),
(728, 54, 'Ferizli'),
(729, 54, 'Karapürçek'),
(730, 54, 'Söğütlü'),
(731, 54, 'Adapazarı'),
(732, 54, 'Arifiye'),
(733, 54, 'Erenler'),
(734, 54, 'Serdivan'),
(735, 55, 'Alaçam'),
(736, 55, 'Bafra'),
(737, 55, 'Çarşamba'),
(738, 55, 'Havza'),
(739, 55, 'Kavak'),
(740, 55, 'Ladik'),
(741, 55, 'Terme'),
(742, 55, 'Vezirköprü'),
(743, 55, 'Asarcık'),
(744, 55, '19 Mayıs'),
(745, 55, 'Salıpazarı'),
(746, 55, 'Tekkeköy'),
(747, 55, 'Ayvacık / Samsun'),
(748, 55, 'Yakakent'),
(749, 55, 'Atakum'),
(750, 55, 'Canik'),
(751, 55, 'İlkadım'),
(752, 56, 'Baykan'),
(753, 56, 'Eruh'),
(754, 56, 'Kurtalan'),
(755, 56, 'Pervari'),
(756, 56, 'Siirt Merkez'),
(757, 56, 'Şirvan'),
(758, 56, 'Tillo'),
(759, 57, 'Ayancık'),
(760, 57, 'Boyabat'),
(761, 57, 'Durağan'),
(762, 57, 'Erfelek'),
(763, 57, 'Gerze'),
(764, 57, 'Sinop Merkez'),
(765, 57, 'Türkeli'),
(766, 57, 'Dikmen'),
(767, 57, 'Saraydüzü'),
(768, 58, 'Divriği'),
(769, 58, 'Gemerek'),
(770, 58, 'Gürün'),
(771, 58, 'Hafik'),
(772, 58, 'İmranlı'),
(773, 58, 'Kangal'),
(774, 58, 'Koyulhisar'),
(775, 58, 'Sivas Merkez'),
(776, 58, 'Suşehri'),
(777, 58, 'Şarkışla'),
(778, 58, 'Yıldızeli'),
(779, 58, 'Zara'),
(780, 58, 'Akıncılar'),
(781, 58, 'Altınyayla / Sivas'),
(782, 58, 'Doğanşar'),
(783, 58, 'Gölova'),
(784, 58, 'Ulaş'),
(785, 59, 'Çerkezköy'),
(786, 59, 'Çorlu'),
(787, 59, 'Hayrabolu'),
(788, 59, 'Malkara'),
(789, 59, 'Muratlı'),
(790, 59, 'Saray / Tekirdağ'),
(791, 59, 'Şarköy'),
(792, 59, 'Marmaraereğlisi'),
(793, 59, 'Ergene'),
(794, 59, 'Süleymanpaşa'),
(795, 60, 'Almus'),
(796, 60, 'Artova'),
(797, 60, 'Erbaa'),
(798, 60, 'Niksar'),
(799, 60, 'Reşadiye'),
(800, 60, 'Tokat Merkez'),
(801, 60, 'Turhal'),
(802, 60, 'Zile'),
(803, 60, 'Pazar / Tokat'),
(804, 60, 'Yeşilyurt / Tokat'),
(805, 60, 'Başçiftlik'),
(806, 60, 'Sulusaray'),
(807, 61, 'Akçaabat'),
(808, 61, 'Araklı'),
(809, 61, 'Arsin'),
(810, 61, 'Çaykara'),
(811, 61, 'Maçka'),
(812, 61, 'Of'),
(813, 61, 'Sürmene'),
(814, 61, 'Tonya'),
(815, 61, 'Vakfıkebir'),
(816, 61, 'Yomra'),
(817, 61, 'Beşikdüzü'),
(818, 61, 'Şalpazarı'),
(819, 61, 'Çarşıbaşı'),
(820, 61, 'Dernekpazarı'),
(821, 61, 'Düzköy'),
(822, 61, 'Hayrat'),
(823, 61, 'Köprübaşı / Trabzon'),
(824, 61, 'Ortahisar'),
(825, 62, 'Çemişgezek'),
(826, 62, 'Hozat'),
(827, 62, 'Mazgirt'),
(828, 62, 'Nazımiye'),
(829, 62, 'Ovacık / Tunceli'),
(830, 62, 'Pertek'),
(831, 62, 'Pülümür'),
(832, 62, 'Tunceli Merkez'),
(833, 63, 'Akçakale'),
(834, 63, 'Birecik'),
(835, 63, 'Bozova'),
(836, 63, 'Ceylanpınar'),
(837, 63, 'Halfeti'),
(838, 63, 'Hilvan'),
(839, 63, 'Siverek'),
(840, 63, 'Suruç'),
(841, 63, 'Viranşehir'),
(842, 63, 'Harran'),
(843, 63, 'Eyyübiye'),
(844, 63, 'Haliliye'),
(845, 63, 'Karaköprü'),
(846, 64, 'Banaz'),
(847, 64, 'Eşme'),
(848, 64, 'Karahallı'),
(849, 64, 'Sivaslı'),
(850, 64, 'Ulubey / Uşak'),
(851, 64, 'Uşak Merkez'),
(852, 65, 'Başkale'),
(853, 65, 'Çatak'),
(854, 65, 'Erciş'),
(855, 65, 'Gevaş'),
(856, 65, 'Gürpınar'),
(857, 65, 'Muradiye'),
(858, 65, 'Özalp'),
(859, 65, 'Bahçesaray'),
(860, 65, 'Çaldıran'),
(861, 65, 'Edremit / Van'),
(862, 65, 'Saray / Van'),
(863, 65, 'İpekyolu'),
(864, 65, 'Tuşba'),
(865, 66, 'Akdağmadeni'),
(866, 66, 'Boğazlıyan'),
(867, 66, 'Çayıralan'),
(868, 66, 'Çekerek'),
(869, 66, 'Sarıkaya'),
(870, 66, 'Sorgun'),
(871, 66, 'Şefaatli'),
(872, 66, 'Yerköy'),
(873, 66, 'Yozgat Merkez'),
(874, 66, 'Aydıncık / Yozgat'),
(875, 66, 'Çandır'),
(876, 66, 'Kadışehri'),
(877, 66, 'Saraykent'),
(878, 66, 'Yenifakılı'),
(879, 67, 'Çaycuma'),
(880, 67, 'Devrek'),
(881, 67, 'Ereğli / Zonguldak'),
(882, 67, 'Zonguldak Merkez'),
(883, 67, 'Alaplı'),
(884, 67, 'Gökçebey'),
(885, 68, 'Aksaray Merkez'),
(886, 68, 'Ortaköy / Aksaray'),
(887, 68, 'Ağaçören'),
(888, 68, 'Güzelyurt'),
(889, 68, 'Sarıyahşi'),
(890, 68, 'Eskil'),
(891, 68, 'Gülağaç'),
(892, 69, 'Bayburt Merkez'),
(893, 69, 'Aydıntepe'),
(894, 69, 'Demirözü'),
(895, 70, 'Ermenek'),
(896, 70, 'Karaman Merkez'),
(897, 70, 'Ayrancı'),
(898, 70, 'Kazımkarabekir'),
(899, 70, 'Başyayla'),
(900, 70, 'Sarıveliler'),
(901, 71, 'Delice'),
(902, 71, 'Keskin'),
(903, 71, 'Kırıkkale Merkez'),
(904, 71, 'Sulakyurt'),
(905, 71, 'Bahşili'),
(906, 71, 'Balışeyh'),
(907, 71, 'Çelebi'),
(908, 71, 'Karakeçili'),
(909, 71, 'Yahşihan'),
(910, 72, 'Batman Merkez'),
(911, 72, 'Beşiri'),
(912, 72, 'Gercüş'),
(913, 72, 'Kozluk'),
(914, 72, 'Sason'),
(915, 72, 'Hasankeyf'),
(916, 73, 'Beytüşşebap'),
(917, 73, 'Cizre'),
(918, 73, 'İdil'),
(919, 73, 'Silopi'),
(920, 73, 'Şırnak Merkez'),
(921, 73, 'Uludere'),
(922, 73, 'Güçlükonak'),
(923, 74, 'Bartın Merkez'),
(924, 74, 'Kurucaşile'),
(925, 74, 'Ulus'),
(926, 74, 'Amasra'),
(927, 75, 'Ardahan Merkez'),
(928, 75, 'Çıldır'),
(929, 75, 'Göle'),
(930, 75, 'Hanak'),
(931, 75, 'Posof'),
(932, 75, 'Damal'),
(933, 76, 'Aralık'),
(934, 76, 'Iğdır Merkez'),
(935, 76, 'Tuzluca'),
(936, 76, 'Karakoyunlu'),
(937, 77, 'Yalova Merkez'),
(938, 77, 'Altınova'),
(939, 77, 'Armutlu'),
(940, 77, 'Çınarcık'),
(941, 77, 'Çiftlikköy'),
(942, 77, 'Termal'),
(943, 78, 'Eflani'),
(944, 78, 'Eskipazar'),
(945, 78, 'Karabük Merkez'),
(946, 78, 'Ovacık / Karabük'),
(947, 78, 'Safranbolu'),
(948, 78, 'Yenice / Karabük'),
(949, 79, 'Kilis Merkez'),
(950, 79, 'Elbeyli'),
(951, 79, 'Musabeyli'),
(952, 79, 'Polateli'),
(953, 80, 'Bahçe'),
(954, 80, 'Kadirli'),
(955, 80, 'Osmaniye Merkez'),
(956, 80, 'Düziçi'),
(957, 80, 'Hasanbeyli'),
(958, 80, 'Sumbas'),
(959, 80, 'Toprakkale'),
(960, 81, 'Akçakoca'),
(961, 81, 'Düzce Merkez'),
(962, 81, 'Yığılca'),
(963, 81, 'Cumayeri'),
(964, 81, 'Gölyaka'),
(965, 81, 'Çilimli'),
(966, 81, 'Gümüşova'),
(967, 81, 'Kaynaşlı');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

DROP TABLE IF EXISTS `iletisim`;
CREATE TABLE IF NOT EXISTS `iletisim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `konu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`id`, `isim`, `email`, `konu`, `mesaj`, `tarih`, `ip`) VALUES
(1, 'İSMAİL CAN', 'demo@example.com', 'Fiyat Hakkında', '', '01 Ağustos 2016, 13:56', '::1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iller`
--

DROP TABLE IF EXISTS `iller`;
CREATE TABLE IF NOT EXISTS `iller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `iller`
--

INSERT INTO `iller` (`id`, `baslik`) VALUES
(1, 'Adana'),
(2, 'Adıyaman'),
(3, 'Afyonkarahisar'),
(4, 'Ağrı'),
(5, 'Amasya'),
(6, 'Ankara'),
(7, 'Antalya'),
(8, 'Artvin'),
(9, 'Aydın'),
(10, 'Balıkesir'),
(11, 'Bilecik'),
(12, 'Bingöl'),
(13, 'Bitlis'),
(14, 'Bolu'),
(15, 'Burdur'),
(16, 'Bursa'),
(17, 'Çanakkale'),
(18, 'Çankırı'),
(19, 'Çorum'),
(20, 'Denizli'),
(21, 'Diyarbakır'),
(22, 'Edirne'),
(23, 'Elazığ'),
(24, 'Erzincan'),
(25, 'Erzurum'),
(26, 'Eskişehir'),
(27, 'Gaziantep'),
(28, 'Giresun'),
(29, 'Gümüşhane'),
(30, 'Hakkari'),
(31, 'Hatay'),
(32, 'Isparta'),
(33, 'Mersin'),
(34, 'İstanbul'),
(35, 'İzmir'),
(36, 'Kars'),
(37, 'Kastamonu'),
(38, 'Kayseri'),
(39, 'Kırklareli'),
(40, 'Kırşehir'),
(41, 'Kocaeli'),
(42, 'Konya'),
(43, 'Kütahya'),
(44, 'Malatya'),
(45, 'Manisa'),
(46, 'Kahramanmaraş'),
(47, 'Mardin'),
(48, 'Muğla'),
(49, 'Muş'),
(50, 'Nevşehir'),
(51, 'Niğde'),
(52, 'Ordu'),
(53, 'Rize'),
(54, 'Sakarya'),
(55, 'Samsun'),
(56, 'Siirt'),
(57, 'Sinop'),
(58, 'Sivas'),
(59, 'Tekirdağ'),
(60, 'Tokat'),
(61, 'Trabzon'),
(62, 'Tunceli'),
(63, 'Şanlıurfa'),
(64, 'Uşak'),
(65, 'Van'),
(66, 'Yozgat'),
(67, 'Zonguldak'),
(68, 'Aksaray'),
(69, 'Bayburt'),
(70, 'Karaman'),
(71, 'Kırıkkale'),
(72, 'Batman'),
(73, 'Şırnak'),
(74, 'Bartın'),
(75, 'Ardahan'),
(76, 'Iğdır'),
(77, 'Yalova'),
(78, 'Karabük'),
(79, 'Kilis'),
(80, 'Osmaniye'),
(81, 'Düzce');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `markalar`
--

DROP TABLE IF EXISTS `markalar`;
CREATE TABLE IF NOT EXISTS `markalar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  `ingadi` text COLLATE utf8_turkish_ci NOT NULL,
  `ingaciklama` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `markalar`
--

INSERT INTO `markalar` (`id`, `adi`, `aciklama`, `resim`, `seo`, `durum`, `ingadi`, `ingaciklama`) VALUES
(31, '1', '', 'tonguc.jpg', '1', 1, 'https://www.tongucakademi.com/', ''),
(32, '2', '', 'antrenman.jpg', '2', 1, 'http://www.antrenmanlarlamatematik.com/', ''),
(33, '3', '', 'palme.jpg', '3', 1, 'http://palmeyayinevi.com/', ''),
(34, '4', '', 'karekök.jpg', '4', 1, 'https://www.karekok.com.tr/', ''),
(35, '5', '', 'sınav.jpg', '5', 1, 'https://www.sinavyayin.com/', ''),
(36, '6', '', 'okyanus.jpg', '6', 1, 'https://okyanusyayincilik.com/', ''),
(37, '7', '', 'pegasus.jpg', '7', 1, 'http://www.pegasusyayinlari.com/', ''),
(38, '8', '', 'antrenman.jpg', '8', 1, 'http://www.antrenmanlarlamatematik.com/', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `numaralar`
--

DROP TABLE IF EXISTS `numaralar`;
CREATE TABLE IF NOT EXISTS `numaralar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `numaralar`
--

INSERT INTO `numaralar` (`id`, `adi`, `durum`) VALUES
(1, '36', 1),
(2, '37', 1),
(3, '38', 1),
(4, '39', 1),
(5, '40', 1),
(6, '41', 1),
(7, '42', 1),
(8, '43', 1),
(9, '44', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `poslar`
--

DROP TABLE IF EXISTS `poslar`;
CREATE TABLE IF NOT EXISTS `poslar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yontem` tinyint(4) NOT NULL,
  `secenek` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `poslar`
--

INSERT INTO `poslar` (`id`, `yontem`, `secenek`) VALUES
(1, 1, '{\"merchant_id\":\"101057\",\"merchant_key\":\"76XtPP4AOgxjaiZS\",\"merchant_salt\":\"0GCAbry9JesUG5TS\",\"success\":\"http://demobul.net/eticaretv3/sepet-sonuc.html?durum=basarili\",\"fail\":\"http://demobul.net/eticaretv3/sepet-sonuc.html?durum=basarisiz\"}'),
(2, 2, '{\"p_tc\":\"info@web-ofisi.com\",\"success\":\"http://demobul.net/eticaretv3/sepet-sonuc.html\",\"fail\":\"http://demobul.net/eticaretv3/sepet-sonuc.html\"}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

DROP TABLE IF EXISTS `sayfalar`;
CREATE TABLE IF NOT EXISTS `sayfalar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `adi`, `aciklama`, `resim`, `seo`, `durum`) VALUES
(29, 'Hakkımızda', '<p>Gelecek Türkiye için gelecek nesillerimize bizim de katkımızın olsun. Online Eğitim Platformu olarak sizlerin her zaman yanındayız. Biz Bize Yeteriz Türkiyem></p>', 'DSC00640.jpg', 'Hakkimizda', 1),
(30, 'Hizmetler', '<p>Gelecek Türkiye için gelecek nesillerimize bizim de katkımızın olsun. Online Eğitim Platformu olarak sizlerin her zaman yanındayız. Biz Bize Yeteriz Türkiyem</p>', 'DSC00101.jpg', 'Is-Hizmetleri', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `secenek`
--

DROP TABLE IF EXISTS `secenek`;
CREATE TABLE IF NOT EXISTS `secenek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` int(11) NOT NULL,
  `adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `secenek`
--

INSERT INTO `secenek` (`id`, `kategori`, `adi`, `seo`, `durum`) VALUES
(50, 47, 'Siyah', 'Siyah', 1),
(51, 47, 'Beyaz', 'Beyaz', 1),
(52, 47, 'Mavi', 'Mavi', 1),
(53, 47, 'Yeşil', 'Yesil', 1),
(54, 47, 'Sarı', 'Sari', 1),
(55, 48, '36', '36', 1),
(56, 48, '37', '37', 1),
(57, 48, '38', '38', 1),
(58, 48, '39', '39', 1),
(59, 48, '40', '40', 1),
(60, 48, '41', '41', 1),
(61, 48, '42', '42', 1),
(62, 48, '43', '43', 1),
(63, 48, '44', '44', 1),
(64, 48, '45', '45', 1),
(65, 49, 'S', 'S', 1),
(66, 49, 'M', 'M', 1),
(67, 49, 'L', 'L', 1),
(68, 49, 'XL', 'XL', 1),
(69, 47, 'Gold', 'Gold', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `secenek_kategori`
--

DROP TABLE IF EXISTS `secenek_kategori`;
CREATE TABLE IF NOT EXISTS `secenek_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `secenek_kategori`
--

INSERT INTO `secenek_kategori` (`id`, `kategori_adi`, `seo`, `durum`) VALUES
(47, 'Renk', 'Renk', 1),
(48, 'Ayakkabı Numarası', 'Ayakkabi-Numarasi', 1),
(49, 'Beden', 'Beden', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

DROP TABLE IF EXISTS `siparisler`;
CREATE TABLE IF NOT EXISTS `siparisler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urun` text COLLATE utf8_turkish_ci NOT NULL,
  `uyeid` int(11) NOT NULL,
  `odeme_sekli` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  `secenek` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adres` int(11) NOT NULL,
  `fiyat` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sno` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ek` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparisler`
--

INSERT INTO `siparisler` (`id`, `urun`, `uyeid`, `odeme_sekli`, `durum`, `secenek`, `adres`, `fiyat`, `sno`, `ip`, `tarih`, `ek`) VALUES
(41, '169|1//', 11, 'Kapıda Ödeme', 0, '{\"169\":{\"id\":\"54\"}}', 8, '126,00', 1, '88.251.133.90', '10 Mayıs 2016, 19:04', '20'),
(42, '173|1//', 10, 'Banka Havalesi', 0, '{\"173\":{\"id\":\"50\"}}', 9, '126,00', 2, '::1', '01 Ağustos 2016, 20:00', ''),
(43, '170|2//', 10, 'Kapıda Ödeme', 0, '{\"170\":{\"id\":\"50\"}}', 9, '222,52', 2, '::1', '01 Ağustos 2016, 21:46', 'skype'),
(44, '169|0//', 9, 'Kapıda Ödeme', 0, '{\"169\":{\"id\":null}}', 6, '8,00', 2, '::1', '02 Ağustos 2016, 15:43', 'skype'),
(45, '169|0//', 9, 'Kapıda Ödeme', 0, '{\"169\":{\"id\":null}}', 6, '8,00', 2, '::1', '02 Ağustos 2016, 15:44', 'skype'),
(46, '171|2//170|1//', 9, 'Kapıda Ödeme', 0, '{\"171\":{\"id\":\"54\"},\"170\":{\"id\":\"50\"}}', 6, '329,79', 2, '::1', '02 Ağustos 2016, 19:25', 'skype'),
(47, '', 9, 'Kapıda Ödeme', 0, '[]', 6, '280,70', 2, '::1', '02 Ağustos 2016, 19:27', 'skype'),
(48, '', 9, 'Kapıda Ödeme', 0, '[]', 6, '280,70', 2, '::1', '02 Ağustos 2016, 19:28', 'skype');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `site_ayar`
--

DROP TABLE IF EXISTS `site_ayar`;
CREATE TABLE IF NOT EXISTS `site_ayar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_title` text COLLATE utf8_turkish_ci NOT NULL,
  `site_meta` text COLLATE utf8_turkish_ci NOT NULL,
  `site_desc` text COLLATE utf8_turkish_ci NOT NULL,
  `firma_logo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `firma_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `renk` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `firma_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `firma_fax` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `firma_email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `firma_adres` text COLLATE utf8_turkish_ci NOT NULL,
  `google_maps` text COLLATE utf8_turkish_ci NOT NULL,
  `google_analytics` text COLLATE utf8_turkish_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `gplus` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `copyright` text COLLATE utf8_turkish_ci NOT NULL,
  `ksozlesme` text COLLATE utf8_turkish_ci NOT NULL,
  `tema` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `obilgi` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `satis` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `site_ayar`
--

INSERT INTO `site_ayar` (`id`, `site_title`, `site_meta`, `site_desc`, `firma_logo`, `firma_adi`, `renk`, `firma_tel`, `firma_fax`, `firma_email`, `firma_adres`, `google_maps`, `google_analytics`, `facebook`, `twitter`, `gplus`, `instagram`, `pinterest`, `copyright`, `ksozlesme`, `tema`, `obilgi`, `satis`) VALUES
(1, 'Online Eğitim', 'Ozzzy Web Eticaret V1', 'Ozzzy Web Eticaret V1', 'logo1.png', 'Online Eğitim', 'http://www.youtube.com', '0 354 00 00', '0 322 322 32 22', 'sanal_lab@bozok.com', 'Yozgat Merkez', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1489.6062997834256!2d34.79599325860831!3d39.7731063242166!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x408076b7d6b5c93d%3A0x42d6e2c36136e01f!2sYozgat%20Bozok%20%C3%9Cniversitesi%20M%C3%BChendislik%20Mimarl%C4%B1k%20Fak%C3%BCltesi!5e0!3m2!1str!2str!4v1590927659644!5m2!1str!2str\"', '', 'http://www.facebook.com', 'http://www.twitter.com', 'https://plus.google.com/', 'https://www.instagram.com/', 'skype', '', '<p><br></p><p>Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. \r\nKökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan\r\n 2000 yıllık bir geçmişi vardır. Virginia\'daki Hampden-Sydney \r\nCollege\'dan Latince profesörü Richard McClintock, bir Lorem Ipsum \r\npasajında geçen ve anlaşılması en güç sözcüklerden biri olan \r\n\'consectetur\' sözcüğünün klasik edebiyattaki örneklerini incelediğinde \r\nkesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 \r\ntarihinde kaleme alınan \"de Finibus Bonorum et Malorum\" (İyi ve Kötünün \r\nUç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden \r\ngelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans \r\ndöneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan \r\n\"Lorem ipsum dolor sit amet\" 1.10.32 sayılı bölümdeki bir satırdan \r\ngelmektedir.</p><p><br></p><p>1500\'lerden beri kullanılmakta olan standard Lorem \r\nIpsum metinleri ilgilenenler için yeniden üretilmiştir. Çiçero \r\ntarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H. Rackham \r\nçevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden \r\nyeniden üretilmiştir.</p><p><br></p>', 'lacivert', 'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia\'daki Hampden-Sydney College\'dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan \'consectetur\' sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan \"de Finibus Bonorum et Malorum\" (İyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan \"Lorem ipsum dolor sit amet\" 1.10.32 sayılı bölümdeki bir satırdan gelmektedir.\r\n\r\n1500\'lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir. Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H. Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', 'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia\'daki Hampden-Sydney College\'dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan \'consectetur\' sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan \"de Finibus Bonorum et Malorum\" (İyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan \"Lorem ipsum dolor sit amet\" 1.10.32 sayılı bölümdeki bir satırdan gelmektedir.\r\n\r\n1500\'lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir. Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H. Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`id`, `adi`, `resim`, `durum`, `tarih`) VALUES
(60, '3', 'slider32.jpg', 1, '31-07-2016'),
(58, '1', 'slider4.jpg', 1, '31-07-2016'),
(59, '2', 'slider3.jpg', 1, '31-07-2016');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sss`
--

DROP TABLE IF EXISTS `sss`;
CREATE TABLE IF NOT EXISTS `sss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sss`
--

INSERT INTO `sss` (`id`, `adi`, `aciklama`, `seo`, `durum`) VALUES
(38, 'Güvenliğimiz Ne Durumda?', 'Bozok Üniversitesi Tarafından Korunmaktadır. :)', 'Guvenlik-sistemleri-icin-paket-fiyatlari-disinda-herhangi-bir-ucret-alinacak-midir-', 1),
(39, 'Destek veriyor musunuz ?', 'Üye olmanız şartı ile sizlere özel destekler verilmektedir. İster telefonla ile mail ile bizlerle iletişime geçebilir ve sizde bizlere destek verebilirsiniz.', 'Destek-veriyor-musunuz-', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uyeid` int(11) NOT NULL,
  `isim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `departman` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `oncelik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  `guncelleme` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ticket`
--

INSERT INTO `ticket` (`id`, `uyeid`, `isim`, `email`, `baslik`, `departman`, `oncelik`, `mesaj`, `durum`, `guncelleme`, `tarih`) VALUES
(3, 9, 'Sevda CAN', 'de@de.com', 'Deneme Başlık', '1', '1', 'MErhaba çok sorun var.', 0, '02 Ağustos 2016, 13:01', '02 Ağustos 2016, 13:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ticket_cevap`
--

DROP TABLE IF EXISTS `ticket_cevap`;
CREATE TABLE IF NOT EXISTS `ticket_cevap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uye_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `rutbe` int(11) NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci NOT NULL,
  `guncelleme` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ticket_cevap`
--

INSERT INTO `ticket_cevap` (`id`, `uye_id`, `ticket_id`, `rutbe`, `mesaj`, `guncelleme`, `durum`) VALUES
(1, 10, 2, 0, 'aaaaaaaaaaaaaa', '02 Ağustos 2016, 12:52', 1),
(2, 10, 1, 0, 'wasdfg', '02 Ağustos 2016, 12:52', 1),
(3, 10, 1, 0, 'deeee', '02 Ağustos 2016, 12:54', 1),
(4, 10, 1, 0, 'ccccc', '02 Ağustos 2016, 12:54', 1),
(5, 9, 3, 0, 'Gerçekten sorunlu alışveriş oldu.', '02 Ağustos 2016, 13:00', 1),
(6, 9, 3, 1, 'En kısa sürede ilgileneceğiz efendim.', '02 Ağustos 2016, 13:01', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

DROP TABLE IF EXISTS `urunler`;
CREATE TABLE IF NOT EXISTS `urunler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` int(11) NOT NULL,
  `altkategori` int(11) NOT NULL,
  `adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  `indirim` int(11) NOT NULL,
  `secenek` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `urun_kodu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `stok` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` decimal(9,2) NOT NULL,
  `ifiyat` decimal(9,2) NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `ozellik` text COLLATE utf8_turkish_ci NOT NULL,
  `iade` text COLLATE utf8_turkish_ci NOT NULL,
  `coksatan` int(11) NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `cok` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `sicak` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `yeni` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `kategori`, `altkategori`, `adi`, `seo`, `resim`, `durum`, `indirim`, `secenek`, `urun_kodu`, `stok`, `fiyat`, `ifiyat`, `aciklama`, `ozellik`, `iade`, `coksatan`, `tarih`, `cok`, `sicak`, `yeni`) VALUES
(169, 58, 40, 'Coğrafya', 'Deneme-Urun', 'cografya.jpg', 1, 1, 'Siyah', '123456', '100', '200.00', '90.90', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', 'Sökülebilir Parçalar|Taşınır Çanta|4 Ayaklı', '', 0, '02-08-2016', 'Evet', 'Evet', 'Evet'),
(170, 58, 40, 'Biyoloji', 'urun-2', 'biyoloji.jpg', 1, 1, 'Siyah', '3423', '100', '100.00', '90.90', 'Biyoloji derslerimiz her hafta yenilenmektedir.', '', '', 0, '31-07-2016', '', 'Evet', 'Evet'),
(171, 58, 40, 'Kimya', 'urun-3', 'kimya.jpg', 1, 1, 'Sarı', '43443', '100', '100.00', '90.90', 'Sıfırdan kimya\' ya başlıyoruz. Kaçırmayın', '', '', 0, '31-07-2016', '', 'Evet', 'Evet'),
(172, 58, 40, 'Fizik', 'urun-4', 'fizik.jpg', 1, 1, 'Sarı', '333', '100', '100.00', '90.90', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', '', 'Evet', ''),
(173, 58, 40, 'Matematik', 'urun-5', 'matt.jpg', 1, 0, 'Siyah', '44', '100', '100.00', '50.00', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', NULL, NULL, NULL),
(174, 58, 41, 'Coğrafya', 'Deneme-1', 'cografya.jpg', 1, 0, 'Siyah', '222', '100', '100.00', '0.00', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', NULL, NULL, NULL),
(175, 58, 41, 'Biyoloji', 'Deneme-2', 'biyoloji.jpg', 1, 0, 'Siyah', '122', '100', '100.00', '0.00', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', NULL, NULL, NULL),
(176, 58, 41, 'Kimya', 'Deneme-3', 'kimya.jpg', 1, 0, 'Siyah', '122', '100', '100.00', '0.00', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', NULL, NULL, NULL),
(177, 58, 41, 'Fizik', 'Deneme-4', 'fizik.jpg', 1, 0, 'Gold', '333', '100', '100.00', '0.00', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', NULL, NULL, NULL),
(178, 58, 41, 'Matematik', 'Deneme-5-', 'matt.jpg', 1, 0, 'Sarı', '222', '100', '100.00', '0.00', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', NULL, NULL, NULL),
(179, 58, 42, 'Coğrafya', 'Esya-1', 'cografya.jpg', 1, 0, 'Sarı', '333', '100', '100.00', '0.00', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', NULL, NULL, NULL),
(180, 58, 42, 'Biyoloji', 'Esya-2', 'biyoloji.jpg', 1, 0, 'Sarı', '333', '100', '100.00', '0.00', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', NULL, NULL, NULL),
(181, 58, 42, 'Kimya', 'esya-3', 'kimya.jpg', 1, 0, 'Siyah', '333', '100', '100.00', '0.00', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', NULL, NULL, NULL),
(182, 58, 42, 'Fizik', 'esya-4', 'fizik.jpg', 1, 0, 'Beyaz', '44', '100', '0.15', '0.00', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', NULL, NULL, NULL),
(183, 58, 42, 'Matematik', 'esya-5', 'matt.jpg', 1, 0, 'Sarı', '333', '100', '100.00', '0.00', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', NULL, NULL, NULL),
(184, 58, 43, 'Matematik', 'Saat-1', 'matt.jpg', 1, 0, 'Beyaz', '122', '100', '100.00', '90.90', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', 'Evet', 'Evet', 'Evet'),
(185, 58, 43, 'Coğrafya', 'Saat-2', 'cografya.jpg', 1, 1, 'Sarı', '333', '100', '100.00', '90.90', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', 'Evet', 'Evet', 'Evet'),
(186, 58, 43, 'Geometri', 'Saat-3', 'matt.jpg', 1, 1, 'Beyaz', '44', '100', '100.00', '90.90', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', 'Evet', 'Evet', 'Evet'),
(187, 58, 43, 'tarih', 'Saat-4', 'cografya.jpg', 1, 0, 'Sarı', '122', '100', '99.99', '0.00', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', '', '', ''),
(188, 58, 43, 'Türk Edebiyatı', 'Saat-5', 'fizik.jpg', 1, 0, 'Siyah', '333', '100', '99.99', '0.00', 'Lorem ipsum dolor sit amete, consectetur news adipisicing sed do new fashion eiusmod tempor incididunt ut labore etel dolore magna aliqua. Ut enim news minimveniam, quis nostrud exercitation ullamco laboris nisi commodo consequat consectetur adipisicing. Fashion double layering.', '', '', 0, '31-07-2016', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_kategori`
--

DROP TABLE IF EXISTS `urun_kategori`;
CREATE TABLE IF NOT EXISTS `urun_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun_kategori`
--

INSERT INTO `urun_kategori` (`id`, `kategori_adi`, `resim`, `seo`, `icon`, `durum`) VALUES
(58, 'LİSE', 'banner_catalog.jpg', 'LİSE', '1', 1),
(59, 'TYT', 'banner_catalog.jpg', 'Elektronik-Esya', '2', 1),
(60, 'AYT', 'banner_catalog.jpg', 'Hirdavat-Aksesuar', '3', 1),
(61, 'Soru Çözümleri', 'banner_catalog.jpg', 'Koltuk-Takimlari', '4', 1),
(62, 'TYT Deneme Sınavları', 'banner_catalog.jpg', 'Akilli-Programlar', '5', 1),
(63, 'AYT Deneme Sınavları', 'banner_catalog.jpg', 'Kategori-5', '6', 1),
(64, 'Genel Lise Deneme Sınavları', 'banner_catalog.jpg', 'Deneme-Kategori', '7', 1),
(65, 'Kitaplar', 'banner_catalog.jpg', 'Kategori-8', '8', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_resim`
--

DROP TABLE IF EXISTS `urun_resim`;
CREATE TABLE IF NOT EXISTS `urun_resim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urun_id` int(11) NOT NULL,
  `resim_yolu` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun_resim`
--

INSERT INTO `urun_resim` (`id`, `urun_id`, `resim_yolu`) VALUES
(8, 22, '56814427208aa.jpg'),
(9, 22, '56814427d9871.jpg'),
(10, 22, '56814428bb058.jpg'),
(11, 24, '5681449a21483.jpg'),
(12, 29, '5681583f907f6.jpg'),
(13, 31, '56815a62dc568.jpg'),
(19, 32, '56827b5da5696.jpg'),
(20, 32, '56827b5e7b1f5.jpg'),
(23, 33, '56837a0e73aa3.jpg'),
(24, 33, '56837a1327f5f.jpg'),
(25, 35, '568394b464703.jpg'),
(26, 37, '56878d1eca99d.jpg'),
(27, 40, '56aa201f6e7fb.jpg'),
(30, 41, '56c483ac1bca3.jpg'),
(31, 41, '56c483acd892a.jpg'),
(32, 44, '56f664a7a5888.jpeg'),
(33, 45, '56f665d98479e.png'),
(34, 46, '56f6661dc27e3.png'),
(35, 47, '56f666524d38a.png'),
(36, 48, '56f9664644443.jpg'),
(37, 49, '56f9675d76d35.jpg'),
(38, 50, '56f967e739672.jpg'),
(39, 51, '56f96838c7a02.jpg'),
(40, 52, '56f9687faecc7.jpg'),
(41, 53, '56f968d21d009.jpg'),
(42, 54, '56f9690872999.jpg'),
(43, 55, '56f9693db3df8.jpg'),
(44, 56, '56f96970c2a32.jpg'),
(45, 57, '56f969b1289c3.jpg'),
(46, 58, '56f96a2f63e19.jpg'),
(47, 59, '56f96a5f63df2.jpg'),
(48, 60, '56f96a9618126.jpg'),
(49, 61, '56f96ac387c15.jpg'),
(50, 62, '56f96aed40beb.jpg'),
(51, 64, '56f96b436631f.jpg'),
(52, 66, '56f96ba327fb9.jpg'),
(53, 67, '56f96bcda3266.jpg'),
(54, 68, '56f96bf659053.jpg'),
(55, 69, '56f96c2291376.jpg'),
(56, 70, '56f96f46d0c66.jpg'),
(57, 71, '56f96fe0dfbab.jpg'),
(58, 72, '56f9702c90f40.jpg'),
(59, 73, '56f97069e8e7e.jpg'),
(60, 74, '56f970c184bb6.jpg'),
(61, 75, '56f97100aad34.jpg'),
(62, 76, '56f9715a1c652.jpg'),
(63, 77, '56f971fcc4813.jpg'),
(64, 78, '56f9729ac95d3.jpg'),
(65, 79, '56f972f79f2fd.jpg'),
(66, 80, '56f9737a7ad36.jpg'),
(67, 80, '56f973c8c2234.jpg'),
(68, 81, '56f9745187cb9.jpg'),
(69, 82, '56f9761aabf77.jpg'),
(70, 83, '56f97659b6126.jpg'),
(71, 84, '56f976a2e96c9.jpg'),
(72, 85, '56f976e992f95.jpg'),
(73, 86, '56f977438ba48.jpg'),
(74, 87, '56f9779562110.jpg'),
(75, 88, '56f977e76e6de.jpg'),
(76, 89, '56f9783db5d53.jpg'),
(77, 90, '56f97888752f5.jpg'),
(78, 91, '56f978c7bc8e3.jpg'),
(79, 92, '56f97914b9dc8.jpg'),
(80, 93, '56f9795834478.jpg'),
(81, 94, '56f9799eb7c58.jpg'),
(82, 95, '56f97a1bd57e4.jpg'),
(83, 96, '56f97b7dbebdf.jpg'),
(84, 97, '56f97c41d59a3.jpg'),
(85, 98, '56f97d004f061.jpg'),
(86, 99, '56f97d6ea6cb7.jpg'),
(87, 100, '56f97db05408f.jpg'),
(88, 101, '56f97defa1f51.jpg'),
(89, 102, '56f97e46058d2.jpg'),
(90, 103, '56f97e80cb387.jpg'),
(91, 104, '56f97eead45df.jpg'),
(92, 105, '56f97f34a16f0.jpg'),
(93, 106, '56f981d92561f.jpg'),
(94, 107, '56f982832ed67.jpg'),
(95, 108, '56f982d12e41c.jpg'),
(96, 109, '56f98306bcafc.jpg'),
(97, 110, '56f98343427c9.jpg'),
(98, 112, '56f983b515dbd.jpg'),
(99, 113, '56f983e1cafb2.jpg'),
(100, 114, '56f984129e5c6.jpg'),
(101, 115, '56f98441cb16e.jpg'),
(102, 116, '56f98465029e8.jpg'),
(103, 117, '56f9848ac39df.jpg'),
(104, 118, '56f984b435a28.jpg'),
(105, 119, '56f984d46b467.jpg'),
(108, 169, '57a095483f5e1.jpg'),
(109, 169, '57a095da4ad6c.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_yorum`
--

DROP TABLE IF EXISTS `urun_yorum`;
CREATE TABLE IF NOT EXISTS `urun_yorum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uye_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `yorum` text COLLATE utf8_turkish_ci NOT NULL,
  `puan` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun_yorum`
--

INSERT INTO `urun_yorum` (`id`, `uye_id`, `urun_id`, `baslik`, `yorum`, `puan`, `tarih`, `durum`, `ip`) VALUES
(2, 9, 169, 'Super', 'Çok memnun kaldım tavsiye ediyorum', '5', '29 Mayıs 2020, 18,02', 1, '::1'),
(3, 9, 170, 'Harika', 'Bu fiyata böyle kalite bir ders inanılmaz', '3', '29 Mayıs 2020, 18:05', 1, '::1'),
(4, 9, 170, 'Harika', 'İnanılmaz memnun kaldım', '4', '29 Mayıs 2020, 18:10', 1, '::1'),
(5, 9, 171, 'Bozok Üniversitesi', 'Üniversitem de sizi reklam edeceğim harikasınız ', '3', '27 Ocak 2016, 09:01', 1, '::1'),
(6, 9, 169, '5 Yıldız', 'Çok başarılı ürün memnun kaldım teşekkürler', '4', '02 Ağustos 2016, 18:50', 1, '::1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

DROP TABLE IF EXISTS `uyeler`;
CREATE TABLE IF NOT EXISTS `uyeler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `gun` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ay` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `yil` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `cinsiyet` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `ad`, `soyad`, `email`, `telefon`, `sifre`, `gun`, `ay`, `yil`, `cinsiyet`, `ip`, `durum`, `tarih`) VALUES
(9, 'Sevda', 'CAN', 'de@de.com', '05555555555', '123456', '5', 'Ocak', '1980', 'Erkek', '::1', 1, '05 Ocak 2016, 10:51');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetici`
--

DROP TABLE IF EXISTS `yonetici`;
CREATE TABLE IF NOT EXISTS `yonetici` (
  `yonetici_id` int(11) NOT NULL AUTO_INCREMENT,
  `yonetici_ad_soyad` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yonetici_kullanici` char(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yonetici_sifre` char(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yonetici_email` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yonetici_son_giris` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`yonetici_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yonetici`
--

INSERT INTO `yonetici` (`yonetici_id`, `yonetici_ad_soyad`, `yonetici_kullanici`, `yonetici_sifre`, `yonetici_email`, `yonetici_son_giris`) VALUES
(1, 'Yönetim Paneli', 'admin', 'admin', 'de@gmail.com', '01 Mayıs 2016, 19:48');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

DROP TABLE IF EXISTS `yorumlar`;
CREATE TABLE IF NOT EXISTS `yorumlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `isim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `blog_id`, `isim`, `email`, `mesaj`, `durum`, `tarih`, `ip`) VALUES
(6, 19, 'Sezen AKSU', 'dede@dede.com', 'Blog kurmasını Bilmeyen ve Para sıkıntısı &ccedil;eken arkadaşlara yararlı bir bilgilendirme olmuş.Eline Sağlık', 0, '30-07-2016', '::1');

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `ilceler`
--
ALTER TABLE `ilceler`
  ADD CONSTRAINT `FK_DF2497D4BAF0B6B8` FOREIGN KEY (`il_id`) REFERENCES `iller` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
