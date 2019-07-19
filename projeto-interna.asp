<%@LANGUAGE="VBSCRIPT" codepage="65001" %>
<!-- #include file="admin/_classes/__cl__conexao.asp" -->
<%
idProjeto = request.querystring("idProjeto")

Dim oProjeto
Set oProjeto = New Conexao
oProjeto.AbreConexao()
oProjeto.AbreTabela("select id,nome,fotoTopoPagina,texto from "&oProjeto.prefixoTabela&"projetos where ativo='s' AND regTerminado='s' AND id="&idProjeto)

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

    <section id="topos-internos" class="topo-fale-conosco"></section>

    <section class="features">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-5">
                    <div class="col-1">
                        <h1>Nossos Projetos</h1>
                    </div>
                </div>
                <div class="col-xs-12 col-md-7">
                    <ul>
                        <li><p>Conheça nossos projetos que se destacam pela criatividade, eficiência e economia gerada.</p></li>
                    </ul>
                </div>
            </div>            
        </div>
    </section>



    <section class="expertice-mundial" style="background:#fff;">        
        <div class="container">
            <div class="">         
                <div class="col-xs-12 col-md-4">
                    <h2><%=oProjeto.rs("nome")%></h2>                    
                </div>
                <div class="col-xs-12 col-md-8 cont">

                    <img src="<%=oProjeto.enderecoProjetos%><%=oProjeto.rs("fotoTopoPagina")%>" alt="<%=oProjeto.rs("nome")%>" style="max-width:100%; margin-bottom:40px;">
                    <br>
                    <%=oProjeto.rs("texto")%>
                    
                </div>
            </div>
        </div>    
    </section>  



    <section class="orgulho-de-um-trabalho-bem-feito" style="background:#f7f7f7;">
        <div class="container-fluid">
            <div class="col-xs-12 col-md-5">
                <h2>Veja outros<br>projetos<br>de destaque.</h2>
                
                <nav class="slidernav" style="margin-top:10px; margin-right:-10px;">
                    <div id="navbtns" class="clearfix">
                        <a href="#" class="previous"><span class="fa fa-chevron-left"></span></a>
                        <a href="#" class="next"><span class="fa fa-chevron-right"></span></a>
                    </div>
                </nav> 

            </div>
            <div class="col-xs-12 col-md-7">
                
                <div class="galeria" style="margin:40px 0 0 0;">
                    <div class="crsl-items" data-navigation="navbtns">
                        <div class="crsl-wrap">


                            <%
                                Dim oListaProjeto
                                Set oListaProjeto = New Conexao
                                oListaProjeto.AbreConexao()
                                oListaProjeto.AbreTabela("select id,nome,fotoCapa,resumo from "&oListaProjeto.prefixoTabela&"projetos where ativo='s' AND regTerminado='s' AND id<>"&idProjeto&" order by nome asc")

                                while not oListaProjeto.rs.eof
                            %>


                            <div class="crsl-item" style="cursor:pointer;" onclick="location.href='projeto-interna.asp?idProjeto=<%=oListaProjeto.rs("id")%>'">
                                <img src="<%=oListaProjeto.enderecoProjetos%><%=oListaProjeto.rs("fotoCapa")%>" alt="<%=oListaProjeto.rs("nome")%>">
                                <div class="cont">
                                    <p><%=oListaProjeto.rs("nome")%></p>
                                    <p><%=oListaProjeto.rs("resumo")%></p>
                                    <a href="projeto-interna.asp?idProjeto=<%=oListaProjeto.rs("id")%>">Saiba mais</a>
                                </div>
                            </div>

                            <%
                                oListaProjeto.rs.MoveNext()
                                wend
                                oListaProjeto.rs.Close()
                                set oListaProjeto.rs = nothing
                            %> 
                            

                            

                        </div>
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