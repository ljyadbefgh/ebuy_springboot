webpackJsonp([8],{"E+hc":function(t,e){},SXp4:function(t,e,n){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var a={render:function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"index"},[n("el-card",{staticClass:"box-card",staticStyle:{"text-align":"left"}},[n("div",{staticClass:"clearfix",attrs:{slot:"header"},slot:"header"},[n("span",[t._v("账户信息")])]),t._v(" "),n("div",{staticClass:"text item"},[t._v("\n      账户名:"+t._s(t.admin.username)+"\n    ")]),t._v(" "),n("div",{staticClass:"text item"},[t._v("\n      姓名:"+t._s(t.admin.name)+"\n    ")]),t._v(" "),n("div",{staticClass:"text item"},[t._v("\n      性别:\n      "),1==t.admin.sex?[t._v("\n        男\n      ")]:[t._v("\n        女\n      ")]],2),t._v(" "),n("div",{staticClass:"text item tag-group"},[t._v("\n      角色数量:\n      "),t._v(" "),t._l(t.admin.roles,function(e){return n("el-tag",{key:e.id,staticStyle:{"margin-right":"5px"},attrs:{type:"primary",effect:"dark"}},[t._v("\n        "+t._s(e.nameZH)+"\n      ")])})],2),t._v(" "),n("div",{staticClass:"text item"},[t._v("\n      发布产品数量:"+t._s(t.admin.saveProductNumber)+"\n    ")]),t._v(" "),n("div",{staticClass:"text item"},[t._v("\n      注册时间:"+t._s(t.admin.createTime)+"\n    ")])])],1)},staticRenderFns:[]};var i=n("VU/8")({name:"AdminInfomation",data:function(){return{admin:""}},methods:{getMyAdmin:function(){var t=this;this.$axios.get(this.API.API_URL_BACKSTAGE_ADMIN).then(function(e){var n=e.data;0===n.code&&(t.admin=n.data)})}},mounted:function(){this.getMyAdmin()}},a,!1,function(t){n("E+hc")},"data-v-b14e645e",null);e.default=i.exports}});