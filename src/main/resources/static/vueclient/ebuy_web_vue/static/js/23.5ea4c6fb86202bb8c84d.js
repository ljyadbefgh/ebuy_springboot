webpackJsonp([23],{lmfZ:function(e,r,t){"use strict";Object.defineProperty(r,"__esModule",{value:!0});var o={render:function(){var e=this,r=e.$createElement,t=e._self._c||r;return t("div",[t("el-form",{ref:"ruleForm",staticClass:"login-container",attrs:{model:e.loginForm,"status-icon":"",rules:e.rules,"label-width":"100px","label-position":"left"}},[t("h3",{staticClass:"login_title"},[e._v("订餐系统后台登陆")]),e._v(" "),t("el-form-item",{attrs:{label:"账户名",prop:"username"}},[t("el-input",{attrs:{autocomplete:"off"},model:{value:e.loginForm.username,callback:function(r){e.$set(e.loginForm,"username",r)},expression:"loginForm.username"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"密码",prop:"password"}},[t("el-input",{attrs:{"show-password":"",autocomplete:"off"},model:{value:e.loginForm.password,callback:function(r){e.$set(e.loginForm,"password",r)},expression:"loginForm.password"}})],1),e._v(" "),t("el-form-item",[t("el-button",{attrs:{type:"primary",loading:e.loadingButton},on:{click:function(r){return e.submitForm("ruleForm")}}},[e._v("登陆")])],1)],1)],1)},staticRenderFns:[]};var s=t("VU/8")({name:"Login",data:function(){return{loadingButton:!1,loginForm:{username:"vistor",password:"123456"},rules:{username:[{required:!0,message:"请输入账户名",trigger:"blur"},{min:3,max:10,message:"账户名长度必须在3-10个字符之间",trigger:"blur"}],password:[{required:!0,message:"请输入密码",trigger:"blur"},{min:6,max:12,message:"密码长度必须在6-12个字符之间",trigger:"blur"}]}}},methods:{submitForm:function(e){var r=this;this.$refs[e].validate(function(e){if(!e)return!1;r.loadingButton=!0,r.$axios.get(r.API.API_URL_BACKSTAGE_ADMIN_LOGIN,{params:{username:r.loginForm.username,password:r.loginForm.password}}).then(function(e){0==e.data.code?(r.$store.commit("save_admin",r.loginForm.username),r.$message({message:"登陆成功",type:"success"}),r.$router.push("admin")):r.loadingButton=!1}).catch(function(e){r.loadingButton=!1})})},resetForm:function(e){this.$refs[e].resetFields()}}},o,!1,function(e){t("mVT7")},"data-v-04a486ba",null);r.default=s.exports},mVT7:function(e,r){}});