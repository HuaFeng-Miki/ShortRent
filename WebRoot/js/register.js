function checkRegister() {
    
    var pwd = document.getElementById("pwd").value;
    if (pwd == "") {
        alert("����������");
        return false;
    }
    var confirm = document.getElementById("confirm").value;
    if (confirm == "") {
        alert("������ȷ������");
        return false;
    }
    if (pwd != confirm) {
        alert("�����������벻һ��");
        return false;
    }

    var email = document.getElementById("email").value;
    var phone = document.getElementById("phone").value;

    var patrnP = /(^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})$|(15[0-9]{9})$/;

    if (phone == "") {
        alert("��ϵ�绰����Ϊ��");
        return false;
    }
    if (!patrnP.exec(phone)) {
        alert("��ϵ�绰�����ʽ����ȷ");
        return false;
    }

    var patrnE = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
    if (email != "" && !patrnE.exec(email)) {
        alert("�������������ʽ����ȷ");
        return false;
    }
    if (!confirm("ȷ����")) {
        return false;
    }
    alert("ע��ɹ���");
    return true;
}