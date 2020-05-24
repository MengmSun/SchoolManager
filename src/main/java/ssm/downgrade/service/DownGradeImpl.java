package ssm.downgrade.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.downgrade.entity.DownGrade;
import ssm.downgrade.mapper.DownGradeMapper;

import java.util.List;
import java.util.Map;

@Service
public class DownGradeImpl implements DownGradeService {
    @Autowired
    private DownGradeMapper downGradeMapper;
    @Override
    public int add(DownGrade downGrade){
        return downGradeMapper.add(downGrade);
    }
    @Override
    public int edit(DownGrade downGrade){
        return downGradeMapper.edit(downGrade);
    }
    @Override
    public int delete(String ids){
        return downGradeMapper.delete(ids);
    }
    @Override
    public List<DownGrade> findList(Map<String,Object> queryMap){
        return downGradeMapper.findList(queryMap);
    }
    @Override
    public int getTotal(Map<String,Object> queryMap){
        return downGradeMapper.getTotal(queryMap);
    }
    @Override
    public DownGrade findRecord(String studentId){
        return downGradeMapper.findRecord(studentId);
    }
}
