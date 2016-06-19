function checkRegister() {
    
    var pwd = document.getElementById("pwd").value;
    if (pwd == "") {
        alert("请输入密码");
        return false;
    }
    var confirm = document.getElementById("confirm").value;
    if (confirm == "") {
        alert("请输入确认密码");
        return false;
    }
    if (pwd != confirm) {
        alert("两次输入密码不一致");
        return false;
    }

    var email = document.getElementById("email").value;
    var phone = document.getElementById("phone").value;

    var patrnP = /(^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})$|(15[0-9]{9})$/;

    if (phone == "") {
        alert("联系电话不能为空");
        return false;
    }
    if (!patrnP.exec(phone)) {
        alert("联系电话输入格式不正确");
        return false;
    }

    var patrnE = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
    if (email != "" && !patrnE.exec(email)) {
        alert("电子邮箱输入格式不正确");
        return false;
    }
    if (!confirm("确定？")) {
        return false;
    }
    alert("注册成功！");
    return true;
}