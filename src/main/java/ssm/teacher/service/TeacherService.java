package ssm.teacher.service;


import org.springframework.stereotype.Repository;
import ssm.teacher.entity.Teacher;

import java.util.List;
import java.util.Map;

@Repository
public interface TeacherService {
    public int add(Teacher teacher);
    public int edit(Teacher teacher);
    public int delete(String ids);
    public int getTotal(Map<String,Object> queryMap);
    public List<Teacher> findList(Map<String,Object> queryMap);
    public List<Teacher> findAll();

    public int ifExist(String teacherId);
    public int ifProfessionExist(String professionId);

}
