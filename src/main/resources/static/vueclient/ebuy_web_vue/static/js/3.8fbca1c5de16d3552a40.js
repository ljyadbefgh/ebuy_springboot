webpackJsonp([3],{K6Pu:function(t,e){},mlqX:function(t,e,n){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var i={name:"Index",components:{SideMeuns:function(){return n.e(56).then(n.bind(null,"Wl+z"))}},data:function(){return{menus:[],activeIndex2:"1"}},methods:{handleCommand:function(t){var e=this;"admin_detail"==t?"/admin"!=this.$route.path&&this.$router.push("/admin/admin/AdminInfomation"):"AdminEdit"==t?this.$router.push("/admin/admin/AdminEdit"):"PasswordEdit"==t?this.$router.push("/admin/admin/PasswordEdit"):"admin_logout"==t&&this.$axios.get(this.API.API_URL_BACKSTAGE_ADMIN_LOGOUT).then(function(t){0==t.data.code&&(e.$message({message:"成功注销",type:"success"}),e.$store.commit("logout_admin"),e.$router.push("/login"))})},handleSelect:function(t,e){},initMenus:function(){var t=this;this.$axios.get("/api/backstage/admin/treeMenu").then(function(e){var n=e.data;0==n.code&&(t.menus=n.data)})}},mounted:function(){this.initMenus()}},a={render:function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"index"},[n("el-container",{staticClass:"main",staticStyle:{height:"500px",border:"1px solid #eee"}},[n("el-aside",{attrs:{width:"200px",align:"left"}},[n("el-menu",{attrs:{router:"","background-color":"#304156","text-color":"#fff","active-text-color":"#409eff"}},[n("side-Meuns",{attrs:{menus:this.menus}})],1)],1),t._v(" "),n("el-container",[n("el-header",{staticStyle:{"text-align":"right","font-size":"12px"}},[n("el-menu",{staticClass:"el-menu-demo",attrs:{"default-active":t.activeIndex2,mode:"horizontal",router:""},on:{select:t.handleSelect}},[n("el-menu-item",{attrs:{index:"1",route:"/admin"}},[t._v("首页")]),t._v(" "),n("el-submenu",{attrs:{index:"2"}},[n("template",{slot:"title"},[t._v("我的工作台")]),t._v(" "),n("el-menu-item",{attrs:{index:"2-1",route:"/admin/admin/PasswordEdit"}},[t._v("密码修改")]),t._v(" "),n("el-menu-item",{attrs:{index:"2-2"}},[t._v("选项2")]),t._v(" "),n("el-menu-item",{attrs:{index:"2-3"}},[t._v("选项3")]),t._v(" "),n("el-submenu",{attrs:{index:"2-4"}},[n("template",{slot:"title"},[t._v("选项4")]),t._v(" "),n("el-menu-item",{attrs:{index:"2-4-1"}},[t._v("选项1")]),t._v(" "),n("el-menu-item",{attrs:{index:"2-4-2"}},[t._v("选项2")]),t._v(" "),n("el-menu-item",{attrs:{index:"2-4-3"}},[t._v("选项3")])],2)],2),t._v(" "),n("el-menu-item",[n("a",{attrs:{href:"http://120.76.118.101:8081/swagger-ui.html",target:"_blank"}},[t._v("订餐系统后端API文档")])]),t._v(" "),n("el-badge",{staticClass:"item",staticStyle:{"margin-right":"10px"},attrs:{value:2}},[n("el-button",{attrs:{size:"small"}},[t._v("系统消息")])],1),t._v(" "),n("el-dropdown",{staticStyle:{"line-height":"60px"},attrs:{size:"small"},on:{command:t.handleCommand}},[n("el-button",{attrs:{icon:"el-icon-user-solid",size:"small"}},[t._v(t._s(t.$store.getters.admin)),n("i",{staticClass:"el-icon-arrow-down el-icon--right"})]),t._v(" "),n("el-dropdown-menu",[n("el-dropdown-item",{attrs:{command:"admin_detail"}},[t._v("个人资料")]),t._v(" "),n("el-dropdown-item",{attrs:{command:"AdminEdit"}},[t._v("基本信息编辑")]),t._v(" "),n("el-dropdown-item",{attrs:{command:"PasswordEdit"}},[t._v("密码修改")]),t._v(" "),n("el-dropdown-item",{attrs:{command:"admin_logout",divided:""}},[t._v("退出")])],1)],1)],1)],1),t._v(" "),n("MyBreadcrumb"),t._v(" "),n("el-main",{staticClass:"loading-area"},[n("router-view")],1)],1)],1)],1)},staticRenderFns:[]};var s=n("VU/8")(i,a,!1,function(t){n("K6Pu")},null,null);e.default=s.exports}});