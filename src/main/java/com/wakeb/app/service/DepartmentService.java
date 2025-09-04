package com.wakeb.app.service;

import com.wakeb.app.entity.Department;
import com.wakeb.app.repository.DepartmentRepository;
import com.wakeb.app.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentService {
    @Autowired
    DepartmentRepository departmentRepository;

    public List<Department> getAllDepartments() {
        return departmentRepository.findAll();
    }
}
