<%total_ca_num =0%>
<%@question_detail.question_category.question_details.each do |b| %>
 <%total_ca_num = total_ca_num+b.num%>
<%end%>
alert($("span[tr=<%=@question_detail.question_category.id%>][class='cat_num']").html())
$("span[tr=<%=@question_detail.question_category.id%>][class='cat_num']")htmlr("<%=total_ca_num%>");
alert("题目保存成功")