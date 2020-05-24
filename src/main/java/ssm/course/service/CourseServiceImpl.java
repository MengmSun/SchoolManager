package ssm.course.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.course.entity.Course;
import ssm.course.mapper.CourseMapper;

import java.util.List;
import java.util.Map;

@Service
public class CourseServiceImpl implements CourseService {
    @Autowired
    private CourseMapper courseMapper;
    @Override
    public int add(Course course){
        return courseMapper.add(course);
    }
    @Override
    public int edit(Course course){
        return courseMapper.edit(course);
    }
    @Override
    public int delete(String ids){
        return courseMapper.delete(ids);
    }
    @Override
    public int getTotal(Map<String,Object> queryMap){
        return courseMapper.getTotal(queryMap);
    }
    @Override
    public List<Course> findList(Map<String,Object> queryMap){
        return courseMapper.findList(queryMap);
    }
    @Override
    public List<Course> findAll(){
        return courseMapper.findAll();
    }

    @Override
    public int ifExist(String courseId){
        return courseMapper.ifExist(courseId);
    }
    @Override
    public String findName(String courseId) { return courseMapper.findName(courseId);}
}
