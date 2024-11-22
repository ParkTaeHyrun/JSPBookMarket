function checkMember(){
	let form = document.Member;
	
	if((form.id.value.length < 6 && form.id.value.length > 12) || form.id.value == "" || !isNaN(form.id.value.substr(0,1))){
		alert("아이디는 빈공백이거나 숫자로 시작할 수 없으며 6~12자이내여야 합니다.");
		form.id.select();
		return false;
	}else if(form.pwd.value == "" || form.pwd.value.length < 5){
		alert("비밀번호는 공백일 수 없고 5자이상이여야 합니다.")
		form.pwd.select();
		return false;
	}else if(!isNaN(form.name.value.substr(0,1))){
		alert("이름은 숫자로 시작할 수 없습니다.")
		form.name.select();
		return false;
	}
}