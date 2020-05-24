package ssm.clazz.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import ssm.clazz.entity.Clazz;

import java.util.List;
import java.util.Map;

@Repository
@Mapper
public interface ClazzMapper {
    public int add(Clazz clazz);

    public int edit(Clazz clazz);

    public int delete(String ids);

    public int getTotal(Map<String, Object> queryMap);

    public List<Clazz> findList(Map<String, Object> queryMap);

    public List<Clazz> findAll();



    public int ifProfessionExist(String professionId);

    public int ifTeacherExist(String teacherId);
}