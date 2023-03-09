class Course {
  String judul;
  String desc;

  Course(this.judul, this.desc);
}

class Student {
  String name;
  String className;
  late List<Course> courses;

  Student(this.name, this.className) {
    courses = [];
  }

  void addCourse(Course course) {
    courses.add(course);
  }

  void hapusCourse(Course course) {
    courses.remove(course);
  }

  void viewCourses() {
    for (var course in courses) {
      print('${course.judul}: ${course.desc}');
    }
  }
}

void main() {
  var metnumCourse = Course('Metode Numerik',
      'teknik penyelesaian permasalahan yang diformulasikan secara matematis.');
  var imkCourse = Course(
      'IMK', 'tentang mempelajari hubungan antara manusia dan komputer.');
  var student = Student('Shani Indira', 'TI sem6');
  student.addCourse(metnumCourse);
  student.addCourse(imkCourse);

  print('${student.name} mempunyai course berikut:');
  student.viewCourses();

  student.hapusCourse(imkCourse);
  print(
      'Setelah menghapus 1 course, ${student.name} hanya mempunyai course berikut:');
  student.viewCourses();
}
