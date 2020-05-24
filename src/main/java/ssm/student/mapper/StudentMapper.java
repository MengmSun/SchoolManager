package ssm.student.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import ssm.student.entity.Student;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface StudentMapper {
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
