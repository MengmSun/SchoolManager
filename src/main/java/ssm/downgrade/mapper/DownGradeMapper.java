package ssm.downgrade.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import ssm.downgrade.entity.DownGrade;

import java.util.List;
import java.util.Map;

@Repository
@Mapper
public interface DownGradeMapper {
    public int add(DownGrade downGrade);
    public int edit(DownGrade downGrade);
    public int delete(String ids);
    public List<DownGrade> findList(Map<String,Object> queryMap);
    public int getTotal(Map<String,Object> queryMap);
    public DownGrade findRecord(String studentId);

}
