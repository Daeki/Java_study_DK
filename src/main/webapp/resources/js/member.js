//member.js

function joinCheck(){
    //선택자
    const joinForm = document.getElementById("joinForm");
    const joinButton = document.getElementById("joinButton");
    const inputUserName = document.getElementById("inputUserName");
    const inputUserNameResult = document.getElementById("inputUserNameResult");
    const inputPassword= document.getElementById("inputPassword");
    const inputPasswordResult = document.getElementById("inputPasswordResult");
    const inputPasswordCheck = document.getElementById("inputPasswordCheck");
    const inputPasswordCheckResult = document.getElementById("inputPasswordCheckResult");

    //Check 결과
    let idCheck=false;
    let pwCheck=false;
    let pwEqualCheck=false;
    let nameCheck=false;
    let emailCheck=false;
    let phoneCheck=false;

    //idCheck
    inputUserName.addEventListener("blur", function(){
        idCheck=false;
        if(inputUserName.value.length>1){
            inputUserNameResult.innerHTML="";
            idCheck=true;
        }else {
            //idCheck=false;
            inputUserNameResult.innerHTML="ID는 최소 2글자 이상 이어야 합니다."
        }

    });

    //pw길이 Check
    inputPassword.addEventListener("change", function(){
        if(inputPassword.value.length>5){
            pwCheck=true;
            inputPasswordResult.innerHTML="";
            inputPasswordCheck.value="";
        }else {
            pwCheck=false;
            inputPasswordResult.innerHTML="패스워드는 6자 글자 이상이어야 합니다";

        }
    });

    //pw가 같은지 check
    inputPasswordCheck.addEventListener("blur", function(){
        console.log("pwEqual");
        if(inputPassword.value == inputPasswordCheck.value){
            pwEqualCheck=true;
            inputPasswordCheckResult.innerHTML="";
        }else {
            pwEqualCheck=false;
            inputPasswordCheck.value="";
            inputPasswordCheckResult.innerHTML="패스워드가 일치하지 않습니다"
        }
    });



    //joinButton CLICK!!
    joinButton.addEventListener("click", function(){
        if(idCheck&&pwCheck&&pwEqualCheck){
            alert("서버 전송 합니다");
            //joinForm.submit();
        }else {
            alert("필수 입력 사항은 다 입력 해야 함");
        }

    })




}



function loginCheck(){
    const btn = document.getElementById("btn");
    const frm = document.getElementById("frm");
    const userName = document.getElementById("userName");
    const password = document.getElementById("password");

    btn.addEventListener("click", function(){
        let u = userName.value;
        let p = password.value;
        console.log(u=="");
        console.log(u.length);

        if(u==""){
            alert("ID는 필수 입니다");
            return;
        }

        if(p==""){
            alert("PW는 필수 입니다");
            return;       
        }

        frm.submit();

        // if(u.length>0 && p.length>0){
        //     frm.submit();
        // }else {
        //     alert("ID와 PASSWORD는 필수 입니다");
        // }


        //frm.submit();
    });
}
function check(){
    const all = document.getElementById("all");
    const cb = document.getElementsByClassName("cb");
    const join = document.getElementById("join");
    const frm = document.getElementById("frm");
    const req = document.getElementsByClassName("req");

    join.addEventListener("click", function(){
        let result=true;
        for(let i=0;i<req.length;i++){
            if(!req[i].checked){
                result=false;
                break;
            }
        }
        if(result){
            frm.submit();
        }else {
            alert("필수 약관에 동의 해야 합니다");
        }

        // if(all.checked){
        //     frm.submit();
        // }else {
        //     alert("약관에 동의 해야 합니다");
        // }
    });

    all.addEventListener("click", function(){
        for(let i=0;i<cb.length;i++){
            cb[i].checked=all.checked;
        }
    })

    for(let i=0;i<cb.length;i++){
        cb[i].addEventListener("click", function(){
            let result=true;
            for(let j=0;j<cb.length;j++){
                if(!cb[j].checked){
                    result = false;
                    break;
                }
            }    
            all.checked=result;    
        });
    }


}