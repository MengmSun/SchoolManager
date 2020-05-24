package ssm.clazz.entity;

import lombok.Data;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;

//@DateTimeFormat
@Data
@RequiredArgsConstructor
public class Clazz {
    private String clazzId;
    private String clazzName;
    private Date clazzDate;//班级创建日期
    private Integer clazzGrade;
    private String teacherId;
    private String professionId;
}
