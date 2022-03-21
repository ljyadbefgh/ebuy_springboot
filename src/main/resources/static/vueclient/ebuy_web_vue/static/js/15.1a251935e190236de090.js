webpackJsonp([15],{DwM8:function(t,e){},qYEA:function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var l={name:"ProductTypeManage",components:{ProductTypeAdd:function(){return a.e(41).then(a.bind(null,"tPxr"))},ProductTypeEdit:function(){return a.e(33).then(a.bind(null,"UQ15"))},ProductTypeLogoUpload:function(){return a.e(58).then(a.bind(null,"W8Bm"))}},data:function(){return{disabled:!0,table:{tableData:[],limit:20,page:1,total:0,hideOnSinglePage:!1},multipleSelection:[],productTypeQuery:{name:null}}},methods:{getTableData:function(){var t=this;this.$axios.get("/api/backstage/producttype",{params:{page:this.table.page,limit:this.table.limit,name:this.productTypeQuery.name}}).then(function(e){var a=e.data;0===a.code&&(t.table.tableData=a.data,t.table.tableData.forEach(function(t){null!=t.imageUrl&&""!=t.imageUrl&&(t.imageUrl=t.imageUrl+"?"+Math.random())}),t.table.total=a.count)})},handleCurrentChange:function(t){this.table.page=t,this.getTableData()},handleSizeChange:function(t){this.table.limit=t,this.getTableData()},handleSelectionChange:function(t){this.multipleSelection=t,this.multipleSelection.length>0?this.disabled=!1:this.disabled=!0},checkSelection:function(){if(this.multipleSelection.length>0)return!0;this.$message.error("请先选择数据")},handleDelete:function(){var t=this;if(this.checkSelection()){var e=this.multipleSelection.length;this.$confirm(" 确定要批量删除这"+e+"个产品类别信息吗？","系统提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(function(){for(var e=[],a=0;a<t.multipleSelection.length;a++)e.push(t.multipleSelection[a].id);t.$axios.delete("/api/backstage/producttype/"+e.toString()).then(function(e){0===e.data.code&&t.getTableData()})}).catch(function(t){})}},edit:function(t){this.$refs.customerEditForm.openDialog(t)},uploadPhoto:function(t){this.$refs.customerPhotoUpload.openDialog(t)}},mounted:function(){this.getTableData()}},n={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",[a("div",{staticClass:"item"},[a("el-form",{staticClass:"demo-form-inline",staticStyle:{"text-align":"left"},attrs:{model:t.productTypeQuery,inline:!0}},[a("el-form-item",{attrs:{label:"产品类别名"}},[a("el-input",{attrs:{placeholder:"产品类别名称"},model:{value:t.productTypeQuery.name,callback:function(e){t.$set(t.productTypeQuery,"name",e)},expression:"productTypeQuery.name"}})],1),t._v(" "),a("el-form-item",[a("el-button",{attrs:{type:"primary"},on:{click:t.getTableData}},[t._v("查询")])],1)],1)],1),t._v(" "),a("div",{staticClass:"item",staticStyle:{"margin-bottom":"5px"},attrs:{align:"left"}},[a("el-button",{attrs:{type:"primary"},on:{click:function(e){return t.$refs.productTypeAddForm.openDialog()}}},[t._v("添加")]),t._v(" "),a("el-button",{attrs:{type:"primary",disabled:t.disabled},on:{click:t.handleDelete}},[t._v("删除")])],1),t._v(" "),a("div",{staticClass:"item"},[a("el-table",{staticStyle:{width:"100%"},attrs:{data:t.table.tableData,stripe:"",border:""},on:{"selection-change":t.handleSelectionChange}},[a("el-table-column",{attrs:{type:"selection",width:"40",align:"center"}}),t._v(" "),a("el-table-column",{attrs:{width:"80",prop:"imageUrl",align:"center",label:"LOGO"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("div",{staticStyle:{display:"block",height:"30px"}},[null!=e.row.imageUrl&&""!=e.row.imageUrl?a("el-image",{staticStyle:{height:"30px"},attrs:{fit:"contain",src:e.row.imageUrl,"preview-src-list":[e.row.imageUrl]}}):a("el-image",{staticStyle:{height:"30px"},attrs:{fit:"contain",src:t.myVariable.pic.noPic4Src}})],1)]}}])}),t._v(" "),a("el-table-column",{attrs:{"show-overflow-tooltip":"",prop:"name",label:"名称"}}),t._v(" "),a("el-table-column",{attrs:{width:"70",align:"center",prop:"display",label:"前台显示"},scopedSlots:t._u([{key:"default",fn:function(e){return[1==e.row.display?a("el-tag",{attrs:{type:"success"}},[t._v("显示")]):a("el-tag",{attrs:{type:"danger"}},[t._v("隐藏")])]}}])}),t._v(" "),a("el-table-column",{attrs:{width:"60",align:"center",prop:"orderNum",label:"优先级"}}),t._v(" "),a("el-table-column",{attrs:{width:"70",align:"center",prop:"linkUrl",label:"外部链接"},scopedSlots:t._u([{key:"default",fn:function(e){return[null!=e.row.linkUrl&&""!=e.row.linkUrl?[a("el-popover",{attrs:{placement:"top",effect:"light",trigger:"hover"}},[a("el-link",{attrs:{type:"primary",href:e.row.linkUrl,target:"_blank"}},[t._v(t._s(e.row.linkUrl))]),t._v(" "),a("el-tag",{attrs:{slot:"reference",type:"danger"},slot:"reference"},[t._v("有")])],1)]:a("el-tag",[t._v("无")])]}}])}),t._v(" "),a("el-table-column",{attrs:{"show-overflow-tooltip":"","tooltip-effect":"light",prop:"summary",label:"简介"}}),t._v(" "),a("el-table-column",{attrs:{width:"60",align:"center","show-overflow-tooltip":"",prop:"productNumber",label:"产品数"}}),t._v(" "),a("el-table-column",{attrs:{fixed:"right",label:"操作",align:"center",width:"310"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("el-button",{attrs:{type:"primary",plain:"",icon:"el-icon-edit"},on:{click:function(a){return t.$refs.productTypeEditForm.openDialog(e.row.id)}}},[t._v("编辑")]),t._v(" "),a("el-button",{attrs:{type:"primary",plain:"",icon:"el-icon-user"},on:{click:function(a){return t.$refs.productTypeLogoUpload.openDialog(e.row.id)}}},[t._v("上传LOGO")])]}}])})],1)],1),t._v(" "),a("div",{staticClass:"text item"},[a("div",{staticClass:"block"},[a("el-pagination",{attrs:{background:"",layout:"prev,pager,next,total,sizes,jumper","hide-on-single-page":t.table.hideOnSinglePage,"page-sizes":[10,20,50,100],"page-size":t.table.limit,"current-page":t.table.page,total:t.table.total,"pager-count":11},on:{"size-change":t.handleSizeChange,"current-change":t.handleCurrentChange}})],1)]),t._v(" "),a("ProductTypeAdd",{ref:"productTypeAddForm",on:{tableRefresh:t.getTableData}}),t._v(" "),a("ProductTypeEdit",{ref:"productTypeEditForm",on:{tableRefresh:t.getTableData}}),t._v(" "),a("ProductTypeLogoUpload",{ref:"productTypeLogoUpload",on:{tableRefresh:t.getTableData}})],1)},staticRenderFns:[]};var i=a("VU/8")(l,n,!1,function(t){a("DwM8")},"data-v-4c704654",null);e.default=i.exports}});