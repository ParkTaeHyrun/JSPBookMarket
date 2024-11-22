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
	
	form.submit();
}