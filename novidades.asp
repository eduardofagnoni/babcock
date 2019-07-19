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

    <section id="topos-internos" class="topo-novidades"></section>

    <section class="features">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-5">
                    <div class="col-1">
                        <h1>Novidades</h1>
                    </div>
                </div>
                <div class="col-xs-12 col-md-7">
                    <ul>
                        <li><p>Confira todas as novidades da <br>Babcock e fique por dentro de <br>todos os nossos eventos.</p></li>
                    </ul>
                </div>
            </div>            
        </div>
    </section>

    <section class="noticias">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-8">

                    <%
                        Dim oNovidades
                        Set oNovidades = New Conexao
                        oNovidades.AbreConexao()
                        oNovidades.AbreTabela("select id,nome,fotoCapa,resumo from "&oNovidades.prefixoTabela&"novidades where ativo='s' AND regTerminado='s' order by dataProjeto asc")

                        while not oNovidades.rs.eof
                    %>

                    <div style="cursor:pointer;" onclick="location.href='novidade-interna.asp?idNovidade=<%=oNovidades.rs("id")%>'">
                    <img src="<%=oNovidades.enderecoNovidades%><%=oNovidades.rs("fotoCapa")%>" alt="<%=oNovidades.rs("nome")%>">
                    <h3><%=oNovidades.rs("nome")%></h3>
                    <p><%=oNovidades.rs("resumo")%></p>
                    <a href="novidade-interna.asp?idNovidade=<%=oNovidades.rs("id")%>" class="linkBt">Continuar Lendo</a>
                    </div>                   

                    <%
                        oNovidades.rs.MoveNext()
                        wend
                        oNovidades.rs.Close()
                        set oNovidades.rs = nothing
                    %>  


                </div>
                <div class="col-xs-12 col-md-4">
                    <div class="eventos">
                        <p class="tit">Eventos</p>
                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</small>
                        <form action="" method="post" id="" name="">
                            <div class="row">
                                <div class="col-xs-12 col-md-7"> 
                                    <div class="form-group">
                                        <label class="sr-only">Mês</label>
                                        <select class="form-control">
                                            <option value="">Janeiro</option>
                                            <option value="">Fevereiro</option>
                                            <option value="">Março</option>
                                            <option value="">Abril</option>
                                            <option value="">Maio</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-5"> 
                                    <div class="form-group">
                                        <label class="sr-only">Ano</label>
                                        <select class="form-control">
                                            <option value="">2019</option>
                                            <option value="">2020</option>
                                            <option value="">2021</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <%
                            Dim oEventos
                            Set oEventos = New Conexao
                            oEventos.AbreConexao()
                            oEventos.AbreTabela("select id,nome,dataEvento,resumo from "&oEventos.prefixoTabela&"eventos where ativo='s' AND regTerminado='s' order by dataEvento asc")

                            while not oEventos.rs.eof
                        %>

                            <div class="item">
                                <span><%=oEventos.rs("dataEvento")%></span>
                                <h4><%=oEventos.rs("nome")%></h4>
                                <p><%=oEventos.rs("resumo")%></p>
                            </div>           

                        <%
                            oEventos.rs.MoveNext()
                            wend
                            oEventos.rs.Close()
                            set oEventos.rs = nothing
                        %>                         

                    </div>

                    <div class="ban">
                        <a href="a-babcock.asp"><img src="images/banner-marcacao-novidades.jpg" alt=""></a>
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