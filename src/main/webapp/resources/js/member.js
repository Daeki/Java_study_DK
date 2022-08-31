//member.js
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