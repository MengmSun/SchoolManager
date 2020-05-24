package ssm.course.entity;

import lombok.Data;
import lombok.RequiredArgsConstructor;
import ssm.score.entity.Score;
import ssm.student.entity.Student;

import java.sql.Date;
import java.util.List;

@Data
@RequiredArgsConstructor
public class Course {
    private String courseId;
    private String courseName;
    private String courseAssessType;//考核方式，考试/当场答辩
    //private Date courseStartDate;//开课日期
    //private String courseSeason;
    //private String courseTime;//上课时间
    private String professionId;
    //private String teacherId;

    private List<Student> studentList;
    private Float score;
}
