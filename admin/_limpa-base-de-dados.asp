<%
Dim oConexaoDel
Set oConexaoDel = New Conexao
oConexaoDel.AbreConexao() 

'Limpa cadastros que foram iniciados, e por qquer motivo não foram salvos ou foram cancelados.
'Os cadastros só são deletados quando a tela de listagem for acessada pelo mesmo usuário que criou o registro.
oConexaoDel.UpdateItem("DELETE from "&oConexaoDel.prefixoTabela&"projetos WHERE registroIncluido='n' AND userIdSession="&session("ADM_id"))
oConexaoDel.UpdateItem("DELETE from "&oConexaoDel.prefixoTabela&"novidades WHERE registroIncluido='n' AND userIdSession="&session("ADM_id"))

set oConexaoDel.rs = nothing
%>