package com.shxt.modual.employee.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shxt.base.dao.impl.BaseDaoImpl;
import com.shxt.modual.employee.dao.EmployeeDao;
import com.shxt.modual.employee.model.Employee;

/**
 * 员工，数据访问层，实现类
 *
 * @author
 * @Version 1.0
 * @Copyright
 * @date 下午6:58:55
 * @description
 */
@Repository("employeeDao")
public class EmployeeDaoImpl extends BaseDaoImpl implements EmployeeDao {


    /**
     * 登录
     *
     * @param account
     * @return Customer
     * @author
     * @date 下午6:13:42
     */
    @Override
    public Employee check(String account) {
        SqlSession session = getSqlSession();
        Employee e = session.selectOne(Employee.class.getName() + ".login", account);
        return e;
    }


    /**
     * 添加
     *
     * @param r void
     * @author
     * @date 下午7:02:38
     */
    @Override
    public void add(Employee e) {
        SqlSession session = getSqlSession();
        session.insert(Employee.class.getName() + ".add", e);
    }

    /**
     * 查看员工
     *
     * @return List<Employee>
     * @author
     * @date 下午7:50:01
     */
    @Override
    public List<Employee> list() {
        SqlSession session = getSqlSession();

        List<Employee> list = session.selectList(Employee.class.getName() + ".list");
        return list;
    }


    /**
     * 查看隐藏员工
     *
     * @return List<Employee>
     * @author
     * @date 下午7:50:01
     */
    @Override
    public List<Employee> hiddenList() {
        SqlSession session = getSqlSession();

        List<Employee> list = session.selectList(Employee.class.getName() + ".hiddenList");
        return list;
    }


    /**
     * 根据主键查询一条数据
     *
     * @param id
     * @return Employee
     * @author
     * @date 下午6:13:42
     */
    @Override
    public Employee get(String e_id) {
        SqlSession session = getSqlSession();
        Employee e = session.selectOne(Employee.class.getName() + ".get", e_id);
        return e;
    }

    /**
     * 判断账号是否重复
     *
     * @param r void
     * @author
     * @date 下午6:30:00
     */
    @Override
    public List<Employee> checkAccount(String account) {
        SqlSession session = getSqlSession();

        List<Employee> list = session.selectList(Employee.class.getName() + ".check", account);
        return list;
    }

    /**
     * 修改员工
     *
     * @param r void
     * @author
     * @date 下午6:30:00
     */
    @Override
    public void update(Employee e) {
        SqlSession session = getSqlSession();

        session.update(Employee.class.getName() + ".update", e);
    }

    /**
     * 隐藏员工
     *
     * @param r void
     * @author
     * @date 下午6:30:00
     */
    @Override
    public void hide(String e_id) {
        SqlSession session = getSqlSession();

        session.update(Employee.class.getName() + ".hide", e_id);
    }

    /**
     * 恢复员工
     *
     * @param r void
     * @author
     * @date 下午6:30:00
     */
    @Override
    public void recover(String e_id) {
        SqlSession session = getSqlSession();

        session.update(Employee.class.getName() + ".recover", e_id);
    }

    /**
     * 删除员工
     *
     * @param r void
     * @author
     * @date 下午6:30:00
     */
    @Override
    public void delete(String e_id) {
        SqlSession session = getSqlSession();

        session.delete(Employee.class.getName() + ".delete", e_id);
    }
}
