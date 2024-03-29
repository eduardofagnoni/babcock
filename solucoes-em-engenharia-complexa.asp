<%@LANGUAGE="VBSCRIPT" codepage="65001" %>
<!-- #include file="admin/_classes/__cl__conexao.asp" -->
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

    <section id="topos-internos" class="topo-solucoes-em-engenharia-complexa"></section>

    <section class="features">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-5">
                    <div class="col-1">
                        <h1>Soluções em<br> engenharia complexa</h1>
                    </div>
                </div>
                <div class="col-xs-12 col-md-7">
                    <ul>
                        <li><p>Oferecemos suporte, com toda segurança e eficiência, a <br>programas complexos e críticos em grande escala.</p></li>
                    </ul>
                </div>
            </div>            
        </div>
    </section>   

    <section class="expertice-mundial" style="background:#fff;">
        
        <div class="container"> 
            <div class="row">           
                <div class="col-xs-12 col-md-5">
                    <!--<h2></h2>-->
                </div>
                <div class="col-xs-12 col-md-7 cont">
                    <!--
                    <p></p>
                    -->
                </div>
            </div>
        </div>
    
    </section>


    <section class="quadros-mod-2">
        <div class="container geral-cont">
            <div class="row">

                <%
                    Dim oServicos
                    Set oServicos = New Conexao
                    oServicos.AbreConexao()
                    oServicos.AbreTabela("select id,nome,fotoCapa,resumo from "&oServicos.prefixoTabela&"servicos where ativo='s' AND regTerminado='s' AND area=2 order by id asc")

                    while not oServicos.rs.eof
                %>

                <div class="col-xs-12 col-md-3">
                    <div class="quadro" style="cursor:pointer;" onclick="location.href='servicos-interna.asp?idServico=<%=oServicos.rs("id")%>'">                        
                        <img src="<%=oServicos.enderecoServicos%><%=oServicos.rs("fotoCapa")%>" alt="<%=oServicos.rs("nome")%>">
                        <h3><%=oServicos.rs("nome")%></h3>
                        <p><%=oServicos.rs("resumo")%></p>
                        <a href="servicos-interna.asp?idServico=<%=oServicos.rs("id")%>">Saiba mais</a>
                    </div>
                </div>

                <%
                    oServicos.rs.MoveNext()
                    wend
                    oServicos.rs.Close()
                    set oServicos.rs = nothing
                %>             
                            

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