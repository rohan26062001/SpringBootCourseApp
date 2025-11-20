package com.rohan.courseApp.service;

import com.rohan.courseApp.dao.CourseRepository;
import com.rohan.courseApp.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService {
    @Autowired
    private CourseRepository courseRepository;

    public void saveCourse(Course course) {
        courseRepository.save(course);
    }

    public List<Course> getAllCourses() {
        return courseRepository.getAllCourses();
    }
}
