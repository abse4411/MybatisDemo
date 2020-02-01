package com.atguigu.mybatis.dao;

import com.atguigu.mybatis.bean.Employee;

import java.util.List;

public interface EmployeeMapperDynamicSql {

    List<Employee> getEmpsByConditionIf(Employee employee);
    List<Employee> getEmpsByConditionTrim(Employee employee);
    List<Employee> getEmpsByConditionChoose(Employee employee);
    Integer partiallyUpdateEmp(Employee employee);
}
