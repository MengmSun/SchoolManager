package ssm.downgrade.service;


import org.springframework.stereotype.Repository;
import ssm.downgrade.entity.DownGrade;

import java.util.List;
import java.util.Map;

@Repository
public interface DownGradeService {
    public int add(DownGrade downGrade);
    public int edit(DownGrade downGrade);
    public int delete(String ids);
    public List<DownGrade> findList(Map<String,Object> queryMap);
    public int getTotal(Map<String,Object> queryMap);
    public DownGrade findRecord(String studentId);
}
