webpackJsonp([60],{Ac6s:function(t,e,i){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var a={render:function(){var t=this.$createElement,e=this._self._c||t;return e("div",[e("el-card",{staticStyle:{height:"120px",overflow:"hidden","background-color":"#64b0f2",color:"#fff"},attrs:{shadow:"hover"}},[e("i",{staticClass:"el-icon-user-solid",staticStyle:{float:"left","font-size":"70px"}}),this._v(" "),e("div",{staticStyle:{float:"right","margin-top":"5px"}},[e("div",[e("span",{staticStyle:{color:"#fff","font-size":"16px","font-weight":"bold"}},[this._v("管理账户数")])]),this._v(" "),e("div",{staticStyle:{"margin-top":"10px"}},[e("span",{staticStyle:{color:"#fff","font-size":"20px"}},[this._v(this._s(this.number))])])])])],1)},staticRenderFns:[]};var n=i("VU/8")({name:"AdminCount",data:function(){return{fit:"fill",number:""}},methods:{getData:function(){var t=this;this.$axios.get("/api/backstage/adminmanage/total").then(function(e){var i=e.data;0===i.code?t.number=i.data:t.number="-"})}},mounted:function(){this.getData()}},a,!1,function(t){i("M+eM")},"data-v-7a6c56e8",null);e.default=n.exports},"M+eM":function(t,e){}});