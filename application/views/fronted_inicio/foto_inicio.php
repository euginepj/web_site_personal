<style>
.mfp-bg {
    position: fixed !important;
    margin:auto !important;
    top: 0 !important;
    left: 0 !important;
    right: 0 !important;
    bottom: 0 !important;
    width: 90% !important;
    height: 100% !important;
    z-index: 1042 !important;
    overflow: hidden !important;
    background: rgba(0,0,0,0.85) !important;
    opacity: 1 !important;
    padding:0em !important;
    filter: alpha(opacity=100) !important;
}  

button.mfp-close, button.mfp-arrow{
    position:absolute !important;
    right:3em !important;
} 

.flexslider .slider-wrap{
    width: 80% !important;
    height:auto !important;
    margin:auto !important;
    
    /*position: absolute !important;
    top: 0 !important;
    left: 0 !important;
    bottom: 0 !important;
    right: 0 !important;*/
    padding:0em !important; 
}

/*Moviles*/
@media only screen and (max-width: 749px) {
    
    .flexslider .slider-wrap img{
        clear:both !important;
        width: 100% !important;
    }

    .slider-wrap{
        padding: none !important;
    }

        #antes{
            top:0 !important;
            bottom:inherit !important;
            width: 100% !important;
        }

        #despues{
            width: 100% !important;
            left:0;
            right:inherit !important;
        }

}

/*Tablets*/
@media only screen and (min-width: 750px) and (max-width: 969px){


}

</style>
<div>

    <div class="modal-padding clearfix">

        

    </div>

    <div class="fslider" data-pagi="false" data-animation="fade">
        <div class="flexslider">
            <div class="slider-wrap">
                <?php if($imagenes){ ?>
                <?php 
                $count=0;
                foreach($imagenes as $imagen){ 
                    $count++;
                    if ($count == 2)
                        break;
                    ?>
                    
<a style="display:block;overflow:hidden;">
<div style="width:70%;margin:auto;text-align:center;position:relative;">
    <div id="antes" style="position:absolute;bottom:0;left:0;width:50%;padding:7px;text-align:center;font-size:1.6em;color:#fff !important;background:rgba(0,0,0,0.5)">Antes</div>
    <div id="despues" style="position:absolute;bottom:0;right:0;width:50%;padding:7px;text-align:center;font-size:1.6em;color:#fff !important;background:rgba(0,0,0,0.5)"><?php if($ln == "es"){ echo "Despues"; }else{ echo "Depoi"; } ?></div>    

    <img src="<?=$this->config->base_url();?>/fronted_inicio/procedimientos/<?=$imagen->img_antes?>" style="width: 50%; float: left">
    <img src="<?=$this->config->base_url();?>/fronted_inicio/procedimientos/<?=$imagen->img_despues?>" style="width: 50%;">
    <div style="clear:both;"></div>
</div>
</a>

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