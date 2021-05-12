package spring5_mybatis_study.mapper;

import java.util.List;
import java.util.Map;

import spring5_mybatis_study.dto.Student;

public interface StudentMapper {
	Student selectStudentById(Student student);
	
	Student selectStudentByIdWithResultMap(Student student);

	List<Student> selectStudentByAll();
	
	int insertStudent(Student student);
	
	int deleteStudent(int id);

	int updateStudent(Student student);
	
	//Result - HashMap
	List<Map<String, Object>> selectStudentByAllForHashMap();
	
	Student selectStudentByIdAssociation(Student student);

	int insertEnumStudent(Student student);
}
