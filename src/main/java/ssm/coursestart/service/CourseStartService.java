package ssm.coursestart.service;

import org.springframework.stereotype.Repository;
import ssm.coursestart.entity.CourseStart;
import ssm.teacher.entity.Teacher;

import java.util.List;
import java.util.Map;

@Repository
public interface CourseStartService {
    public int add (CourseStart courseStart);
    public int edit (CourseStart courseStart);
    public int delete(String ids);
    public int getTotal(Map<String,Object> queryMap);
    public int getCourseTotal(Map<String,Object> queryMap);
    public List<CourseStart> findList(Map<String,Object> queryMap);
    public List<Teacher> findCourseList(Map<String,Object> queryMap);
}
