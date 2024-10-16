/*

 */
const handleCong = ()=>{
	var input1 = document.getElementById("s1").value;
	var input2 = document.getElementById("s2").value;
    
    if (isNaN(input1)|| isNaN(input2) || input1 === ""||input2==="") {
        alert("Vui lòng nhập một số hợp lệ.");
		return false;
    }
	return true;
}