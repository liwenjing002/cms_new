<%total_ca_num =0%>
<%@question_detail.question_category.question_details.each do |b| %>
<%num_v = (b.num ? b.num : 0)%>
 <%total_ca_num = total_ca_num+num_v%>
<%end%>
$("span[tr=<%=@question_detail.question_category.id%>][class='cat_num']").html("<%=total_ca_num%>");
alert("题目保存成功")