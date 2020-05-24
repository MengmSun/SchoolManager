#!/usr/bin/env bash

# 生成随机数
id_type=('身份证' '护照' )
sex=('男' '女')
title=('教授' '副教授')
shifo=('是' '否')
access_type=('考试' '当场答辩')
season=('春' '秋')
number=('一' '二' '三' '四' '五' '六' '日')
function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(($RANDOM+1000000000)) #增加一个10位的数再求余
    echo $(($num%$max+$min))
}

function rand_fixnum(){
	str=""
	for ((i = 0 ; i < $1 ; i++)); do
		str="$str$(rand 0 9)"
	done
	echo $str
}

function rand_date(){
	x1=$(rand 1990 2020)
	x2=$(rand 1 12)
	x3=$(rand 1 28)
	echo "$x1-$x2-$x3"
}

function rand_addr(){
    echo "$(rand 1 100)路$(rand 1 500)号"
}

function rand_string(){
    echo "$(date +%s%N | md5sum | head -c $1)"
}

# 插入campus
for i in {1..5}; do
    echo "insert into t_campus (campus_id, campus_name, campus_address) values ($i,'$(rand_string 1)校区', '$(rand_addr)');"
done

# 插入profession
for i in {1..20}; do
    echo "insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values ($i, '$(rand_string 5)专业', '$(rand_addr)', null, null);"
done

# 插入teacher
for i in {1..20}; do
    echo "insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('$i', '$(rand_fixnum 18)', '${id_type[$(rand 0 1)]}', '$(rand_string 5)', '${sex[$(rand 0 1)]}', '${title[$(rand 0 1)]}', '$(rand_date)', '$(rand_string 5)', '$(rand_fixnum 11)', '$(rand_addr)', '$(rand_fixnum 6)', '$(rand_date)', '$(rand_fixnum 5)@qq.com', '$(rand 1 20)');"
done

# 插入 clazz
for i in {1..20}; do
    echo "insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values ($i,'$i班', '$(rand_date)', '$(rand 1 4)', '$(rand 1 20)','$(rand 1 20)');"
done

# 插入student
for i in {1..200}; do
    echo "insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('$i', '$(rand_fixnum 18)', '${id_type[$(rand 0 1)]}', '$(rand_string 5)', '${sex[$(rand 0 1)]}', '$(rand_date)', '$(rand_string 5)', '$(rand_fixnum 11)', '$(rand_addr)', '$(rand_fixnum 6)', '$(rand_date)', '$(rand_fixnum 5)@qq.com', '$(rand 1 20)');"
done

# switch downgrade 转专业和降级由于有原班级，不便生成数据
#for i in {1..5}; do
    #echo "insert into t_switch (switch_id, date, member, last_clazz_id, now_clazz_id, student_id)
    #values ('$i', '$(rand_date)', '${shifou[$(rand 0 1)]}', '$(rand 1 4)');"
#done

# 插入course
for i in {1..20}; do
    echo "insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('$i', '$(rand_string 5)', '${access_type[$(rand 0 1)]}', '$(rand 1 20)');"
done

# 插入course_start
for i in {1..10}; do
    x1=$(rand 1 5)
    x2=$(($x1+2))
	echo "insert into t_course_start (course_start_date, course_start_season, course_start_time, course_start_course_id, course_start_teacher_id)
    values ('$(rand_date)', '${season[$(rand 0 1)]}', '星期${number[$(rand 0 6)]} ($x1,$x2)', '$i', '$(rand 1 5)');"
done

# 插入 score

for i in {1..10}; do
    for j in {1..200}; do
        if [[ "$(rand 1 5)" == "1" ]]; then
            if [[ "$(rand 1 2)" == "1" ]]; then
                score="$(rand 0 100)"
                echo "insert into t_score (course_id, student_id, score) values ('$i', '$j', '$score');"
            else
                echo "insert into t_score (course_id, student_id, score) values ('$i', '$j', null);"
            fi
		fi
    done
done

# 给专业加外键

for i in {1..20}; do
    echo "update t_profession set profession_campus_id = '$(rand 1 5)' where profession_id = '$i' ;"
    echo "update t_profession set profession_teacher_id = '$(rand 1 10)' where profession_id = '$i' ;"
done
