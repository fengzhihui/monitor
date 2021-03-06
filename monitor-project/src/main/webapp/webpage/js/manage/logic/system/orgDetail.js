$(document).ready(function() {
	//加载的是查看页面时，所有控件均不可编辑
	var load=$("#load").val();
	if(load=="view"){//查看页面
		$("#detailWindow :input").attr("disabled","true");
		$("#saveOperation").remove();
	}
});
function validOrgCode() {
	var orgCode = $("#orgCode").val();
	if (orgCode && orgCode.length != 10) {
		$.messager.alert("提示", "机构代码必须为10位数字！");
		return;
	} else if (orgCode && orgCode.length == 10) {
		$.post(basePath+"manage/system/orgManagerController.do?getOrgByOrgCode", {orgCode:orgCode},function(data){
			if (data.resultCode > 0) {
				$.messager.alert("提示", "机构代码已被使用！");
				return;
			} else {
				saveOrUpdate();
			}
		},'json');
	} else if (orgCode == "") {
		saveOrUpdate();
	}
}
//保存
function saveOrUpdate(){
	var isValid = $("#form_org").form("validate");//表单验证方法
	if (isValid){
		//进行录入操作的后台交互
		$.ajax({
	        url:basePath+'manage/system/orgManagerController.do?saveOrUpdate',
	        type:"POST",
	        dataType:"json",
	        data:$("#form_org").serialize(),
	        success: function(d){
	        	if(d.resultCode==0){
	        		$.messager.alert("提示",d.msg);
	                //操作完成后关闭窗口
	        		closeWin();				
					//需要刷新DataGrid
					$("#getOrgList").treegrid("reload");
	        	}                
	        }
	    });	
	}
}

//关闭
function closeWin(){
	var id=$("#id").val();
	var load=$("#load").val();
	if(load!=null && load!=""){
		$('#detailWindow').window('close');
	}else if(id!=null && id!=""){
		$('#editWindow').window('close');
	}else{
		$('#addWindow').window('close');
	}
	
}