function deleteConfirm(id){
	if(confirm("해당 도서를 삭제합니다!!") == true)
		location.href = "deletebook.jsp?id=" + id;
	else
		return;
}