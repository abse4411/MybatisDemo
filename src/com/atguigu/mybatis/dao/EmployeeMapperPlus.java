package com.atguigu.mybatis.dao;

import com.atguigu.mybatis.bean.Employee;
import org.apache.ibatis.annotations.MapKey;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface EmployeeMapperPlus {
    Employee getEmpById(Integer id);
    Employee getEmpAndDeptById(Integer id);
    Employee getEmpByIdStep(Integer id);
    List<Employee> getEmpsByDeptId(Integer deptId);
}
