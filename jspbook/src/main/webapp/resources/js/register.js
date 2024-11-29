function checkRegister(){
	let form = document.Register;
	let id = form.id.value;
	
	//^가 대괄호 안에 붙으면 제외를 의미
	//^가 대괄호 앞에 붙으면 시작을 의미
	/*
	let regExpid = /[^0-9]/;
	//아이디는 숫자로 시작할 수 없습니다.
	if(!regExpid.test(id)){
		alert("아이디는 숫자로 시작할 수 없습니다.");
		form.id.select();
		return;
	}
	*/
	
	//+는 문자열 연결, $는 문자열 종료, g는 문자열내의 모든 패턴을 검출
	/*
	let regExpid = /^[a-z]+[a-z0-9]{6,20}$/g;
	
	if(!regExpid.test(id)){
		alert("아이디는 영소문자로 시작하는 6~20자 이내여야 합니다.");
		form.id.select();
		return;
	}
	*/
	
	let regExpid = /^[ISBN]+[0-9]{4}$/;
	
	if(!regExpid.test(id)){
		alert("아이디는 대문자ISBN + 숫자 4자리 여야 한다.");
		form.id.select();
		return;
	}
	
	let regExpPasswd = /^[0-9]*$/;
	let pwd = form.passwd.value;
	if(!regExpPasswd.test(pwd)){
		alert("비밀번호는 숫자로만 입력해야 됩니다.");
		form.passwd.select();
		return;
	}
	
	let regExpName = /^[가-힣]*$/
	let name = form.name.value;
	if(!regExpName.test(name)){
		alert("이름은 한글로만 입력해야 됩니다.");
		form.name.select();
		return;
	}
	
	let regExpPhone = /\d{2,3}-\d{3,4}-\d{4}$/;
	let phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
	if(!regExpPhone.test(phone)){
		alert("전화번호를 확인 하세요.");
		form.phone2.select();
		return;
	}
	
	let regExpEMail = /[]/;
	let email = form.email.value;
	form.submit();
}