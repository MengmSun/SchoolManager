package ssm.profession.service;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import ssm.profession.entity.Profession;

import java.util.List;
import java.util.Map;


@Repository
public interface ProfessionService {
    public int add(Profession profession);
    public int edit(Profession profession);
    public int delete(String ids);
    public int getTotal(Map<String,Object> queryMap);
    public List<Profession> findAll();
    public List<Profession> findList(Map<String,Object> queryMap);
    //作为父表供其他表中的外键(ProfessionID)查询使用
    public int ifExist(String professionId);
    //
    public int ifCampusExist(String campusId);
    public int ifTeacherExist(String teacherId);

}
