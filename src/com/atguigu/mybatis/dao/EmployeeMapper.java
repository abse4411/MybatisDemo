package com.atguigu.mybatis.dao;

import com.atguigu.mybatis.bean.Employee;
import org.apache.ibatis.annotations.MapKey;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface EmployeeMapper {
    Employee getEmpById(Integer id);
    Employee getEmpByIdAndName(@Param("id") Integer id,@Param("name") String name);
    Employee getEmpByMap(Map<String,Object> map);
    List<Employee> getEmpsByNameLike(String name);
    Map<String,Object> getEmpByIdReturnMap(Integer id);

    @MapKey("id")
    Map<Integer,Employee> getEmpByNameLikeReturnMap(String name);

    Integer addEmp(Employee emp);

    Integer updateEmp(Employee emp);

    Integer deleteEmp(Integer id);
}
