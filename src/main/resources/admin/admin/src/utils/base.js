const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot1332i/",
            name: "springboot1332i",
            // 退出到首页链接
            indexUrl: ''
        };
    },
    getProjectName(){
        return {
            projectName: "地方废物回收机构管理系统"
        } 
    }
}
export default base
