package com.atguigu.mybatis.test;

import com.atguigu.mybatis.bean.Department;
import com.atguigu.mybatis.bean.Employee;
import com.atguigu.mybatis.dao.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Assert;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MybatisTest {

    /**
     * 1、根据xml配置文件（全局配置文件）创建一个SqlSessionFactory对象 有数据源一些运行环境信息
     * 2、sql映射文件；配置了每一个sql，以及sql的封装规则等。
     * 3、将sql映射文件注册在全局配置文件中
     * 4、写代码：
     * 		1）、根据全局配置文件得到SqlSessionFactory；
     * 		2）、使用sqlSession工厂，获取到sqlSession对象使用他来执行增删改查
     * 			一个sqlSession就是代表和数据库的一次会话，用完关闭
     * 		3）、使用sql的唯一标志来告诉MyBatis执行哪个sql。sql都是保存在sql映射文件中的。
     *
     * @throws IOException
     */
    public SqlSessionFactory getSqlSessionFactory() throws IOException {
        String resourceLocation = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resourceLocation);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        return sqlSessionFactory;
    }


    @Test
    public void test0() throws IOException {
        //SqlSessionFactory和SqlSession是非线程安全的，应该在每次使用时创建新的对象
        //SqlSession需要关闭
        SqlSessionFactory sqlSessionFactory=getSqlSessionFactory();
        SqlSession session=sqlSessionFactory.openSession();
        // 2、获取sqlSession实例，能直接执行已经映射的sql语句
        // sql的唯一标识：statement Unique identifier matching the statement to use.
        // 执行sql要用的参数：parameter A parameter object to pass to the statement.
        try{
            Employee employee = session.selectOne("com.atguigu.mybatis.employee.selectEmployee", 1);
            System.out.println(employee);
            Assert.assertNotNull(employee);
        }catch (Exception e)
        {
            e.printStackTrace();
            Assert.fail();
        }finally {
            session.close();
        }

    }

    @Test
    public void test1() throws IOException {
        SqlSessionFactory sqlSessionFactory=getSqlSessionFactory();
        SqlSession session=sqlSessionFactory.openSession();
        try{
            // 3、获取接口的实现类对象
            //会为接口自动的创建一个代理对象，代理对象去执行增删改查方法
            EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
            Employee employee = mapper.getEmpById(1);
            System.out.println(employee);
            Assert.assertNotNull(employee);
        }catch (Exception e)
        {
            e.printStackTrace();
            Assert.fail();
        }finally {
            session.close();

        }
    }


    @Test
    public void test2() throws IOException {
        SqlSessionFactory sqlSessionFactory=getSqlSessionFactory();
        SqlSession session=sqlSessionFactory.openSession();
        try{
            EmployeeMapperAnnotation mapper = session.getMapper(EmployeeMapperAnnotation.class);
            Employee employee = mapper.getEmpById(1);
            System.out.println(employee);
            Assert.assertNotNull(employee);
        }catch (Exception e)
        {
            e.printStackTrace();
            Assert.fail();
        }finally {
            session.close();
        }
    }

    /**
     * 测试增删改
     * 1、mybatis允许增删改直接定义以下类型返回值
     * 		Integer、Long、Boolean、void
     * 2、我们需要手动提交数据
     * 		sqlSessionFactory.openSession();===》手动提交
     * 		sqlSessionFactory.openSession(true);===》自动提交
     * @throws IOException
     */
    @Test
    public void test3() throws IOException {
        SqlSessionFactory sqlSessionFactory=getSqlSessionFactory();
        //该SqlSession不会自动提交
        SqlSession session=sqlSessionFactory.openSession();
        //开启自动提交
//        SqlSession session=sqlSessionFactory.openSession(true);
        try{
            EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
            //add
            Employee employee = new Employee();
            employee.setEmail("sdwedw@fsd.com");
            employee.setGender("2");
            //employee.setLastName("KDWD");
            int result=mapper.addEmp(employee);

            //update
//            employee.setId(4);
//            employee.setLastName("MA");
//            employee.setEmail("A");
//            employee.setGender("0");
//            int result=mapper.updateEmp(employee);

            //delete
//            int result=mapper.deleteEmp(4);

            session.commit();
            System.out.println("Affected rows:"+result);
            System.out.println(employee);
            Assert.assertTrue(result>0);
        }catch (Exception e)
        {
            e.printStackTrace();
            Assert.fail();
        }finally {
            session.close();
        }
    }

    @Test
    public void test4() throws IOException {
        SqlSessionFactory sqlSessionFactory=getSqlSessionFactory();
        SqlSession session=sqlSessionFactory.openSession();
        try{
            EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
            Map<String,Object> map=new HashMap();
            map.put("id",1);
            map.put("name", "tom");
            map.put("tableName", "tbl_employee");
            Employee employee = mapper.getEmpByMap(map);
            System.out.println(employee);
            Assert.assertNull(employee);
        }catch (Exception e)
        {
            e.printStackTrace();
            Assert.fail();
        }finally {
            session.close();
        }
    }

    @Test
    public void test5() throws IOException {
        SqlSession session=getSqlSessionFactory().openSession();
        try{
            EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
//            List<Employee> emps = mapper.getEmpsByNameLike("%tom%");
//            for(Employee emp : emps)
//                System.out.println(emp);

            Map<Integer, Employee> emps = mapper.getEmpByNameLikeReturnMap("%tom%");
            System.out.println(emps.getClass());
            System.out.println(emps);
            for(Integer id : emps.keySet())
                System.out.println(emps.get(id));
            Assert.assertTrue(emps.size()>0);
        }catch (Exception e)
        {
            e.printStackTrace();
            Assert.fail();
        }finally {
            session.close();
        }
    }

    @Test
    public void test6() throws IOException {
        SqlSession session=getSqlSessionFactory().openSession();
        try{
            EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
            Map<String, Object> map = mapper.getEmpByIdReturnMap(1);
            System.out.println(map);
            Assert.assertTrue(map.size()>0);
        }catch (Exception e)
        {
            e.printStackTrace();
            Assert.fail();
        }finally {
            session.close();
        }
    }

    @Test
    public void test7() throws IOException {
        SqlSession session=getSqlSessionFactory().openSession();
        try{
            EmployeeMapperPlus mapper = session.getMapper(EmployeeMapperPlus.class);
//            Employee emp = mapper.getEmpById(1);
//            Employee emp = mapper.getEmpAndDeptById(1);
            Employee emp = mapper.getEmpByIdStep(2);
//            DepartmentMapper mapper1 = session.getMapper(DepartmentMapper.class);
//            Department dept = mapper1.getDeptById(4);
//            System.out.println(dept);

            //直接获取emp会使得属性全部被加载，延迟加载也会发生
            System.out.println(emp.getLastName()+" "+emp.getEmail()+" "+emp.getdId());

            System.out.println(emp.getDept());

            Assert.assertTrue(emp!=null);
        }catch (Exception e)
        {
            e.printStackTrace();
            Assert.fail();
        }finally {
            session.close();
        }
    }

    @Test
    public void test8() throws IOException {
        SqlSession session=getSqlSessionFactory().openSession();
        try{
            DepartmentMapper mapper = session.getMapper(DepartmentMapper.class);
            Department department = mapper.getDeptByIdStep(2);
            System.out.println(department.getDepartmentName());
            for(Employee employee : department.getEmps())
                System.out.println(employee);
            Assert.assertTrue(department!=null);
        }catch (Exception e)
        {
            e.printStackTrace();
            Assert.fail();
        }finally {
            session.close();
        }
    }

    @Test
    public void testDynamicSql() throws IOException {
        SqlSession session=getSqlSessionFactory().openSession();
        try{
            EmployeeMapperDynamicSql mapper = session.getMapper(EmployeeMapperDynamicSql.class);
            Employee employee=new Employee();
            employee.setId(1);
//            employee.setLastName("%D%");
//            employee.setEmail("%8%");
//            employee.setGender("0");
//            List<Employee> emps = mapper.getEmpsByConditionIf(employee);
//            List<Employee> emps = mapper.getEmpsByConditionTrim(employee);
            List<Employee> emps = mapper.getEmpsByConditionChoose(employee);
            for(Employee emp : emps)
                System.out.println(emp);
            Assert.assertTrue(emps.size()>0);
        }catch (Exception e)
        {
            e.printStackTrace();
            Assert.fail();
        }finally {
            session.close();
        }
    }
}
