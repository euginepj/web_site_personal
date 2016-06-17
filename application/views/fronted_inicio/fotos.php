
<div>

    <div class="modal-padding clearfix">

        

    </div>

    <div class="fslider" data-pagi="false" data-animation="fade">
        <div class="flexslider">
            <div class="slider-wrap">
                <?php if($imagenes){ ?>
                <?php foreach($imagenes as $imagen){ ?>
                        <?php /* ?>                    
                    <div class="slide"><a href="#"><img src="<?=$this->config->base_url();?>/fronted_inicio/procedimientos/<?=$imagen->img_antes?>" alt="" style="width: 50%; float: left"><img src="<?=$this->config->base_url();?>/fronted_inicio/procedimientos/<?=$imagen->img_despues?>" alt="" style="width: 50%;"></a></div>
                        <div class="slide" style="width:70%;margin:auto;text-align:center;position:relative;">
                            <div class="antes" style="position:absolute;bottom:0;left:0;width:50%;padding:7px;text-align:center;font-size:1.6em;color:#fff !important;background:rgba(0,0,0,0.5)">Antes</div>
                            <div class="despues" style="position:absolute;bottom:0;right:0;width:50%;padding:7px;text-align:center;font-size:1.6em;color:#fff !important;background:rgba(0,0,0,0.5)"><?php if($ln == "es"){ echo "Despues"; }else{ echo "Depoi"; } ?></div>    

                            <img src="<?=$this->config->base_url();?>/fronted_inicio/procedimientos/<?=$imagen->img_antes?>" style="width: 50%; float: left">
                            <img src="<?=$this->config->base_url();?>/fronted_inicio/procedimientos/<?=$imagen->img_despues?>" style="width: 50%;">
                            <div style="clear:both;"></div>
                        </div>
                        <?php */ ?>
                        
                    <div class="slide" style="width:70%;margin:auto;text-align:center;position:relative;">
    <div class="antes" style="position:absolute;bottom:0;left:0;z-index:10000;width:50%;padding:7px;text-align:center;font-size:1.6em;color:#fff !important;background:rgba(0,0,0,0.5)">Antes</div>
    <div class="despues" style="position:absolute;bottom:0;right:0;z-index:10000;width:50%;padding:7px;text-align:center;font-size:1.6em;color:#fff !important;background:rgba(0,0,0,0.5)"><?php if($ln == "es"){ echo "Despues"; }else{ echo "Depoi"; } ?></div>    

                        <a href="#">
                            <img src="<?=$this->config->base_url();?>/fronted_inicio/procedimientos/<?=$imagen->img_antes?>" alt="" style="width: 50%; float: left">
                            <img src="<?=$this->config->base_url();?>/fronted_inicio/procedimientos/<?=$imagen->img_despues?>" alt="" style="width: 50%;">
                        </a></div>
                <?php } ?>
                <?php }else{ ?>
                        <?php if($ln == "es"){ ?>
                            <div class="heading-block center dark"><h2>EN ESTE MOMENTO LAS IMAGENES NO ESTAN DISPONIBLES.TE INVITO A SOLICITAR UNA CONSULTA PARA VER MÁS DE MIS TRABAJOS.</h2></div>
                        <?php }else{ ?>
                            <div class="heading-block center dark"><h2>NESTE MOMENTO AS IMAGENS NÃO ESTÃO DISPONÍVEIS.EU CONVIDO VOCÊ PARA SOLICITAR UMA CONSULTA PARA VER MAIS DE MEU TRABALHO.</h2></div>
                        <?php } ?>
                <?php } ?>
            </div>
        </div>
    </div>

</div>