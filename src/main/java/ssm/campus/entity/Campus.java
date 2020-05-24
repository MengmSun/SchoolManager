package ssm.campus.entity;


import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
public class Campus {
    private String id;
    private String name;
    private String address;
}
