package ssm.coursestart.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.coursestart.entity.CourseStart;
import ssm.coursestart.mapper.CourseStartMapper;
import ssm.teacher.entity.Teacher;

import java.util.List;
import java.util.Map;

@Service
public class CourseStartServiceImpl implements CourseStartService {
    @Autowired
    private CourseStartMapper courseStartMapper;
    @Override
    public int add (CourseStart courseStart){
        return courseStartMapper.add(courseStart);
    }
    @Override
    public int edit (CourseStart courseStart){
        return courseStartMapper.edit(courseStart);
    }
    @Override
    public int delete(String ids){
        return courseStartMapper.delete(ids);
    }
    @Override
    public int getTotal(Map<String,Object> queryMap){
        return courseStartMapper.getTotal(queryMap);
    }
    @Override
    public int getCourseTotal(Map<String,Object> queryMap){
        return courseStartMapper.getCourseTotal(queryMap);
    }
    @Override
    public List<CourseStart> findList(Map<String,Object> queryMap){
        return courseStartMapper.findList(queryMap);
    }
    @Override
    public List<Teacher> findCourseList(Map<String,Object> queryMap){
        return courseStartMapper.findCourseList(queryMap);
    }
}
