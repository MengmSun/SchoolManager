package ssm.downgrade.entity;


import lombok.Data;
import lombok.RequiredArgsConstructor;
import ssm.student.entity.Student;

import java.sql.Date;

@Data
@RequiredArgsConstructor
public class DownGrade {
    private String id;
    private Date date;
    private String cause;//降级原因，休学或者支教
    private String lastClazzId;//原班级ID
    private String nowClazzId;//现班级ID
    //外键，studentID 设置为UNIQUE,保证一个学生只能降级一次和DELETE：CASCADE,学生删除的话则对应的学籍记录也一并删除

    private Student student;
}
