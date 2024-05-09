let ormTool = require('./ormTool/index')

// console.log(hm);
let orm_config = {
    host: 'localhost',//数据库地址
    port:'3306',
    user: 'root',//用户名，没有可不填
    password: 'root',//密码，没有可不填
    database: 'qd22'//数据库名称
}

ormTool.connect(orm_config)

let stuModel = ormTool.model('students',{
    id:Number,
    name:String,
    age:Number,
    height:Number,
    gender:String,
    cls_id:Number,
    is_deleted:Number
})

// console.log(stuModel);
//新增 ok
// stuModel.insert({
//     id:0,
//     name:"Jerry",
//     age:16,
//     height:167.9,
//     cls_id:1,
//     is_deleted:0
// },(err,result)=>{
//     if(err){
//         console.log(err);
//     }
//     console.log(result);
//     console.log('添加成功');
// })

//查找全部，ok
// stuModel.find((err,res)=>{
//     console.log(res);
// })

//查询指定字段需要用把字段放入[]中
// stuModel.find(['name','age','gender','height'],(err,res)=>{
//         console.log(res.length);
//         console.log(res);
// })

//聚合函数,
//--1.查询数据库一共又多少条记录
// stuModel.find(['count(*)'],(err,res)=>{
//         console.log(res.length);
//         console.log(res);
// })

//--2.查询学生的最大年龄
// stuModel.find(['max(age)'],(err,res)=>{
//         console.log(res.length);
//         console.log(res);
// })

//--3.查询身高最矮的学生
// stuModel.find(['min(height)'],(err,res)=>{
//         console.log(res.length);
//         console.log(res);
// })


// 根据条件查询数据
// 'id=1' : 查询id为1的数据 (查询条件可以参考sql语句)
//例如 'age>10' : 查询age超过10的数据 
//例如 'name="张三"' : 查询名字为张三的数据，注意字符串添加引号
// stuModel.find('name="Mary"',(err,res)=>{ //ok
//         console.log(res);
// })

//逻辑运算符，查询id比2大同时又比10小的学生 ok
// stuModel.find('id>2 and id<10',(err,res)=>{
//         console.log(res);
// })

//模糊查询,查找名字至少3个字的学生，注意字符串里面需要又双引号的 ok
// stuModel.find('name like "___%"',(err,res)=>{
//         console.log(res);
// })

//查询年龄为13岁和17岁的所有学生，查询不连续记录
// stuModel.find('age in (13,17)',(err,res)=>{
//     console.log(res);
// })

//查询年龄在13岁和17岁之间的所有学生包括13岁17岁
// stuModel.find('age between 13 and 17',(err,res)=>{
//     console.log(res.length);
//     console.log(res);
// })

// stuModel.find('age between 13 and 17',(err,res)=>{
//     console.log(res.length);
//     console.log(res);
// })

//对于一些比较复杂的查询，可以直接输入sql语句来调用,调用sql方法如查询所有男生的平均身高ok
stuModel.sql('select avg(height) from students where gender=1',(err,res)=>{
        console.log(res.length);
        console.log(res);
})

//分页查询
stuModel.limit({where:'age<18',number:1,count:3},(err,res)=>{
            console.log(res.length);
            console.log(res);
})

//更新数据，update方法有3个参数，1条件，2新数据，3回调
//将id为1的学生改名为Marco
// stuModel.update('id=1',{name:'Marco'},(err,res)=>{
//             console.log(res);
// })


//删除数据,在生产环境中尽量不要删除，学习环境没有关系
//删除名字为Jerry的学生
// stuModel.delete('name="Jerry"',(err,res)=>{
//                 console.log(res);
// })
