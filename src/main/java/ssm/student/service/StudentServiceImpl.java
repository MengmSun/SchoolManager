package ssm.student.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.student.entity.Student;
import ssm.student.mapper.StudentMapper;

import java.util.List;
import java.util.Map;

@Service
public class StudentServiceImpl implements StudentService{
    @Autowired
    private StudentMapper studentMapper;
    @Override
    public int add(Student student){
        return studentMapper.add(student);
    }
    @Override
    public int edit(Student student){
        return studentMapper.edit(student);
    }
    @Override
    public int delete(String ids){
        return studentMapper.delete(ids);
    }
    @Override
    public int getTotal(Map<String,Object> queryMap){
        return studentMapper.getTotal(queryMap);
    }
    @Override
    public List<Student> findList(Map<String, Object> queryMap){
        return studentMapper.findList(queryMap);
    }
    @Override
    public List<Student> findAll(){
        return studentMapper.findAll();
    }
    @Override
    public int ifExist(String studentId){
        return studentMapper.ifExist(studentId);
    }
    @Override
    public int ifClazzExist(String clazzId){
        return studentMapper.ifClazzExist(clazzId);
    }
    @Override
    public String findName(String studentId) { return studentMapper.findName(studentId); }
    @Override
    public  Student findStudent(String studentId){ return studentMapper.findStudent(studentId); }


}
