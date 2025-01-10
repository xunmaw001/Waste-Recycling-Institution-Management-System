import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import huishoujiage from '@/views/modules/huishoujiage/list'
    import yuangong from '@/views/modules/yuangong/list'
    import yuangonggongzi from '@/views/modules/yuangonggongzi/list'
    import shebeiguihai from '@/views/modules/shebeiguihai/list'
    import shebeibaoxiu from '@/views/modules/shebeibaoxiu/list'
    import yuangongpingjia from '@/views/modules/yuangongpingjia/list'
    import yuangongrenwu from '@/views/modules/yuangongrenwu/list'
    import yuangongdaka from '@/views/modules/yuangongdaka/list'
    import shebeixinxi from '@/views/modules/shebeixinxi/list'
    import weixiuruku from '@/views/modules/weixiuruku/list'
    import menu from '@/views/modules/menu/list'
    import users from '@/views/modules/users/list'
    import sushebanchu from '@/views/modules/sushebanchu/list'
    import yuangongqingjia from '@/views/modules/yuangongqingjia/list'
    import gongzuorizhi from '@/views/modules/gongzuorizhi/list'
    import sushexinxi from '@/views/modules/sushexinxi/list'
    import xiaojiashenqing from '@/views/modules/xiaojiashenqing/list'
    import renwuhuibao from '@/views/modules/renwuhuibao/list'
    import shebeijieyong from '@/views/modules/shebeijieyong/list'
    import susheruzhu from '@/views/modules/susheruzhu/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/huishoujiage',
        name: '回收价格',
        component: huishoujiage
      }
      ,{
	path: '/yuangong',
        name: '员工',
        component: yuangong
      }
      ,{
	path: '/yuangonggongzi',
        name: '员工工资',
        component: yuangonggongzi
      }
      ,{
	path: '/shebeiguihai',
        name: '设备归还',
        component: shebeiguihai
      }
      ,{
	path: '/shebeibaoxiu',
        name: '设备报修',
        component: shebeibaoxiu
      }
      ,{
	path: '/yuangongpingjia',
        name: '员工评价',
        component: yuangongpingjia
      }
      ,{
	path: '/yuangongrenwu',
        name: '员工任务',
        component: yuangongrenwu
      }
      ,{
	path: '/yuangongdaka',
        name: '员工打卡',
        component: yuangongdaka
      }
      ,{
	path: '/shebeixinxi',
        name: '设备信息',
        component: shebeixinxi
      }
      ,{
	path: '/weixiuruku',
        name: '维修入库',
        component: weixiuruku
      }
      ,{
	path: '/menu',
        name: '菜单列表',
        component: menu
      }
      ,{
	path: '/users',
        name: '管理员',
        component: users
      }
      ,{
	path: '/sushebanchu',
        name: '宿舍搬出',
        component: sushebanchu
      }
      ,{
	path: '/yuangongqingjia',
        name: '员工请假',
        component: yuangongqingjia
      }
      ,{
	path: '/gongzuorizhi',
        name: '工作日志',
        component: gongzuorizhi
      }
      ,{
	path: '/sushexinxi',
        name: '宿舍信息',
        component: sushexinxi
      }
      ,{
	path: '/xiaojiashenqing',
        name: '销假申请',
        component: xiaojiashenqing
      }
      ,{
	path: '/renwuhuibao',
        name: '任务汇报',
        component: renwuhuibao
      }
      ,{
	path: '/shebeijieyong',
        name: '设备借用',
        component: shebeijieyong
      }
      ,{
	path: '/susheruzhu',
        name: '宿舍入住',
        component: susheruzhu
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
