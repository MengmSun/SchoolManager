package ssm.switchmajor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.switchmajor.entity.SwitchMajor;
import ssm.switchmajor.mapper.SwitchMajorMapper;

import java.util.List;
import java.util.Map;

@Service
public class SwitchMajorImpl implements SwitchMajorService {
    @Autowired
    private SwitchMajorMapper switchMajorMapper;
    @Override
    public int add(SwitchMajor switchMajor){
        return switchMajorMapper.add(switchMajor);
    }
    @Override
    public int edit(SwitchMajor switchMajor){
        return switchMajorMapper.edit(switchMajor);
    }
    @Override
    public int delete(String ids){
        return switchMajorMapper.delete(ids);
    }
    @Override
    public List<SwitchMajor> findList(Map<String,Object> queryMap){
        return switchMajorMapper.findList(queryMap);
    }
    @Override
    public int getTotal(Map<String,Object> queryMap){
        return switchMajorMapper.getTotal(queryMap);
    }
    @Override
    public SwitchMajor findRecord(String studentId) { return switchMajorMapper.findRecord(studentId);}
}
