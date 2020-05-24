package ssm.profession.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import ssm.profession.entity.Profession;

import java.util.List;
import java.util.Map;

@Repository
@Mapper
public interface ProfessionMapper {
    public int add(Profession profession);
    public int edit(Profession profession);
    public int delete(String ids);
    public int getTotal(Map<String,Object> queryMap);
    public List<Profession> findAll();
    public List<Profession> findList(Map<String,Object> queryMap);
    public int ifExist(String professionId);
    public int ifCampusExist(String campusId);
    public int ifTeacherExist(String teacherId);
}
