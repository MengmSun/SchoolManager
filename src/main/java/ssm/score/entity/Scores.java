package ssm.score.entity;

import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
public class Scores {
    private Score[] scores;
}
