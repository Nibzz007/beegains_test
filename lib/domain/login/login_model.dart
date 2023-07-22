import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    bool success;
    String message;
    Data data;

    LoginModel({
        required this.success,
        required this.message,
        required this.data,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    User user;
    String token;

    Data({
        required this.user,
        required this.token,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: User.fromJson(json["user"]),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "token": token,
    };
}

class User {
    int id;
    String username;
    int employeeId;
    String userTypeId;
    Employee employee;
    Usertype usertype;

    User({
        required this.id,
        required this.username,
        required this.employeeId,
        required this.userTypeId,
        required this.employee,
        required this.usertype,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        employeeId: json["employee_id"],
        userTypeId: json["user_type_id"],
        employee: Employee.fromJson(json["employee"]),
        usertype: Usertype.fromJson(json["usertype"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "employee_id": employeeId,
        "user_type_id": userTypeId,
        "employee": employee.toJson(),
        "usertype": usertype.toJson(),
    };
}

class Employee {
    int id;
    String employeeName;
    String employeeCode;
    int franchiseId;
    Franchise franchise;

    Employee({
        required this.id,
        required this.employeeName,
        required this.employeeCode,
        required this.franchiseId,
        required this.franchise,
    });

    factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        employeeName: json["employee_name"],
        employeeCode: json["employee_code"],
        franchiseId: json["franchise_id"],
        franchise: Franchise.fromJson(json["franchise"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "employee_name": employeeName,
        "employee_code": employeeCode,
        "franchise_id": franchiseId,
        "franchise": franchise.toJson(),
    };
}

class Franchise {
    int id;
    String franchiseeCode;

    Franchise({
        required this.id,
        required this.franchiseeCode,
    });

    factory Franchise.fromJson(Map<String, dynamic> json) => Franchise(
        id: json["id"],
        franchiseeCode: json["franchisee_code"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "franchisee_code": franchiseeCode,
    };
}

class Usertype {
    int id;
    String name;

    Usertype({
        required this.id,
        required this.name,
    });

    factory Usertype.fromJson(Map<String, dynamic> json) => Usertype(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
