<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>清算子系统运行状态监控</title>
    <jsp:include page="../../manage/header.jsp"></jsp:include>
    <script type="text/javascript" src="${requestScope.basePath }webpage/js/manage/amsWindow.js"></script>
    <script type="text/javascript" src="${requestScope.basePath }webpage/js/project/stSysFlowCurrentDt/stSysFlowCurrentDt.js"></script>
    <script type="text/javascript" src="${requestScope.basePath }webpage/js/public.js"></script>
</head>
<body>
<br />
<div style="width: 99%; padding-top: 10px; padding-left: 10px"
     id="centerMain">
    <!--input 表格模块-->
    <div class="tahoma_font tableStyle_5_0">

        <form id="stSysFlowCurrentDt_search_form">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>

                    <td width="60" style="padding-left:20px;"><label>状态：</label></td>
                    <td width="160">
                        <select id="finishFlag" name="finishFlag" class="easyui-combobox" style="width:150px;"
                                data-options="valueField:'id',textField:'text',panelHeight:'auto',editable:false,
				        	url:'${requestScope.basePath }project/stSysFlowCurrentDt/stSysFlowCurrentDtCpntroller.do?getFinishFlag'"></select>
                    </td>

                    <td>
                        <a id="searchBtn" href="javascript:void(0);" onclick="doSearch();"
                           class="easyui-linkbutton" style="padding: 0 10px">查询</a>

                        <a id="cleanBtn" href="javascript:void(0);" onclick="clean();"
                           class="easyui-linkbutton" style="padding: 0 10px">清空</a>
                    </td>
                    <td></td>
                </tr>

            </table>
        </form>
    </div>

    <!--上下距间-->
    <div class="easyui-layout" style="height: 10px"></div>
    <div class="line"></div>
    <!--gap-->
    <div class="easyui-layout" style="height: 10px"></div>
    <div class="easyui-layout" style="height: 443px; padding: 10px">
        <table id="getList">
        </table>
    </div>
</div>

</body>
</html>