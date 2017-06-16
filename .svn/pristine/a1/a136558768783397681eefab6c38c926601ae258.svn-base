 $(function() {
	$('#hos_info')
			.DataTable(
					{
						'order': [[0, "desc"]],//表格初始化，默认第一列降序
						columnDefs:[{
						　　　　'targets' : [5,6,7,8],  //除前五列外，都默认不排序
						　　　　'orderable' : false
						}],
						'lengthChange' : false,
						'bdestroy' : true,
						'bRetrieve' : true,
						'searching' :false,
						'aoColumns' : [ {
							name:"HName",
							title : "医院名称",
							width : "9%"
						}, {
							name:"AreaName",
							title : "所属省份",
							width : "5%"
						}, {
							name:"City",
							title : "所属地市",
							width : "5%"
						}, {
							name:"HLevel",
							title : "医院级别",
							width : "5%"
						}, {
							name:"czlevel",
							title : "卒中中心级别",
							width : "8%"
						}, 	{
							name:"czlevel",
							title : "卒中中心<br/>主任姓名",
							width : "8%"
						}, {
							title : "卒中中心<br/>主任电话",
							width : "8%"
						}, {
							title : "卒中中心<br/>主任邮箱",
							width : "8%"
						}, {
							title : "授牌时间",
							width : "8%"
						}, {
							name:"Utype",
							title : "累计上报<br/>病例数",
							width : "8%"
						}, {
							name:"LinkTel",
							title : "平均上报<br/>病例数/月",
							width : "8%"
						}, ],
						"serverSide" : true,
						"ajax": {
				            "url": "hos_datatable",
				            "data": function ( d ) {
				            	d.areaname = $("#areaname").val();
				            	d.timespan = $("#timespan").val();
				            	d.start_time = $("#datetimepicker1").val();
				            	d.end_time = $("#datetimepicker2").val();
				            }
						},
						'language' : {
							'emptyTable' : '没有数据',
							'loadingRecords' : '加载中...',
							'processing' : '查询中...',
							'search' : '<i class="fa fa-search" style="position:absolute; margin:30px 10px; color:#4f9cde;"></i>',
							'lengthMenu' : '每页 _MENU_ 条',
							'zeroRecords' : '没有数据',
							'paginate' : {
								'first' : '首页',
								'last' : '末页',
								'next' : '下页',
								'previous' : '上页'
							},
							'info' : "第 _PAGE_ 页 / 总 _PAGES_ 页，共 _TOTAL_ 条数据",
							'infoEmpty' : '没有数据',
							'infoFiltered' : '(过滤总数 _MAX_ 条)'
						}
					});
	
				/*$("#hos_info thead").attr("name","tabName");*/
	
});