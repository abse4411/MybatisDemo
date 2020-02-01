package com.atguigu.mybatis.dao;

import com.atguigu.mybatis.bean.Employee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmployeeMapperDynamicSql {

    List<Employee> getEmpsByConditionIf(Employee employee);
    List<Employee> getEmpsByConditionTrim(Employee employee);
    List<Employee> getEmpsByConditionChoose(Employee employee);
    List<Employee> getEmpsByConditionForeach(@Param("ids")List<Integer> ids);
    List<Employee> getEmpsTestInnerParameter(Employee employee);
    Integer partiallyUpdateEmp(Employee employee);
    Integer addEmps(@Param("emps")List<Employee> employee);

}
