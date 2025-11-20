package com.rohan.courseApp.dao;

import com.rohan.courseApp.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CourseRepository {
    private static final String ADD_COURSE = "INSERT INTO COURSE (id, name) VALUES (?, ?)";
    private static final String GET_ALL = "SELECT * FROM COURSE";

    @Autowired
    JdbcTemplate jdbcTemplate;

    public void save(Course course) {
        int update = jdbcTemplate.update(ADD_COURSE, course.getId(), course.getName());
        System.out.println("Course saved!!!");
    }

    public List<Course> getAllCourses() {
        return jdbcTemplate.query(GET_ALL, (rs, rowNum) -> {
            Course course = new Course();
            course.setId(rs.getInt(1));
            course.setName(rs.getString(2));
            return course;
        });
    }
}
