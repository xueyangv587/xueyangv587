//vue_server_00/app.js  node 程序
//1.加载第三方模块
//服务器
const express = require("express");
//mysql驱动
const mysql = require("mysql");
//跨域
const cors = require("cors");
//session
const session = require("express-session");
//2.配置数据库连接池：提高数据效率
var pool = mysql.createPool({
    host: "127.0.0.1",//数据库地址
    user: "root",//数据库用户名
    password: "",//数据库密码
    port: 3306,//数据库端口
    database: "vivo",//数据库名称
    connectionLimit: 15//连接数量
});

var server = express();
//3.配置跨域模块
server.use(cors({
    //允许跨域访问程序地址列表
    origin: ["http://127.0.0.1:8080", "http://localhost:8080"],
    credentials: true//请求验证
}))

//4.配置seesion模块
server.use(session({
    secret: "128为字符串",//安全字符串进行加密
    resave: true,         //每次请求都更新数据
    saveUninitialized: true//保存初始数据
}))
//4.1配置项目的静态目录
server.use(express.static("public"));

server.listen(3000);

//现仅供测试使用
server.get("/home",(req,res)=>{
    // 数据库获取轮播图图片
    var results={
        result1:[],
        result2:[]
    };
    var laptop_id=req.query.laptop_id;
    var sql="SELECT * FROM vivo_index_carousel";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        // res.send({code:1,data:result});
        results.result1=result;
        var sql1="SELECT * FROM vivo_laptop_pic WHERE laptop_id=?";
        pool.query(sql1,[laptop_id],(err,result)=>{
            if(err) throw err;
            results.result2=result;
            res.send({code:1,data:results});
        })
    })
})
//获取商品数据
server.get("/product",(req,res)=>{
    var results={
        result1:[],
        result2:[],
        result3:[],
        result4:[]
    };
    var class_id=req.query.class_id;
    var sql="SELECT * FROM snap_up";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        results.result1=result;
        var sql1="SELECT * FROM product_details WHERE class_id=?";
        pool.query(sql1,[class_id],(err,result)=>{
            if(err) throw err;
            results.result2=result;
            var sql2="SELECT * FROM re_mai"
            pool.query(sql2,(err,result)=>{
                if(err) throw err;
                results.result3=result;
                var sql3="SELECT * FROM boutique";
                pool.query(sql3,(err,result)=>{
                    if(err) throw err;
                    results.result4=result;
                    res.send({code:1,data:results});
                })
            }) 
        })
    })
})

