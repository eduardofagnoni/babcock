<!DOCTYPE html>
<html lang="pt-BR"></html>
<head>


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">    
    <link href="https://fonts.googleapis.com/css?family=Maven+Pro:400,700|Open+Sans:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="vendors/font-awesome/css/font-awesome.min.css">   
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="stylesheet/styleGuide.css">
    <title></title>


</head>
<body>

<main>

    <!-- #include file="_includes/header.asp" -->

    <section id="topos-internos" class="topo-como-fazemos"></section>

    <section class="features">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-5">
                    <div class="col-1">
                        <h1>Como fazemos</h1>
                    </div>
                </div>
                <div class="col-xs-12 col-md-7">
                    <ul>
                        <li><p>Inovação, eficiência e profundo conhecimento técnico.</p></li>
                        <li><p>treinamento técnico e medologia de sucesso.</p></li>
                    </ul>
                </div>
            </div>            
        </div>
    </section>   

    <section class="expertice-mundial" style="background:#fff;">
        
        <div class="container">
            <div class="row">         
                <div class="col-xs-12 col-md-5">
                    <h2>Compartilhamos os riscos do seu negócio para gerar mais benefícios.</h2>
                </div>
                <div class="col-xs-12 col-md-7 cont">
                    <p>Ativos e infraestrutura são fundamentais para os mais diversos negócios, e a Babcock entende isso como ninguém. Prova disso é a confiança de inúmeros clientes que conquistamos, tanto no Reino Unido quanto no resto do mundo, sempre com toda inovação e eficiência que eles exigem.</p>
                </div>
            </div>
        </div>
    
    </section>


    <section class="quadros-mod-3">
        <div class="container geral-cont">
            <div class="row">
                <div class="col-xs-12 col-md-4">
                    <div class="quadro">                        
                        <img src="images/manutencao-de-classe-mundial.jpg" alt="">
                        <h3>Tecnologia</h3>
                        <p>Babcock tem profundo conhecimento técnico com décadas de experiência. Entendemos risco e resiliência e somos capazes de fornecer disponibilidade com inovação. Somos agnósticos em relação a equipamentos, o que nos permite trabalhar com qualquer OEM para especificar e dar suporte a seus produtos. identificamos e integramos a tecnologia ao nosso suporte ao longo da vida.</p>                        
                    </div>
                </div>
                <div class="col-xs-12 col-md-4">
                    <div class="quadro">
                        <img src="images/solucoes-em-engenharia-complexa.jpg" alt="">
                        <h3>A Infraestrutura Global</h3>
                        <p>Temos experiência em operar e gerenciar ativos de infraestrutura crítica em ambientes altamente regulamentados, desde instalações marítimas de propriedade exclusiva, frotas aéreas e terrestres críticas, locais licenciados nuclearmente, bases navais, aéreas e militares, locais de treinamento técnico para aeronaves de propriedade do cliente.</p>
                    </div>
                </div>
                <div class="col-xs-12 col-md-4">
                    <div class="quadro">
                        <img src="images/manutencao-autosustentada.jpg" alt="">
                        <h3>Treinamento</h3>
                        <p>O treinamento técnico é parte integrante de nossa oferta de engenharia. É uma exigência fundamental e contínua e uma parte essencial de nossa expertise. A condução de treinamento técnico em todo o Grupo nos permite compartilhar inovação e metodologia de sucesso em todos os setores para garantir que nossos clientes façam o melhor uso de seus recursos críticos.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    


    <!-- #include file="_includes/seja-um-cliente.asp" -->
    <!-- #include file="_includes/footer.asp" -->
    <!-- #include file="_includes/ouvidoria.asp" -->

</main>

<script src="assets/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="plugins/responsiveCarousel/js/responsiveCarousel.min.js"></script>
<script src="js/menu.js"></script>

<script>

    $(function(){
        $('.crsl-items').carousel({
            autoRotate: 4000,
            speed: 500,
            visible: 3,
            itemMinWidth:300,
            //itemEqualHeight: 426,
            itemMargin: 23,
            overflow: false
        });
        
        $("a[href=#]").on('click', function(e) {
            e.preventDefault();
        });
    });

</script>


</body>
</html>