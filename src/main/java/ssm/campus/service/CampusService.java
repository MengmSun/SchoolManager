package ssm.campus.service;


import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import ssm.campus.entity.Campus;

import java.util.List;
import java.util.Map;

@Repository
public interface CampusService {
    public int add(Campus campus);
    public int edit(Campus campus);
    public int delete(String ids);
    public List<Campus> findList(Map<String,Object> queryMap);
    public List<Campus> findAll();
    public int getTotal(Map<String,Object> queryMap);

}
