package ssm.teacher.entity;


import lombok.Data;
import lombok.RequiredArgsConstructor;
import ssm.coursestart.entity.CourseStart;

import java.sql.Date;
import java.util.List;

@Data
@RequiredArgsConstructor
public class Teacher {
    private String teacherId;
    private String teacherPersonId;
    private String teacherPersonIdType;//身份证或者护照
    private String teacherName;
    private String teacherSex;//男或者女
    private String teacherTitle;//教授或者副教授
    private Date teacherBirthday;
    private String teacherCountry;
    private String teacherPhoneNumber;
    private String teacherAddress;
    private String teacherPC;//PostalCode
    private Date teacherStartYear;
    private String teacherEmail;
    private String professionId;
   //一对多
    private List<CourseStart> courseStartList;
}
