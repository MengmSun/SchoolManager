package ssm.student.entity;


import lombok.Data;
import lombok.RequiredArgsConstructor;
import ssm.course.entity.Course;
import ssm.score.entity.Score;

import java.sql.Date;
import java.util.List;

@Data
@RequiredArgsConstructor
public class Student {
    private String studentId;
    private String studentPersonId;
    private String studentPersonIdType;//身份证或者护照
    private String studentName;
    private String studentSex;//男或者女
    private Date studentBirthday;
    private String studentCountry;
    private String studentPhoneNumber;
    private String studentAddress;
    private String studentPC;//PostalCode
    private Date studentStartYear;
    private String studentEmail;
    private String studentClazzId;

    private List<Course> courseList;
    private Float score;
}
