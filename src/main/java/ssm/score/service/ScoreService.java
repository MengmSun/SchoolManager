package ssm.score.service;

import org.springframework.stereotype.Repository;
import ssm.course.entity.Course;
import ssm.score.entity.Score;
import ssm.student.entity.Student;

import java.util.List;
import java.util.Map;

@Repository
public interface ScoreService{
    public int add (Score score);
    public int delete (Score score);
    public int edit(Score score);
    public int getScoreTotal(Map<String,Object> queryMap);
    public int getCourseTotal(Map<String,Object> queryMap);
    public int getStudentTotal(Map<String,Object> queryMap);



    public List<Course> findCourse(Map<String,Object> queryMap);

    public List<Student> findStudent(Map<String,Object> queryMap);
    //找到对应分数
    public List<Score> findScore(Map<String,Object> queryMap);

}
