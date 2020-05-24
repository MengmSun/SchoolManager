package ssm.teacher.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.teacher.entity.Teacher;
import ssm.teacher.mapper.TeacherMapper;

import java.util.List;
import java.util.Map;

@Service
public class TeacherServiceImpl implements TeacherService{
    @Autowired
    private TeacherMapper teacherMapper;

    @Override
    public int add(Teacher teacher){
        return teacherMapper.add(teacher);
    }
    @Override
    public int edit(Teacher teacher){
        return teacherMapper.edit(teacher);
    }
    @Override
    public int delete(String ids){
        return teacherMapper.delete(ids);
    }
    @Override
    public int getTotal(Map<String,Object> queryMap){
        return teacherMapper.getTotal(queryMap);
    }
    @Override
    public List<Teacher> findList(Map<String,Object> queryMap){
        return teacherMapper.findList(queryMap);
    }
    @Override
    public List<Teacher> findAll(){
        return teacherMapper.findAll();
    }
    @Override
    public int ifExist(String teacherId){
        return teacherMapper.ifExist(teacherId);
    }
    @Override
    public int ifProfessionExist(String professionId){
        return teacherMapper.ifProfessionExist(professionId);
    }

}
