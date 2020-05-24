package ssm.student.service;

import com.fasterxml.jackson.core.json.async.NonBlockingJsonParser;
import org.springframework.stereotype.Repository;
import ssm.student.entity.Student;

import java.util.List;
import java.util.Map;

@Repository
public interface StudentService {
    public int add(Student student);
    public int edit(Student student);
    public int delete(String ids);
    public int getTotal(Map<String,Object> queryMap);
    public List<Student> findList(Map<String, Object> queryMap);
    public List<Student> findAll();
    public int ifExist(String studentId);
    public int ifClazzExist(String clazzId);
    public String findName(String studentId);
    public  Student findStudent(String studentId);
}
