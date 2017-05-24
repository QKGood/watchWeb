/**
 * Created by xiao-kang on 2017/3/21.
 */
var src = '';
function showAddWatchWin(){
    getCombox("add");

    $("#addWin").window("open");// 打开指定的window， open表示打开，close表示关闭
    $('#size').combobox('setValue',"40");
    $("#function").combobox('setValue','三针计时');
    $("#table").combobox("setValue",'定制复刻');
    $("#colour").combobox("setValue",'典雅白色');
    $("#lens").combobox('setValue','耐磨蓝宝石');

}


function showEditWatchWin(){
    var rows = $("#list").datagrid("getSelections");
    getCombox("edit");
    if(rows.length  > 1 ){
        $.messager.alert("提示","请选择一个要修改的产品","info");
    }else if(rows.length == 1){
        var row = rows[0];
        if(row){
            getComboxValue(row)
            src = row;
            $("#editForm").form("load", row);
            $("#editWin").window("open");
        }
    }else if(rows.length == 0){
        $.messager.alert("提示","请选择一个要修改的产品","info");
    }

}

function showEditWatchWin1(index){
    var row = $('#list').datagrid('getData').rows[index];
    if(row){
        getCombox("edit");
        getComboxValue(row)
        src = row;
        $("#editForm").form("load", row);
        $("#editWin").window("open");
    }

}

function addWatch() {
    if($("#addForm").form("validate")){
            $('#addForm').ajaxSubmit({
                url:'/watch/add_watch',
                type:'post',
                dataType: 'json',
                success: function (data) {
                    if (data.result == "success") {
                        $("#addWin").window("close");
                        $("#list").datagrid("reload");
                        $("#addForm").form("clear");

                        $.messager.alert("提示",data.message,"info");
                    } else if(data.result == "fail"){
                        $.messager.alert("提示",data.message,"info");

                    }
                }
            });
    }else{
        $.messager.alert("提示","请输人正确的数据","info");
    }
}


function editWatch(){
    if($("#editForm").form("validate")){
        $('#editForm').ajaxSubmit({
            url:'/watch/update_watch',
            type:'post',
            dataType: 'json',
            success: function (data) {
                if (data.result == "success") {
                    $("#editWin").window("close");
                    $("#list").datagrid("reload");
                    $("#editForm").form("clear");
                    $.messager.alert("提示",data.message,"info");
                } else if(data.result == "fail"){
                    $.messager.alert("提示",data.message,"info");

                }
            }
        });
    }else{
        $.messager.alert("提示","请输人正确的数据","info");
    }

}
function removeWatch(){
    var rows = $("#list").datagrid("getSelections");
    if(rows.length > 0){
        var ids = "";
        for(var i = 0, len = rows.length; i < len; i++){
            if(ids == ""){
                ids = rows[i].id;
            }else{
                ids += ","+rows[i].id
            }
        }
        if(ids != ""){
            $.messager.confirm('提示', '确定要删除吗?', function(r){
                if (r){
                    $.get("/watch/deleteById?ids=" + ids,
                        function(data){
                            $("#list").datagrid("reload"); // 重新加载指定数据网格数据
                        },"json");
                }
            });
        }
    }else{
        $.messager.alert("提示","请选中想要删除的产品","info");
    }
}

function removeWatch1(index){
    var row = $('#list').datagrid('getData').rows[index];
    if(row){
        $.messager.confirm('提示', '确定要删除吗?', function(r){
            if (r){
                $.get("/watch/deleteById?ids=" + row.id,
                    function(data){
                        $("#list").datagrid("reload"); // 重新加载指定数据网格数据
                    },"json");
            }
        });
    }else{
        $.messager.alert("提示","请选中想要删除的产品","info");
    }
}

function formatterOpt(value,row,index){
    return "<a href = 'javascript:;'onclick = 'showEditWatchWin1("+index+")'>编辑</a>&nbsp&nbsp"+
        "<a href = 'javascript:;' onclick = 'removeWatch1("+index+")'>删除</a>";
}
// 显示品牌，材质，机芯，等描述
function showDes(value){
    return value.des;
}


function getCombox(id){
    //类型下拉菜单的级联查询
    $.get("/brand/query_brand",
        function(data){
            $("#"+id+"Brand").combobox("loadData", data);
        }, "json");

    $.get("/material/query_material",
        function(data){
            $("#"+id+"Material").combobox("loadData", data);
        }, "json");

    $.get("/core/query_core",
        function(data){
            $("#"+id+"Core").combobox("loadData", data);
        }, "json");

    $.get("/origin/query_origin",
        function(data){
            $("#"+id+"Origin").combobox("loadData", data);
        }, "json");

    $.get("/style/query_style",
        function(data){
            $("#"+id+"Style").combobox("loadData", data);
        }, "json");

}

// 根据标题和品牌并分页查询手表
function queryByTitle(){
    var brand = $("#brand").combobox('getValue');
    var title = $("#title").val();
    if (title != "" || brand != "") {
        $.get("/watch/query_pager?page=1&rows=20&brand=" + brand + "&title="+title,
            function(data) {
                $("#list").datagrid("loadData", data.rows);// 重新加载指定数据网格数据
            }, "json");
    }
}

function queryByPage(){
    $.get("/watch/query_pager?page=1&rows=20",
        function(data){
            $('#list').datagrid('loadData',data.rows); // 重新加载数据表
        },"json");
}

function getComboxValue(row){
    $("#editBrand").combobox("setValue",row.brand.id);
    $("#editCore").combobox("setValue",row.core.id);
    $("#editOrigin").combobox("setValue",row.origin.id);
    $("#editStyle").combobox("setValue",row.style.id);
    $("#editMaterial").combobox("setValue",row.material.id);
}

function showVideo(){
    $("#showVideoWin").window("open");
    $("#video").attr("src","/"+src.video);
}

function showImg(){
    var rows = $("#list").datagrid("getSelections");
    if(rows.length  > 1 ){
        $.messager.alert("提示","请选择一个要修改的产品","info");
    }else if(rows.length == 1){
        var row = rows[0];
        if(row){
            $("#showImgWin").window("open");
            $("#img").attr("src","/"+row.image);
            $("#img1").attr("src","/"+row.image1);
            $("#img2").attr("src","/"+row.image2);
            $("#img3").attr("src","/"+row.image3);
            $("#img4").attr("src","/"+row.image4);
            $("#img5").attr("src","/"+row.image5);
            $("#img6").attr("src","/"+row.image6);
            $("#img7").attr("src","/"+row.image7);
            $("#img8").attr("src","/"+row.image8);
            $("#imgForm").form("load", row);
        }
    }else if(rows.length == 0){
        $.messager.alert("提示","请选择一个要修改的产品","info");
    }

}

function editImg(){
        $('#imgForm').ajaxSubmit({
            url: '/watch/update_watchImg',
            type: 'post',
            dataType: 'json',
            success: function (data) {
                if (data.result == "success") {
                    $("#showImgWin").window("close");
                    $("#list").datagrid("reload");
                    $("#imgForm").form("clear");
                    $.messager.alert("提示", data.message, "info");
                } else if (data.result == "fail") {
                    $.messager.alert("提示", data.message, "info");

                }
            }
        });

}