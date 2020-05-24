package ssm.coursestart.entity;


import lombok.Data;
import lombok.RequiredArgsConstructor;
import ssm.teacher.entity.Teacher;

import java.sql.Date;

@Data
@RequiredArgsConstructor
public class CourseStart {
    private String courseStartCourseId;
    private Date courseStartDate;
    private String courseStartSeason;
    private String courseStartTime;
    private String courseStartTeacherId;
    //一对一
    private Teacher teacher;
}
