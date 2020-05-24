package ssm.profession.entity;


import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
public class Profession {
    private String professionId;
    private String professionName;
    private String professionAddress;
    private String campusId;//专业对应校区ID
    private String teacherId;//专业负责人ID
}
