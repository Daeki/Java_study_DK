//board_files.js

const fileAdd = document.getElementById("fileAdd");//add button
const addFiles = document.getElementById("addFiles"); // div#addFiles

let count=0;

fileAdd.addEventListener("click", function(){
    
    
    if(count>4){
        alert("최대 5개만 가능")
        return;
    }

    
//     <div class="mb-3">
//        <label for="files" class="form-label">File</label>
//        <input type="file" name="files" class="form-control" id="files">
//     </div>
    
    //부모 Element div 생성
    let div = document.createElement("div");   //<div></div>
    let c = document.createAttribute("class"); // class=""
    c.value="mb-3";                            // class="mb-3"
    div.setAttributeNode(c);                   // <div class="mb-3"></div>   

    //자식 Element Label 생성
    let label = document.createElement("label");    //<label></label>
    let labelText = document.createTextNode("File");// "File"
    label.appendChild(labelText);                   // <label>File</label>
    let labelClass=document.createAttribute("class");// class=""
    labelClass.value="form-label";                   // class="form-label"
    label.setAttributeNode(labelClass);              // <label class="form-label"></label>   
    labelClass = document.createAttribute("for");    // for="";
    labelClass.value="files";                        // for="files"
    label.setAttributeNode(labelClass);              // <label for="files" class="form-label"></label>
    
    div.appendChild(label);

    //자식 Element Input 생성
    let input = document.createElement("input");        //<input>
    let inputAttr = document.createAttribute("type");   //type=""
    inputAttr.value="file";                             //type="file";
    input.setAttributeNode(inputAttr);                  //<input type="file">

    inputAttr = document.createAttribute("name");       //name="";
    inputAttr.value="files";                            //name="files"
    input.setAttributeNode(inputAttr);                  //<input type="file" name="files">

    inputAttr = document.createAttribute("class");      //class="";
    inputAttr.value="form-control";                     //class="form-control"
    input.setAttributeNode(inputAttr);                  //<input type="file" name="files" class="form-control">

    inputAttr = document.createAttribute("id");         //id="";
    inputAttr.value="files";                            //id="files"
    input.setAttributeNode(inputAttr);                  //<input type="file" name="files" class="form-control" id="files">
    div.appendChild(input);

    addFiles.append(div);


    count++;

})