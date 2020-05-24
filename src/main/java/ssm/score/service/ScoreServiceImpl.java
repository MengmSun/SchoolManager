package ssm.score.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import ssm.course.entity.Course;
import ssm.score.entity.Score;
import ssm.score.mapper.ScoreMapper;
import ssm.student.entity.Student;

import java.util.List;
import java.util.Map;

@Service
public class ScoreServiceImpl implements ScoreService{
    @Autowired
    private ScoreMapper scoreMapper;
    @Override
    public int add (Score score){
        return scoreMapper.add(score);
    }
    @Override
    public int delete (Score score){
        return scoreMapper.delete(score);
    }
    @Override
    public int edit(Score score){
        return scoreMapper.edit(score);
    }
    @Override
    public int getScoreTotal(Map<String,Object> queryMap){
        return scoreMapper.getScoreTotal(queryMap);
    }
    @Override
    public int getCourseTotal(Map<String,Object> queryMap){
        return scoreMapper.getCourseTotal(queryMap);
    }
    @Override
    public int getStudentTotal(Map<String,Object> queryMap){
        return scoreMapper.getStudentTotal(queryMap);
    }


    //找到一个学生修读的课程
    @Override
    public List<Course> findCourse(Map<String,Object> queryMap){
        return scoreMapper.findCourse(queryMap);
    }

    //找到修读一个课程的学生
    @Override
    public List<Student> findStudent(Map<String,Object> queryMap){
        return scoreMapper.findStudent(queryMap);
    }
    //找到对应分数
    @Override
    public List<Score> findScore(Map<String,Object> queryMap){
        return scoreMapper.findScore(queryMap);
    }
}
