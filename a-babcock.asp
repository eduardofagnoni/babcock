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

    <section id="topos-internos" class="topo-a-babcock"></section>

    <section class="features">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-5">
                    <div class="col-1">
                        <h1>A Babcock</h1>
                    </div>
                </div>
                <div class="col-xs-12 col-md-7">
                    <ul>
                        <li><p>Mais de 125 anos de existência.</p></li>
                        <li><p>No 1 no Reino Unido em serviços de suporte a engenharia.</p></li>
                        <li><p>Uma das 250 maiores instituições britânicas.</p></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>   

    <section class="expertice-mundial" style="background:#fff;">
        
        <div class="container">
            <div class="row">         
                <div class="col-xs-12 col-md-5">
                    <h2>Líder em manutenção e serviços de engenharia complexa e crítica no Reino Unido.</h2>
                </div>
                <div class="col-xs-12 col-md-7 cont">
                    <p>Fundada em 1891, a Babcock foi criada com um único objetivo: oferecer suporte de engenharia sob medida com o mais alto nível de qualidade e segurança. Hoje, a empresa é uma das maiores especialistas do mundo no que faz, com integração de tecnologia, gerenciamento de infraestrutura e treinamento especializado.</p>

                    <p>Com mais de 36 mil colaboradores, a empresa atende demandas em 4 setores chave: marítimo, aviação, terrestre e nuclear. Os projetos são desenvolvidos em ambientes altamente regulados, administrando operações complexas, realizando manutenção, upgrade, operação e administração estruturas e equipamentos críticos. Tudo isso com uma economia financeira significativa para os clientes.</p>
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