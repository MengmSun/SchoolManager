package ssm.profession.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.profession.entity.Profession;
import ssm.profession.mapper.ProfessionMapper;

import java.util.List;
import java.util.Map;

@Service
public class ProfessionServiceImpl implements ProfessionService {
    @Autowired
    private ProfessionMapper professionMapper;
    @Override
    public int add(Profession profession){
        return professionMapper.add(profession);
    }
    @Override
    public int edit(Profession profession){
        return professionMapper.edit(profession);
    }
    @Override
    public int delete(String ids){
        return professionMapper.delete(ids);
    }
    @Override
    public int getTotal(Map<String,Object> queryMap){
        return professionMapper.getTotal(queryMap);
    }
    @Override
    public List<Profession> findAll(){
        return professionMapper.findAll();
    }
    @Override
    public List<Profession> findList(Map<String,Object>queryMap){
        return professionMapper.findList(queryMap);
    }
    @Override
    public int ifExist(String professionId){
        return professionMapper.ifExist(professionId);
    }
    @Override
    public int ifCampusExist(String campusId){
        return professionMapper.ifCampusExist(campusId);
    }
    @Override
    public int ifTeacherExist(String teacherId){
        return professionMapper.ifTeacherExist(teacherId);
    }

}
