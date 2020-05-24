package ssm.switchmajor.service;

import org.springframework.stereotype.Repository;
import ssm.switchmajor.entity.SwitchMajor;

import java.util.List;
import java.util.Map;

@Repository
public interface SwitchMajorService {
    public int add(SwitchMajor switchMajor);
    public int edit(SwitchMajor switchMajor);
    public int delete(String ids);
    public List<SwitchMajor> findList(Map<String,Object> queryMap);
    public int getTotal(Map<String,Object> queryMap);
    public SwitchMajor findRecord(String studentId);
}
