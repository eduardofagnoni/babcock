<%@LANGUAGE="VBSCRIPT" codepage="65001" %>
<!-- #include file="admin/_classes/__cl__conexao.asp" -->
<%
idServico = request.querystring("idServico")

Dim oProjeto
Set oProjeto = New Conexao
oProjeto.AbreConexao()
oProjeto.AbreTabela("select id,nome,fotoTopoPagina,resumo,texto from "&oProjeto.prefixoTabela&"servicos where ativo='s' AND regTerminado='s' AND id="&idServico)

%>
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

    <section id="topos-internos" class="topo-manutencao-classe-mundial"></section>

    <section class="features">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-5">
                    <div class="col-1">
                        <h1><%=oProjeto.rs("nome")%></h1>
                    </div>
                </div>
                <div class="col-xs-12 col-md-7">
                    <ul>
                        <li><p><%=oProjeto.rs("resumo")%></p></li>
                    </ul>
                </div>
            </div>            
        </div>
    </section>



    <section class="expertice-mundial" style="background:#fff;">        
        <div class="container">
            <div class="">         
                <!--
                <div class="col-xs-12 col-md-4">
                    <h2></h2>                    
                </div>
                -->
                <div class="col-xs-12 cont">
                    <!--
                    <img src="<%=oProjeto.enderecoProjetos%><%=oProjeto.rs("fotoTopoPagina")%>" alt="<%=oProjeto.rs("nome")%>" style="max-width:100%; margin-bottom:40px;">
                    <br>
                    -->
                    <%=oProjeto.rs("texto")%>
                    
                </div>
            </div>
        </div>    
    </section>  





    <section class="expertice-mundial" style="background:#fff;">        
        <div class="container">   
            <div class="row">         
                <div class="col-xs-12 col-md-5">
                    <h2>Somos os melhores<br> no que fazemos.<br>E o que fazemos<br> não é pouco.</h2>
                </div>
                <div class="col-xs-12 col-md-7 cont">
                    <p>Oferecemos Suporte de engenharia sob medida, altamente qualificado, sustentado por um profundo entendimento da integração de tecnologia, infraestrutura única e treinamento especializado.</p>
                </div>
            </div>
        </div>    
    </section>

    <section class="quadros-mod-1">
        <div class="container geral-cont">
            <div class="row">
                <div class="col-xs-12 col-md-4">
                    <div class="quadro" style="cursor:pointer;" onclick="location.href='solucoes-em-engenharia-complexa.asp'">                        
                        <img src="images/solucoes-em-engenharia-complexa.jpg" alt="">
                        <h3>soluções de engenharia complexa</h3>
                        <p>Oferecemos suporte, com toda segurança e eficiência, a programas complexos e críticos em grande escala.</p>
                        <a href="solucoes-em-engenharia-complexa.asp">Saiba mais</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-4">
                    <div class="quadro" style="cursor:pointer;" onclick="location.href='manutencao-classe-mundial.asp'">
                        <img src="images/manutencao-de-classe-mundial.jpg" alt="">
                        <h3>manutenção de classe mundial</h3>
                        <p>Estamos capacitados para atuar em qualquer estratégia e em todas as especialidades, com Manutenção, Gerenciamento e Soluções para infraestruturas.</p>
                        <a href="manutencao-classe-mundial.asp">Saiba mais</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-4">
                    <div class="quadro" style="cursor:pointer;" onclick="location.href='manutencao-auto-sustentada.asp'">
                        <img src="images/manutencao-autosustentada.jpg" alt="">
                        <h3>manutenção autosustentada</h3>
                        <p>Metodologia exclusiva que em que analisamos, classificamos e quantificamos suas perdas para, então, criar um plano de recuperação e convertê-las em ganhos.</p>
                        <a href="manutencao-auto-sustentada.asp">Saiba mais</a>
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