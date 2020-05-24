package ssm.teacher.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import ssm.teacher.entity.Teacher;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface TeacherMapper {
    public int add(Teacher teacher);
    public int edit(Teacher teacher);
    public int delete(String ids);
    public int getTotal(Map<String,Object> queryMap);
    public List<Teacher> findList(Map<String,Object> queryMap);
    public List<Teacher> findAll();

    public int ifExist(String teacherId);
    public int ifProfessionExist(String professionId);


}
