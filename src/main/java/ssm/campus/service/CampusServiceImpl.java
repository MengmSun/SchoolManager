package ssm.campus.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.campus.mapper.CampusMapper;
import ssm.campus.entity.Campus;


import java.util.List;
import java.util.Map;


@Service
public class CampusServiceImpl implements CampusService{
    @Autowired
    private CampusMapper campusMapper;

    @Override
    public int add(Campus campus) {
        return campusMapper.add(campus);
    }
    @Override
    public int edit(Campus campus) {
        return campusMapper.edit(campus);
    }
    @Override
    public int delete(String ids){
        return campusMapper.delete(ids);
    }
    @Override
    public List<Campus> findList(Map<String,Object> queryMap){
        return campusMapper.findList(queryMap);
    }
    @Override
    public List<Campus> findAll(){
        return campusMapper.findAll();
    }
    @Override
    public int getTotal(Map<String,Object> queryMap){
        return campusMapper.getTotal(queryMap);
    }
}
