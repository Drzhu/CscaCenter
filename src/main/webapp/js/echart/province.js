/**
 * 
 */

function x_bar(legend_name, x_catalog, y_data,areaname) {
	var option = {
		tooltip: {trigger: 'axis',
			},
		grid: {
			top:25,
			bottom:50
		},
		legend: {
			top:-5,
			data: legend_name
		},
		xAxis: [{
			type: 'category',
			data: x_catalog,
		}],
		yAxis: [{
			type: 'value',
		}],
		series: [{
			name: legend_name[0],
			type: 'bar',
			itemStyle:{
   				normal: {
   					color: function(params) {
   						var key = params.name.replace(/<\/?.+?>/g,"").replace(/[\r\n]/g, "");
                   if(key  == areaname){
                	see =params.dataIndex;
                   	return "#FE8463";	
                   }else{
                   	return "#4278B8";	
                   }
   					}
   				}
   			},
			data: y_data
		}]
	};
	return option;
}

function map_mix(data,max,avg){
	var option = {
			tooltip: {
				trigger : 'item'
			},
			legend : {
				show:false,
				orient : 'vertical',
				x : 'left',
				data : [ '复合指标' ]
			},
			visualMap : {
				type :'piecewise',
				x : 'left',
				y : 'bottom',
				precision :3,
				color : ['#9BCA63','#F6BA40'],
				//color : ['#639B4A','#F2A941'],
				 textStyle: {
			            color: '#000'
			        },
				pieces: [
				         {min: 0, max: avg,label: '低于于国家复合指标'},
				         {min: avg, max: max, label: '高于国家复合指标'},
				         {value: avg, label: '国家复合指标平均值('+avg+')', color: '#FE8463'}, // 表示 value 等于 123 的情况。
				     ],
				calculable : true
			},
			series: [{
				name:'复合指标',
				type: 'map',
				mapType: 'china',
				data:data,
				layoutCenter: ['30%', '50%'],
				zoom :1.2,
				showLegendSymbol : false,
				label :{
					normal :{
						show:true,
						formatter:function(params){
							if(params.name == '南海诸岛' || params.name == '台湾' || params.name == '澳门' || params.name == '香港'){
								return " ";
							}else{
							return params.name+"\r\n"+params.value;	
							}
						},
						textStyle :{
							fontSize :10,
						}	
					}
				},
			}]
		}
	return option;
}
function map_bingli(data,max){
	var option = {
			tooltip: {
				
				trigger : 'item'
			},
			legend : {
				orient : 'vertical',
				x : 'left',
				data : [ '病例数' ]
			},
			visualMap : {
				min : 0,
				max : max,
				x : 'left',
				y : 'bottom',
				color : ['#5BB2EF','#E0FFFF'],
				text : [ '高', '低' ], // 文本，默认为数值文本
				calculable : true
			},
			series: [{
				name:'病例数',
				type: 'map',
				mapType: 'china',
				data:data,
				layoutCenter: ['30%', '50%'],
				zoom :1.25,
				showLegendSymbol : false,
				itemStyle: {
					normal: {
						label: {
							show: true,
							formatter:function(params){
								if(params.name == '南海诸岛' || params.name == '台湾' || params.name == '澳门' || params.name == '香港'){
									return " ";
								}else{
								return params.name+"\r\n"+params.value;	
								}
							},
							textStyle :{
								fontSize :10,
							}
						}
					},
					emphasis: {
						label: {
							show: true
						}
					}
				},
			}]
		}
	return option;
}
function pie(legend_data, data) {
	var option = {
		tooltip: {
			formatter: function(params, ticket, callback) {
				return params.name + " :<br/> " + params.value + " (" + params.percent + "%)";
			}
		},
		legend: {
			orient: 'vertical',
			right: 40,
			data: legend_data
		},
		series: [{
			name: '病例数量',
			type: 'pie',
			radius: '75%',
			center: ['50%', '50%'],
			data: data,
			itemStyle: {
				normal: {
					label: {
						formatter: function(params, ticket, callback) {
							return params.name + ":\r\n" + params.value + " (" + params.percent + "%)";
						}
					},
				}
			}
		}]
	};
	return option;
}

/*y轴为三类轴的柱状图*/
function y_3_bar(legend_data, y_3_catalog, data01, data02, data03) {
	var option = {
		color:['#477EA8', '#639B4A', '#F2A941'],
		tooltip: {
			formatter: '{b}<br/>{a} : {c}%'
		},
		grid: {
			top:30,
			bottom:70,
			left:250,
			right:50
		},
		legend: {
			data: legend_data
		},
		xAxis: [{
			type: 'value',
			axisLabel: {
				show: true,
				interval: 'auto',
				formatter: '{value} %'
			},
			axisTick : {
				show :true,
			},
			splitLine :{
				show :true,
			}
		}],
		yAxis: [{
			type: 'category',
			data: y_3_catalog,

		}],
		label: {
			normal: {
				show: true,
				formatter: '{c}%',
				position: 'right',
			},
			textStyle: {
				fontSize: 8,
			}
		},
		
		series: [{
			name: legend_data[0],
			type: 'bar',
			data: data01
		}, {
			name: legend_data[1],
			type: 'bar',
			data: data02
		}, {
			name: legend_data[2],
			type: 'bar',
			barGap : '10%',
			data: data03,
		}],
	};
	return option;
}

/*y轴为二类轴的柱状图*/
function y_2_bar(legend_data, y_2_catalog, data01, data02) {
	var option = {
		color:['#6DA156', '#F3AD4B'],
		tooltip: {
			formatter: '{b}<br/>{a} : {c}%'
		},
		grid: {
			top:30,
			bottom:70,
			left:250,
			right:50
		},
		legend: {
			data: legend_data
		},
		xAxis: [{
			type: 'value',
			axisLabel: {
				show: true,
				interval: 'auto',
				formatter: '{value} %'
			}
		}],
		yAxis: [{
			type: 'category',
			data: y_2_catalog,

		}],
		label: {
			normal: {
				show: true,
				formatter: '{c}%',
				position: 'right',
			},
			textStyle: {
				fontSize: 8,
			}
		},
		
		series: [{
			name: legend_data[0],
			type: 'bar',
			data: data01
		}, {
			name: legend_data[1],
			type: 'bar',
			barGap : '10%',
			data: data02
		}]
	};
	return option;
}