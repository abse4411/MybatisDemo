package com.atguigu.mybatis.test;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class MybatisTest1 {
    public SqlSessionFactory getSqlSessionFactory() throws IOException {
        String resourceLocation = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resourceLocation);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        return sqlSessionFactory;
    }
//    public void print(Department department){
//        System.out.println("\tDepartment{Id:"+department.getId()+",deptName"
//                +department.getDepartmentName()+"}");
//    }
//    public void print(Employee employee){
//        System.out.println("Employee{Id:"+employee.getdId()+",Name:"
//                +employee.getLastName()+",Email:"
//                +employee.getEmail()+",DId:"
//                +employee.getdId()+"}");
//        Department department=employee.getDept();
//        if(department!=null)
//            print(department);
//    }
//    public <T extends Object> void print(Collection<T> items){
//        for(T item: items)
//            if(item instanceof Employee)
//                print((Employee) item);
//            else if (item instanceof Department)
//                print((Department) item);
//            else
//                System.out.println(item);
//    }

}
