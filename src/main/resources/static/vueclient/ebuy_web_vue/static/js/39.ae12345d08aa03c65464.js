webpackJsonp([39,0],{EWOR:function(e,t){},WkUo:function(e,t,o){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var r=o("mvHQ"),l=o.n(r),i={name:"ProductTransfer",components:{"el-select-producttype":function(){return o.e(26).then(o.bind(null,"IOMU"))}},props:{products:{type:Array,default:function(){return[]}}},data:function(){return{dialogFormVisible:!1,form:{productIds:[],productTypeId:""},rules:{productTypeId:[{required:!0,message:"不能为空",trigger:"blur"}]}}},methods:{openDialog:function(){this.dialogFormVisible=!0},closeDialog:function(){this.dialogFormVisible=!1},closed:function(){this.$refs.form.resetFields()},submit:function(e){var t=this;this.$refs[e].validate(function(e){if(!e)return!1;if(t.products.length>0){for(var o=0;o<t.products.length;o++)t.form.productIds.push(t.products[o].id);t.$axios.put("/api/backstage/product/productType",l()(t.form)).then(function(e){0===e.data.code&&(t.$message({type:"success",message:"操作成功"}),t.closeDialog(),t.$emit("tableRefresh"))})}else t.$message.error("请先选择产品")})}}},s={render:function(){var e=this,t=e.$createElement,o=e._self._c||t;return o("el-dialog",{attrs:{title:"批量转移产品到指定栏目","close-on-click-modal":!1,visible:e.dialogFormVisible,width:"400"},on:{"update:visible":function(t){e.dialogFormVisible=t},closed:e.closed}},[o("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"80px"}},[o("el-form-item",{attrs:{label:"产品栏目",prop:"productTypeId",align:"left"}},[o("el-select-producttype",{model:{value:e.form.productTypeId,callback:function(t){e.$set(e.form,"productTypeId",t)},expression:"form.productTypeId"}})],1)],1),e._v(" "),o("el-table",{staticStyle:{width:"100%"},attrs:{data:e.products,stripe:"",border:""}},[o("el-table-column",{attrs:{"show-overflow-tooltip":"",prop:"name",label:"产品名称"}}),e._v(" "),o("el-table-column",{attrs:{width:"100","show-overflow-tooltip":"",prop:"productType.name",label:"所属栏目"}}),e._v(" "),o("el-table-column",{attrs:{width:"80",align:"center",prop:"price",label:"现价"}}),e._v(" "),o("el-table-column",{attrs:{width:"80",align:"center",prop:"originalPrice",label:"原价"}})],1),e._v(" "),o("div",{staticClass:"dialog-footer",attrs:{slot:"footer",align:"center"},slot:"footer"},[o("el-button",{attrs:{type:"danger"},on:{click:function(t){return e.submit("form")}}},[e._v("提交")])],1)],1)},staticRenderFns:[]};var n=o("VU/8")(i,s,!1,function(e){o("EWOR")},"data-v-78e1e622",null);t.default=n.exports},mvHQ:function(e,t,o){e.exports={default:o("qkKv"),__esModule:!0}},qkKv:function(e,t,o){var r=o("FeBl"),l=r.JSON||(r.JSON={stringify:JSON.stringify});e.exports=function(e){return l.stringify.apply(l,arguments)}}});