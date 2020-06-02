<?php echo !defined("GUVENLIK") ? die("Erisim Engellendi!.") : null;?>
<?php
if(isset($_POST['site_title']))
{
	$site_title 		= p('site_title');
	$pinterest 			= p('pinterest');
	$copyright 			= p('copyright');
	
	include_once('class.upload.php');
	$upload = new upload($_FILES['firma_logo']);
	if ($upload->uploaded){
	$upload->file_auto_rename = true;
	$upload->image_resize = true;
	$upload->image_y = 65;
	$upload->image_ratio_x = true;
	$upload->process("../assets/images");
	if ($upload->processed){
	$firmalogo=''.$upload->file_dst_name.'';
	}
	}
	if($firmalogo!="")
	{
	$ayar_duzenle_sorgu=mysql_query("UPDATE site_ayar SET 
									site_title			=	'$site_title',
									pinterest			=	'$pinterest',
									copyright			=	'$copyright'
									WHERE id			=	'1'");
									$gitti=$firmalogo=''.$upload->file_dst_name.'';
	}else{
			$ayar_duzenle_sorgu=mysql_query("UPDATE site_ayar SET
										site_title			=	'$site_title',
										pinterest			=	'$pinterest',
										copyright			=	'$copyright'
										WHERE id			=	'1'");
		}
								
				   $bilgi = '  <div class="alert alert-success alert-dismissable">
                    	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    		Bilgiler Başarı ile Güncellenmiştir.
                  </div>
		 ' ;
	
}

	$ayar_dizi	=	Sonuc(Sorgu("SELECT * FROM site_ayar WHERE id = '1'"));

?>
<div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <small><i class="fa fa-cogs"></i> Site Genel Ayarları</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="anasayfa.html"><i class="fa fa-home"></i> Anasayfa</a></li>
            <li class="active">Site Genel Ayarları</li>
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
                      <label for="site_title"></label>
                      <input type="hidden" class="form-control" name="site_title" value="<?php echo $ayar_dizi->site_title;?>" id="site_title" placeholder="Site Title">
                    </div>
                   
					
					<div class="form-group">
                      <label for="pinterest">Kapıda Ödeme Ücreti</label>
                      <input type="text" class="form-control" name="pinterest" value="<?php echo $ayar_dizi->pinterest;?>" id="pinterest" placeholder="Sadece Rakam Giriniz...!">
                    </div>
					
			
                    
                    <div class="form-group">
                      <label for="copyright"></label>
                      <input type="hidden" class="form-control" name="copyright" value="<?php echo $ayar_dizi->copyright;?>" id="copyright" placeholder="Copyright Metni">
                    </div>
                                
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
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
	<link href="dist/css/summernote.css" rel="stylesheet">
	<script src="dist/js/summernote.js"></script>
    <script>
		var isEmpty = $('.summernote').summernote('isEmpty');
		$('#summernote').summernote({
		  height: 300,                 // set editor height
		  minHeight: null,             // set minimum height of editor
		  maxHeight: null,             // set maximum height of editor
		  focus: true                 // set focus to editable area after initializing summernote

		});
		
	</script>
    
    