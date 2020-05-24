package ssm.clazz.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.clazz.entity.Clazz;
import ssm.clazz.mapper.ClazzMapper;

import java.util.List;
import java.util.Map;

@Service
public class ClazzServiceImpl implements ClazzService {
    @Autowired
    private ClazzMapper clazzMapper;

    @Override
    public int add(Clazz clazz){
        return clazzMapper.add(clazz);
    }
    @Override
    public int edit(Clazz clazz){
        return clazzMapper.edit(clazz);
    }
    @Override
    public int delete(String ids){
        return clazzMapper.delete(ids);
    }
    @Override
    public int getTotal(Map<String, Object> queryMap){
        return clazzMapper.getTotal(queryMap);
    }
    @Override
    public List<Clazz> findList(Map<String, Object> queryMap){
        return clazzMapper.findList(queryMap);
    }
    @Override
    public List<Clazz> findAll(){
        return clazzMapper.findAll();
    }
    @Override
    public int ifProfessionExist(String professionId){
        return clazzMapper.ifProfessionExist(professionId);
    }
    @Override
    public int ifTeacherExist(String teacherId){
        return clazzMapper.ifTeacherExist(teacherId);
    }
}
