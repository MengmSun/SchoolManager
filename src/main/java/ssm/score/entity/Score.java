package ssm.score.entity;

import lombok.Data;
import lombok.RequiredArgsConstructor;
import ssm.course.entity.Course;
import ssm.student.entity.Student;

@Data
@RequiredArgsConstructor
public class Score {
    private String courseId;
    private String studentId;
    private Float score;
}
