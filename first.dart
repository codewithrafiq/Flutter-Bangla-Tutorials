// class Car_1 {
//   String name() {
//     return 'Car_1';
//   }
// }

// class Car_2 extends Car_1 {
//   @override
//   String name() {
//     return 'Car_2';
//   }
// }

// class FinalClass extends Car_2 {
//   @override
//   String name() {
//     return 'FinalClass';
//   }
// }

// void main() {
//   var fclass = FinalClass();
//   var c1 = Car_1();
//   var c2 = Car_2();
//   print(fclass.name());
//   print(c1.name());
//   print(c2.name());
// }

//  // / / // / // / //

// void main() {
// var name = 'name1';
// name = 'name2';
// print(name);

// const name = 'CodeWithRafiq';
// print(name);

// final String name ;

// }
//  // / / // / // / //

// class Student {
//   final String name;
//   final int age;
//   final String classNo;
//   final int roll;
//   Student({
//     this.name,
//     this.age,
//     this.classNo,
//     this.roll,
//   });
//   String get fullinfo {
//     return "name:${name},Age:${age},Class:${classNo},Roll:${roll}";
//   }
// }

// main() {
//   var s1 = Student(name: "Student1", age: 4, classNo: "1st", roll: 4);
//   var s2 = Student(name: "Student2", age: 8, classNo: "1st", roll: 6);
//   print(s1.fullinfo);
// }

//  // / / // / // / //
//  // / / // / // / //

mixin Mix1 {
  String name1 = "mix1";
}
mixin Mix2 {
  String name2 = "mix2";
}

class FinalClass with Mix1, Mix2 {}

main() {
  var c1 = FinalClass();
  print(c1.name1);
  print(c1.name2);
}
