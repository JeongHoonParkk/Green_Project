function consultation_request (pay) {
  var abc=$("input[id='privacy_agreement0']")
  if(abc.is(":checked")){
    if (pay == 'kakao') {
    	alert('결제가 진행됩니다.')
        requestPay();
    }else if(pay == 'pay'){
    	alert('결제가 진행됩니다.')
        requestPay2();
    }
	('w201901085','N');
    } else {
     alert("개인정보수집 및 이용에 동의해주셔야 신청이 가능합니다.");
     return false;
  }
} 