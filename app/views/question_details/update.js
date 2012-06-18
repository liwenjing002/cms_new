<%total_ca_num =0%>
<%@question_detail.question_category.question_details.each do |b| %>
 <%total_ca_num = total_ca_num+b.num%>
<%end%>

$("span[tr=<%=params[:tr_id]%>][class='cat_num']").attr("value","<%=total_ca_num%>");
alert("<%=total_ca_num%>")
alert("题目保存成功")