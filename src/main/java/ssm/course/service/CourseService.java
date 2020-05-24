package ssm.course.service;

import org.springframework.stereotype.Repository;
import ssm.course.entity.Course;

import java.util.List;
import java.util.Map;


@Repository
public interface CourseService {
    public int add(Course course);
    public int edit(Course course);
    public int delete(String ids);
    public int getTotal(Map<String,Object> queryMap);
    public List<Course> findList(Map<String,Object> queryMap);
    public List<Course> findAll();

    public int ifExist(String courseId);
    public String findName(String courseId);

}
