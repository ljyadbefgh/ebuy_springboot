webpackJsonp([59],{FPsf:function(e,a){},QkSz:function(e,a,o){"use strict";Object.defineProperty(a,"__esModule",{value:!0});var i=o("mvHQ"),r=o.n(i),n={name:"AdminEdit",props:{roles:{type:Array,default:function(){return[]}}},data:function(){return{id:"",dialogFormVisible:!1,loading:!1,adminForm:{roleIds:[]},rules:{username:[{required:!0,message:"不能为空",trigger:"blur"},{min:3,max:10,message:"长度在 3 到 10个字符",trigger:"blur"},{pattern:/^[A-Za-z0-9\u4e00-\u9fa5]+$/,message:"不允许输入空格等特殊符号"}],name:[{required:!0,message:"不能为空",trigger:"blur"},{max:8,message:"长度不能超过8个字符",trigger:"blur"}],sex:[{required:!0,message:"请选择性别",trigger:"change"}],roleIds:[{type:"array",required:!0,message:"请至少选择一个角色",trigger:"change"}]}}},methods:{openDialog:function(e){this.dialogFormVisible=!0,this.id=e},closeDialog:function(){this.dialogFormVisible=!1},openDialogChecked:function(){var e=this;""==this.id?(this.closeDialog(),this.$message.error("没有接收到要编辑的账户信息")):(this.loading=!0,this.$axios.get(this.API.API_URL_BACKSTAGE_ADMIN_MANAGE+"/"+this.id).then(function(a){e.loading=!1;var o=a.data;if(0===o.code){e.adminForm=o.data,e.adminForm.roleIds=new Array;for(var i=0;i<e.adminForm.roles.length;i++)e.adminForm.roleIds.push(e.adminForm.roles[i].id);e.adminForm.sex=String(e.adminForm.sex)}}).catch(function(a){e.loading=!1}))},closeDailogClean:function(){this.$refs.adminForm.resetFields()},submitForm:function(e){var a=this;this.$refs[e].validate(function(e){if(!e)return!1;a.loading=!0,a.$axios.put("/api/backstage/adminmanage",r()(a.adminForm)).then(function(e){a.loading=!1;var o=e.data;0===o.code&&(a.$message({type:"success",message:o.msg}),a.$emit("adminTableRefresh"),a.closeDialog())}).catch(function(e){a.loading=!1})})}}},t={render:function(){var e=this,a=e.$createElement,o=e._self._c||a;return o("el-dialog",{attrs:{title:"管理员修改","destroy-on-close":"",visible:e.dialogFormVisible,"close-on-click-modal":!1,"close-on-press-escape":0==e.loading,"show-close":0==e.loading,width:"500px"},on:{"update:visible":function(a){e.dialogFormVisible=a},opened:e.openDialogChecked,closed:e.closeDailogClean}},[o("el-form",{ref:"adminForm",attrs:{model:e.adminForm,rules:e.rules,"label-width":"80px"}},[o("el-form-item",{attrs:{label:"账户名",prop:"username"}},[o("el-input",{model:{value:e.adminForm.username,callback:function(a){e.$set(e.adminForm,"username",a)},expression:"adminForm.username"}})],1),e._v(" "),o("el-form-item",{attrs:{label:"网名",prop:"name"}},[o("el-input",{model:{value:e.adminForm.name,callback:function(a){e.$set(e.adminForm,"name",a)},expression:"adminForm.name"}})],1),e._v(" "),o("el-form-item",{staticStyle:{"text-align":"left"},attrs:{label:"性别",prop:"sex"}},[o("el-radio-group",{model:{value:e.adminForm.sex,callback:function(a){e.$set(e.adminForm,"sex",a)},expression:"adminForm.sex"}},[o("el-radio-button",{attrs:{label:"1"}},[e._v("男")]),e._v(" "),o("el-radio-button",{attrs:{label:"2"}},[e._v("女")])],1)],1),e._v(" "),o("el-form-item",{attrs:{label:"角色",align:"left",prop:"roleIds"}},[o("el-checkbox-group",{model:{value:e.adminForm.roleIds,callback:function(a){e.$set(e.adminForm,"roleIds",a)},expression:"adminForm.roleIds"}},e._l(e.roles,function(a){return o("el-checkbox",{key:a.nameZH,attrs:{label:a.id,name:"roleIds"}},[e._v(e._s(a.nameZH))])}),1)],1)],1),e._v(" "),o("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[o("el-button",{attrs:{loading:e.loading},on:{click:function(a){e.dialogFormVisible=!1}}},[e._v("取 消")]),e._v(" "),o("el-button",{attrs:{type:"primary",loading:e.loading},on:{click:function(a){return e.submitForm("adminForm")}}},[e._v("确认修改")])],1)],1)},staticRenderFns:[]};var s=o("VU/8")(n,t,!1,function(e){o("FPsf")},"data-v-7d5db370",null);a.default=s.exports}});