const base = {
    get() {
                return {
            url : "http://localhost:8080/planestore/",
            name: "planestore",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/planestore/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "飞机订票管理系统"
        }
    }
}
export default base
