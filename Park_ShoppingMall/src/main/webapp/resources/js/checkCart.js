
	

function checkCart() {
	let procode = document.getElementById("procode").value;
	let proprice = document.getElementById("proprice").value;
	let proname = document.getElementById("proname").value;
  	var form = $('#frm').serialize(); // 전역 변수인 form에 serialize 데이터 저장

  $.ajax({
    type: 'POST',
    url: 'checkCart',
    data: form,
    success: function(response) {
      alert(response);
      if (response == '') {
        alert('주문페이지로 이동합니다.');

        form2 = document.createElement('form');

        var procodeInput = document.createElement('input');
        procodeInput.setAttribute('type', 'text');
        procodeInput.setAttribute('name', 'procode');
        procodeInput.setAttribute('value', procode);
        form.appendChild(procodeInput);

        var propriceInput = document.createElement('input');
        propriceInput.setAttribute('type', 'text');
        propriceInput.setAttribute('name', 'proprice');
        propriceInput.setAttribute('value', proprice);
        form.appendChild(propriceInput);

        var pronameInput = document.createElement('input');
        pronameInput.setAttribute('type', 'text');
        pronameInput.setAttribute('name', 'proname');
        pronameInput.setAttribute('value', proname);
        form.appendChild(pronameInput);

        form.setAttribute('method', 'POST');
        form.setAttribute('action', 'orderPage');
        document.body.appendChild(form2);
        form2.submit();
        
      } else if (response == 'notnull') {
        alert("장바구니에 같은 상품이 존재합니다. 장바구니로 이동합니다.");
        location.href = "ShoppingCart";
      }
    },
    error: function(xhr, status, error) {
      console.log("Error:", error);
    }
  });
}
