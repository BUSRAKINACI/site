<?php echo !defined("GUVENLIK") ? die("Erisim Engellendi!.") : null;?>
<?php
if(p('haber_adi') && g('islem')=="")
{
	$haber_adi 	= $_POST['haber_adi'];
	$ingadi 	= $_POST['ingadi'];
	$ingaciklama 	= $_POST['ingaciklama'];
	$durum 		= p('durum');
	$aciklama	= $_POST['aciklama'];
	$seo		= seo($haber_adi);
	$t			= date("Y-m-d H:i:s");
	$k_tarih	= tarih($t);
	
	include_once('class.upload.php');
	$upload = new upload($_FILES['resim']);
	if ($upload->uploaded){
	$upload->file_auto_rename = true;
	$upload->process("../uploads/haberler");
	
	$upload->file_auto_rename = true;
	$upload->image_resize = true;
	$upload->image_x = 263;
	$upload->image_y = 147;
	$upload->process("../uploads/haberler/orta");
	
	$upload->file_auto_rename = true;
	$upload->image_resize = true;
	$upload->image_x = 180;
	$upload->image_y = 101;
	$upload->process("../uploads/haberler/kucuk");
	
	if ($upload->processed){
	$haberResim=''.$upload->file_dst_name.'';
	}
	}
	$gitti=$haberResim=''.$upload->file_dst_name.'';
	
	$haber_sorgu	=	Sorgu("INSERT INTO haberler SET
										adi		=	'$haber_adi', 
										ingadi		=	'$ingadi', 
										ingaciklama	=	'$ingaciklama', 
										resim	=	'$haberResim',
										seo		=	'$seo', 
										aciklama=	'$aciklama',
										durum	=	'$durum',
										tarih	=	'$k_tarih'");	
																								   
		$bilgi = '  <div class="alert alert-success alert-dismissable">
                    	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    		Başarı ile Eklenmiştir
                  </div>
		 ' ;
		
}


if(p('haber_adi') && g('islem')=="duzenle")
{
	$haber_adi 	= $_POST['haber_adi'];
	$ingadi 	= $_POST['ingadi'];
	$ingaciklama 	= $_POST['ingaciklama'];
	$durum 		= p('durum');
	$d_id 		= g('id');
	$aciklama	= $_POST['aciklama'];
	$seo		= seo($haber_adi);
	$t			= date("Y-m-d H:i:s");
	$k_tarih	= tarih($t);
	
	include_once('class.upload.php');
	$upload = new upload($_FILES['resim']);
	if ($upload->uploaded){
	$upload->file_auto_rename = true;
	$upload->process("../uploads/haberler");
	
	$upload->file_auto_rename = true;
	$upload->image_resize = true;
	$upload->image_x = 263;
	$upload->image_y = 147;
	$upload->process("../uploads/haberler/orta");
	
	$upload->file_auto_rename = true;
	$upload->image_resize = true;
	$upload->image_x = 180;
	$upload->image_y = 101;
	$upload->process("../uploads/haberler/kucuk");
	
	if ($upload->processed){
	$haberResim=''.$upload->file_dst_name.'';
	}
	}
	if($haberResim!="")
	{
		$resim_bul	=Sonuc(Sorgu("SELECT * FROM haberler WHERE id='$d_id'"));
		$resim_sil	=unlink("../uploads/haberler/".$resim_bul->resim);
		$resim_sil2	=unlink("../uploads/haberler/kucuk/".$resim_bul->resim);
	
		$haber_duzenle_sorgu	=	Sorgu("UPDATE haberler SET 
											resim	=	'$haberResim',
											ingadi		=	'$ingadi', 
										ingaciklama	=	'$ingaciklama', 
											durum	=	'$durum', 
											aciklama=	'$aciklama', 
											seo		=	'$seo', 
											adi		=	'$haber_adi', 
											tarih	=	'$k_tarih' 
											WHERE id=	'$d_id'");
		$gitti=$haberResim=''.$upload->file_dst_name.'';
	}else{	
		$haber_duzenle_sorgu = Sorgu("UPDATE haberler SET 
											durum	=	'$durum', 
											ingadi		=	'$ingadi', 
										ingaciklama	=	'$ingaciklama', 
											aciklama=	'$aciklama', 
											seo		=	'$seo', 
											adi		=	'$haber_adi', 
											tarih	=	'$k_tarih' 
											WHERE id=	'$d_id'");
	}
				  $bilgi = '  <div class="alert alert-success alert-dismissable">
                    	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    		Başarı ile Güncellenmiştir !
                  </div>
		 ' ;
}


if($_GET['islem']=="duzenle")
{
	$sayfaid = $_GET['id'];	
	$durum = "duzenle" ;
	
	$HaberSonuc = Sonuc(Sorgu("SELECT * FROM haberler WHERE id='$sayfaid'"));
	
}

?>
<div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <small><i class="fa fa-bullhorn"></i> Reklam  Düzenle</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
            <li class="active">Reklam  Düzenle</li>
          </ol>
        </section>
        <!-- Main content -->
        <section class="content">
          <div class="row">
            <!-- left column -->
            <div class="col-md-12">
            <?php echo $bilgi;?>
              <!-- general form elements -->
              <div class="box box-primary">
               <div class="row">  
              <div class="col-md-12">
                <!-- form start -->
                <form method="post" action="" enctype="multipart/form-data">
                  <div class="box-body">
                    <div class="form-group">
                      <label for="haber_adi">Reklam Adı</label>
                      <input type="text" class="form-control" name="haber_adi" value="<?php echo $HaberSonuc->adi;?>" id="haber_adi" placeholder="Reklam Adı">
                    </div>
					
					  <div class="form-group">
                      <label for="aciklama">Reklam Url</label>
                      <input type="text" class="form-control" name="aciklama" value="<?php echo $HaberSonuc->aciklama;?>" id="aciklama" placeholder="Reklam Url">
                    </div>
                    <div class="form-group ">
                                    <label>Reklam Resmi</label>
                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                   <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                    <?php if($_GET['islem']=='duzenle'){?>
                                    <img src="../uploads/haberler/<?php echo $HaberSonuc->resim;?>" style="width: 200px; height: 200px;" alt="" />
                                    <?php } else { ?>
                                    <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />
                                    <?php }?>
                                   </div>
                                 	<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                            <div>
                                           <span class="btn btn-default btn-file">
                                           <span class="fileupload-new"><i class="fa fa-paper-clip"></i> Resim Seç</span>
                                           <span class="fileupload-exists"><i class="fa fa-undo"></i> Değiştir</span>
                                           <input name="resim" type="file" class="default" />
                                           </span>
                                                <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash"></i> Sil</a>
                                            </div>
                                        </div>
                                </div>
                    <?php if($_GET['islem']=="duzenle"){?>
                    <div class="form-group">
                        <label>Durumu</label>
                              <div class="square-green">
                                <div class="radio">
                                    <input tabindex="3" type="radio" value="1" <?php if($HaberSonuc->durum == '1') {?> checked <?php } ?> name="durum">
                                    <div style="margin-left:30px;position:absolute;margin-top:-20px;">Açık</div>
                                </div>
                            </div>
                             <div class="square-red">
                                <div class="radio">
                                    <input tabindex="3" type="radio" value="0" <?php if($HaberSonuc->durum == '0') {?> checked <?php } ?> name="durum"  >
                                    <div style="margin-left:30px;position:absolute;margin-top:-20px;">Kapalı</div>
                                </div>
                            </div>
                    </div>
                  <?php }else{?>
                  	<div class="form-group">
                        <label>Durumu</label>
                              <div class="square-green">
                                <div class="radio">
                                    <input tabindex="3" type="radio" value="1"  checked  name="durum">
                                    <div style="margin-left:30px;position:absolute;margin-top:-20px;">Açık</div>
                                </div>
                            </div>
                             <div class="square-red">
                                <div class="radio">
                                    <input tabindex="3" type="radio" value="0"  name="durum"  >
                                    <div style="margin-left:30px;position:absolute;margin-top:-20px;">Kapalı</div>
                                </div>
                            </div>
                    </div>
                  <?php } ?>
                 
				
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                  <?php if($_GET['islem']=="duzenle"){?>
						  <button type="submit" onclick="submit();" class="btn btn-primary">Güncelle</button>	
                    <?php }else{?>
						  <button type="submit" onclick="submit();" class="btn btn-primary">Kaydet</button>						
                   <?php } ?>
                  </div>
                </form>
              </div><!-- /.box -->
              </div>
</div>
            </div><!--/.col (left) -->
            <!-- right column -->
          </div>   <!-- /.row -->
        </section><!-- /.content -->
      </div>
      
      <!-- jQuery 2.1.3 -->
    <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js" type="text/javascript"></script>
    <!-- CK Editor -->
    <script src="//cdn.ckeditor.com/4.4.7/full/ckeditor.js"></script>
    
    