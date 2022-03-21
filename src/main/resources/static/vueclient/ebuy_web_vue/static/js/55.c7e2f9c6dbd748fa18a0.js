webpackJsonp([55],{IbnA:function(e,a){},U1HS:function(e,a,n){"use strict";Object.defineProperty(a,"__esModule",{value:!0});var o=n("mvHQ"),i=n.n(o),t={name:"AdminRoleBatchOperation",props:{adminRows:{type:Array,default:function(){return[]}},roles:{type:Array,default:function(){return[]}}},data:function(){return{dialogFormVisible:!1,loading:!1,adminForm:{adminIds:[],roleIds:[]},rules:{adminIds:[{type:"array",required:!0,message:"请至少选择一个账户",trigger:"change"}],roleIds:[{type:"array",required:!0,message:"请至少选择一个角色",trigger:"change"}]}}},methods:{openDialog:function(){this.adminForm.roleIds=[],this.adminForm.adminIds=[],this.dialogFormVisible=!0;for(var e=0;e<this.adminRows.length;e++)this.adminForm.adminIds.push(this.adminRows[e].id)},closeDialog:function(){this.dialogFormVisible=!1},addRolesToAdmins:function(e){var a=this;this.$refs[e].validate(function(e){if(!e)return!1;a.loading=!0,a.$axios.post("/api/backstage/adminmanage/adminRoleRelationManage/addRolesForAdmins",i()(a.adminForm)).then(function(e){a.loading=!1,0===e.data.code&&(a.$message({type:"success",message:"操作成功"}),a.closeDialog(),a.$emit("adminTableRefresh"))}).catch(function(e){a.loading=!1})})},removeRolesFromAdmins:function(e){var a=this;this.$refs[e].validate(function(e){if(!e)return!1;a.loading=!0,a.$axios.delete("/api/backstage/adminmanage/adminRoleRelationManage/removeRolesFromAdmins",{data:a.adminForm}).then(function(e){a.loading=!1,0===e.data.code&&(a.$message({type:"success",message:"操作成功"}),a.closeDialog(),a.$emit("adminTableRefresh"))}).catch(function(e){a.loading=!1})})}}},s={render:function(){var e=this,a=e.$createElement,n=e._self._c||a;return n("el-dialog",{attrs:{title:"为选择的账户赋予相应的角色",visible:e.dialogFormVisible,"destroy-on-close":"","close-on-click-modal":!1,"close-on-press-escape":0==e.loading,"show-close":0==e.loading,width:"600"},on:{"update:visible":function(a){e.dialogFormVisible=a}}},[n("el-form",{ref:"adminForm",attrs:{model:e.adminForm,rules:e.rules,"label-width":"80px"}},[n("el-form-item",{attrs:{label:"账户名",prop:"adminIds",align:"left"}},[n("el-checkbox-group",{model:{value:e.adminForm.adminIds,callback:function(a){e.$set(e.adminForm,"adminIds",a)},expression:"adminForm.adminIds"}},e._l(e.adminRows,function(a){return n("el-checkbox",{key:a.username,attrs:{label:a.id,name:"adminIds"}},[e._v(e._s(a.username))])}),1)],1),e._v(" "),n("el-form-item",{attrs:{label:"角色",align:"left",prop:"roleIds"}},[n("el-checkbox-group",{model:{value:e.adminForm.roleIds,callback:function(a){e.$set(e.adminForm,"roleIds",a)},expression:"adminForm.roleIds"}},e._l(e.roles,function(a){return n("el-checkbox",{key:a.nameZH,attrs:{label:a.id,disabled:0==a.enabled,name:"roleIds"}},[e._v(e._s(a.nameZH))])}),1)],1)],1),e._v(" "),n("div",{staticClass:"dialog-footer",attrs:{slot:"footer",align:"center"},slot:"footer"},[n("el-button",{attrs:{type:"primary",loading:e.loading},on:{click:function(a){return e.addRolesToAdmins("adminForm")}}},[e._v("批量赋予角色")]),e._v(" "),n("el-button",{attrs:{type:"danger",loading:e.loading},on:{click:function(a){return e.removeRolesFromAdmins("adminForm")}}},[e._v("批量移除角色")])],1)],1)},staticRenderFns:[]};var r=n("VU/8")(t,s,!1,function(e){n("IbnA")},"data-v-c2791194",null);a.default=r.exports}});