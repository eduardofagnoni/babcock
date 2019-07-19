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

                    <a href="" style="color:#004094;font-size:16px;font-weight: normal;text-decoration:none">Confira todos os segmentos de atuação da Babcock.</a>
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
                    oServicos.AbreTabela("select id,nome,fotoCapa,selo,resumo from "&oServicos.prefixoTabela&"servicos where ativo='s' AND regTerminado='s' AND area=3 order by id asc")

                    while not oServicos.rs.eof
                %>

                <div class="col-xs-12 col-md-3">
                    <div class="quadro" style="cursor:pointer;" onclick="location.href='servicos-interna.asp?idServico=<%=oServicos.rs("id")%>'">     
                        <span class="selo"><img src="<%=oServicos.enderecoSelos%><%=oServicos.rs("selo")%>" alt="<%=oServicos.rs("nome")%>"></span>                   
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

                <!--
                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/aeroportos.gif" alt="Aeroportos"></span>
                        <img src="images/aeroportos.jpg" alt="">
                        <h3>Aeroportos</h3>
                        <p>A Babcock oferta soluções inovadoras em sistemas e na manutenção multidisciplinar dos processos de aeroportos globalmente.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/metalurgica.gif" alt="Metalurgia"></span>
                        <img src="images/metalurgia.jpg" alt="">
                        <h3>Metalurgia</h3>
                        <p>Soluções de manutenção para o setor de Metalurgia, nas áreas de beneficiamento, concentrado, condicionamento, extração, refino, entre outras.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/farmaceutica.gif" alt="Farmacêutica"></span>
                        <img src="images/farmaceutica.jpg" alt="">
                        <h3>Farmacêutica</h3>
                        <p>Executamos manutenção para as indústrias farmacêuticas, nas áreas de utilidades, caldeiras, salas limpas, leito fluidizado, osmose reversa, entre outras.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/automotiva.gif" alt="Automotiva"></span>
                        <img src="images/automotiva.jpg" alt="">
                        <h3>Automotiva</h3>
                        <p>Oferecemos soluções de manutenção para áreas de estamparia, estruturação e soldagens, body shop e chassis, powertrain, motores e outros.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>

                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/facilities.gif" alt="Facilities"></span>
                        <img src="images/facilities.jpg" alt="">
                        <h3>Facilities</h3>
                        <p>Soluções completas em gestão, planejamento, operação e manutenção, cuidando desde os requisitos básicos de contratação e treinamento, até a execução de soluções técnicas.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/petroquimica.gif" alt="Petroquímica"></span>
                        <img src="images/petroquimica.jpg" alt="">
                        <h3>Petroquímica</h3>
                        <p>Soluções de manutenção para as áreas da indústria petroquímica que transforma subprodutos de petróleo bruto, principalmente nafta ou gás natural, em bens de consumo e industriais.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/frota.gif" alt="Frota"></span>
                        <img src="images/frota.jpg" alt="">
                        <h3>Frota</h3>
                        <p>Atuamos globalmente em ativos críticos pertencentes a frotas dos segmentos de construção civil, mineração, aeroportos, carros-fortes, transporte de mercadorias e pessoas.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/papel-e-celulose.gif" alt="Papel e Celulose"></span>
                        <img src="images/papel-e-celulose.jpg" alt="">
                        <h3>Papel e Celulose</h3>
                        <p>Manutenção para as áreas de Linha de Fibras, Desaguadoras de Celulose, Máquinas de Papel, Embaladeiras e Cortadeiras, Caldeiras de Recuperação, Pátios de Madeira e outros.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>

                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/energia.gif" alt="Energia"></span>
                        <img src="images/energia.jpg" alt="">
                        <h3>Energia</h3>
                        <p>Soluções de manutenção para as áreas de Geração, Transmissão e Distribuição, Pequenas Centrais Hidrelétricas, Termoelétricas e parques de geração de energia eólicas.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/datacenter.gif" alt="Data Center"></span>
                        <img src="images/datacenter.jpg" alt="">
                        <h3>Data Center</h3>
                        <p>Atuamos no gerenciamento, operação e manutenção de Datacenters de todos os portes e segmentos no país.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/oleo-e-gas.gif" alt="Óleo e Gás"></span>
                        <img src="images/oleo-e-gas.jpg" alt="">
                        <h3>Óleo e Gás</h3>
                        <p>Fornecemos suporte de engenharia em todas as etapas do ciclo de aquisição, operação e descarte de navios, plataformas e seus equipamentos e sistemas.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/mineracao.gif" alt="Mineração"></span>
                        <img src="images/mineracao.jpg" alt="">
                        <h3>Mineração</h3>
                        <p>Soluções de manutenção para as áreas de Extração, Flotação, Correias Transportadoras, Moagem, Área de Utilidades, Caldeiras de Recuperação, e outros.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>

                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/emergency.gif" alt="Emergency"></span>
                        <img src="images/emergency.jpg" alt="">
                        <h3>Emergency</h3>
                        <p>Disponibilizamos esse tipo de serviço a um custo reduzido para nossos clientes, gerenciando e protegendo frotas complexas de veículos e equipamentos especializados.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/portos.gif" alt="Portos"></span>
                        <img src="images/portos.jpg" alt="">
                        <h3>Portos</h3>
                        <p>Possuimos capacidade comprovada em operar e gerenciar portos de grande escala.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="quadro">
                        <span class="selo"><img src="images/icones/defesa.gif" alt="Defesa"></span>
                        <img src="images/defesa.jpg" alt="">
                        <h3>Defesa</h3>
                        <p>Somos um dos maiores fornecedores de engenharia complexa do mundo, possuindo capacidade comprovada em gerir e construir ativos militares.</p>
                        <a href="">Saiba mais</a>
                    </div>
                </div>
                -->

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