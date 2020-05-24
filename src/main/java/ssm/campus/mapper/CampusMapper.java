package ssm.campus.mapper;



import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;
import ssm.campus.entity.Campus;

import java.util.List;
import java.util.Map;

@Repository
@Mapper
public interface CampusMapper {

    public int add(Campus campus);
    public int edit(Campus campus);
    public int delete(String ids);
    public List<Campus> findList(Map<String,Object> queryMap);
    public List<Campus> findAll();
    public int getTotal(Map<String,Object> queryMap);
}
