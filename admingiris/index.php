<?php
include("system/ayar.php");
include("system/fonksiyon.php");
if(isset($_POST['giris']))
{
	 $sifre = p('sifre');
	 $kullanici = p('kullanici');
	 
	 $giriskontrol = mysql_query("SELECT * FROM yonetici WHERE yonetici_kullanici ='$kullanici' AND yonetici_sifre ='$sifre'"); 			 	 $durum = mysql_fetch_array($giriskontrol);
	 if($durum)
	 {
		 $son_giris = date("d.m.Y");
		 $yonetici_id_sabit = $durum["yonetici_id"];
		 
		 $yonetici_guncelle	=	mysql_query("UPDATE yonetici SET 
		 									yonetici_son_giris	=	'$son_giris'
											WHERE yonetici_id	=	'$yonetici_id'");
		 
		 $_SESSION['yonetici_ad_soyad']    = $durum['yonetici_ad_soyad'];
		 $_SESSION['yonetici_kullanici']   = $durum['yonetici_kullanici'];
		 $_SESSION['yonetici_sifre']       = $durum['yonetici_sifre'];
		 $_SESSION['yonetici_id']          = $yonetici_id_sabit ;	
		 
		$bilgi = '  
                    	
                    	 BAŞARILI!
                    		Giriş yapılmıştır. yönlendiriliyorsunuz.
                 
		 ' ;
		
		 echo '<meta http-equiv="refresh" content="1; url=anasayfa.html">';
		 
	 }
	 else
	 {
		 $bilgi = '
                    	
                    	 HATA!
                    		Kullanıcı Adı veya Şifreniz Yanlış.
                  
		' ;					
	 }
}

?>

<!DOCTYPE html>
<html lang="en" class="no-js">

    <head>

        <meta charset="utf-8">
        <title>Online Eğitim Yönetici Paneli</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="page-container">
            <h1>Yönetici Paneli </h1>
            <form action="" name="form1" method="post" id="form1">
                <input type="text" name="kullanici" class="username" placeholder="Kullanıcı Adı">
                <input type="password" name="sifre" class="password" placeholder="Şifreniz">
                <button type="submit" name="giris">Giriş Yap</button>
                <div class="error"><span>+</span></div>
            </form>
           <div class="connect">
                <p><?php echo $bilgi;?></p>
                <p>
                    <a class="facebook" target="_blank" href="http://wwww.ozzzyweb.com"></a>
                    <a class="twitter" target="_blank"  href="http://wwww.ozzzyweb.com"></a>
                </p>
            </div>
        </div>

        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>

    </body>

</html>


</html>