<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="_classes/__cl__conexao.asp" -->


<%
Dim oValida
Set oValida = New ValidaSessao
oValida.validaPagina("ADM_logado")

Dim oConexaoDelete
Set oConexaoDelete = New Conexao
oConexaoDelete.AbreConexao() 


Function SafeSQL(sInput)
    TempString = sInput	  
    sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", ":", ";", "<", ">", "=", "[", "]", "?", "'", "|") 
    For iCounter = 0 to uBound(sBadChars)
    TempString = replace(TempString,sBadChars(iCounter),"")
    Next
    SafeSQL = TempString
End function

id = SafeSQL(request.querystring("id"))
idArquivo = SafeSQL(request.querystring("idArquivo"))

datasys = now()
ipCapturado = Request.ServerVariables("remote_addr")
dominioAcessado = Request.ServerVariables("server_name")
portaUtilizada = Request.ServerVariables("server_port")
metodoParaChamarAPagina = Request.ServerVariables("request_method")
cadastro_dados_iniciais = datasys&" - IP:"&ipCapturado&":"&portaUtilizada&" - Dom. Acesso:"&dominioAcessado&" - Metodo:"&metodoParaChamarAPagina
ultima_alteracao = cadastro_dados_iniciais


oConexaoDelete.AbreTabela("select fotoCapa,fotoTopoPagina from "&oConexaoDelete.prefixoTabela&"projetos where ativo='s' and id="&id)
nomeDoArquivo = oConexaoDelete.rs("fotoCapa")
nomeDoArquivo2 = oConexaoDelete.rs("fotoTopoPagina")

    dim fs
    Set fs=Server.CreateObject("Scripting.FileSystemObject")    
    MyFile = Server.mappath(upGalerias&"__media\projetos\"&nomeDoArquivo)
    if fs.FileExists(MyFile)   then
    fs.DeleteFile(myfile) 
    else
    'response.write(MyFile&"<br>")
    'response.write("não encontrado")
    'response.end()
    end if

    Set fs=Server.CreateObject("Scripting.FileSystemObject")    
    MyFile = Server.mappath(upGalerias&"__media\projetos\"&nomeDoArquivo2)
    if fs.FileExists(MyFile)   then
    fs.DeleteFile(myfile) 
    else
    'response.write(MyFile&"<br>")
    'response.write("não encontrado")
    'response.end()
    end if
    set fs=nothing

'apagando registro
oConexaoDelete.UpdateItem("DELETE from "&oConexaoDelete.prefixoTabela&"projetos WHERE id="&id)

response.redirect("lista-projetos.asp?msg_sys=45")

%>