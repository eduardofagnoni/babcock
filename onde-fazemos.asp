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

    <section id="topos-internos" class="topo-a-onde-fazemos"></section>

    <section class="features">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-5">
                    <div class="col-1">
                        <h1>Onde fazemos</h1>
                    </div>
                </div>
                <div class="col-xs-12 col-md-7">
                    <ul>
                        <li><p>Aquipe altamente qualificada com especialistas em cada área.</p></li>
                        <li><p>Presente nos mais diversos setores como aéreo, terrestre e marítimo e nuclear.</p></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>   

    <section class="expertice-mundial" style="background:#fff;">
        
        <div class="container"> 
            <div class="row">           
                <div class="col-xs-12 col-md-5">
                    <h2>Apenas uma empresa mundial poderia atuar em tantos segmentos.</h2>
                </div>
                <div class="col-xs-12 col-md-7 cont">
                    <p>A Babcock conta com milhares de funcionários altamente qualificados capazes de oferecer os mais diversos serviços de manutenção e suporte em ambientes complexos e críticos. A empresa está presente nos mais diversos setores, como o fornecimento de suporte de gerenciamento de instalações para os centros de dados críticos, gerenciamento e manutenção de equipamentos de suporte terrestre, sistemas de bagagem nos aeroportos, entre outros.</p>

                    <a href="">Confira todos os segmentos de atuação da Babcock.</a>
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