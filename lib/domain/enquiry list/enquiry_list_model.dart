// To parse this JSON data, do
//
//     final enquiryListModel = enquiryListModelFromJson(jsonString);

import 'dart:convert';

EnquiryListModel enquiryListModelFromJson(String str) => EnquiryListModel.fromJson(json.decode(str));

String enquiryListModelToJson(EnquiryListModel data) => json.encode(data.toJson());

class EnquiryListModel {
    bool success;
    String message;
    Data data;

    EnquiryListModel({
        required this.success,
        required this.message,
        required this.data,
    });

    factory EnquiryListModel.fromJson(Map<String, dynamic> json) => EnquiryListModel(
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
    Enquiries enquiries;

    Data({
        required this.enquiries,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        enquiries: Enquiries.fromJson(json["enquiries"]),
    );

    Map<String, dynamic> toJson() => {
        "enquiries": enquiries.toJson(),
    };
}

class Enquiries {
    int currentPage;
    List<Datum> data;
    String firstPageUrl;
    int from;
    int lastPage;
    String lastPageUrl;
    dynamic nextPageUrl;
    String path;
    int perPage;
    dynamic prevPageUrl;
    int to;
    int total;

    Enquiries({
        required this.currentPage,
        required this.data,
        required this.firstPageUrl,
        required this.from,
        required this.lastPage,
        required this.lastPageUrl,
        this.nextPageUrl,
        required this.path,
        required this.perPage,
        this.prevPageUrl,
        required this.to,
        required this.total,
    });

    factory Enquiries.fromJson(Map<String, dynamic> json) => Enquiries(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
    };
}

class Datum {
    int id;
    String enquiryNo;
    int? jobcardId;
    int franchiseId;
    int enquirySourceId;
    int? enquirySubSourceId;
    String rcOwnerName;
    String rcOwnerPrimaryMobile;
    String rcOwnerSecondaryMobile;
    String rcOwnerAddress;
    String rcOwnerDistrict;
    String rcOwnerLocation;
    String name;
    String primaryMobile;
    String secondaryMobile;
    String address;
    String location;
    String district;
    int? kms;
    String enquiryDate;
    dynamic estimationDate;
    int vehicleMakeId;
    int vehicleModelId;
    String vehicleRegNo;
    dynamic vehicleColor;
    String vehicleAge;
    int noOfPanels;
    String specifyWorkInDetail;
    String customerRemarks;
    int insuranceClaim;
    String insuranceExpireDate;
    int? insuranceCompanyId;
    dynamic corporateCompanyId;
    dynamic serviceAdvisorName;
    dynamic serviceAdvisorPhone;
    int? insuranceTypeId;
    dynamic surveyDate;
    dynamic surveyTime;
    int surveyStatus;
    dynamic surveyAmount;
    dynamic insuranceAgentId;
    dynamic surveyRemarks;
    int currentFollowupId;
    int currentFollowupLeadStatusId;
    int currentFollowupedBy;
    dynamic convertedBy;
    dynamic grandTotal;
    int gatepassStatus;
    AssignedTo assignedTo;
    int createdBy;
    int? updatedBy;
    int device;
    int? lastUpdatedDevice;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    EnquirySource enquirySource;
    EnquirySubsource? enquirySubsource;
    VehicleMake vehicleMake;
    VehicleModel vehicleModel;
    EnquirySource? insuranceCompany;
    EnquirySource leadStatus;
    dynamic corporateCompany;
    EnquiriesFollowup enquiriesFollowup;
    List<EnquiriesVertical> enquiriesVerticals;
    List<EnquiriesSubVertical> enquiriesSubVerticals;
    List<dynamic> enquiriesWorks;

    Datum({
        required this.id,
        required this.enquiryNo,
        this.jobcardId,
        required this.franchiseId,
        required this.enquirySourceId,
        this.enquirySubSourceId,
        required this.rcOwnerName,
        required this.rcOwnerPrimaryMobile,
        required this.rcOwnerSecondaryMobile,
        required this.rcOwnerAddress,
        required this.rcOwnerDistrict,
        required this.rcOwnerLocation,
        required this.name,
        required this.primaryMobile,
        required this.secondaryMobile,
        required this.address,
        required this.location,
        required this.district,
        this.kms,
        required this.enquiryDate,
        this.estimationDate,
        required this.vehicleMakeId,
        required this.vehicleModelId,
        required this.vehicleRegNo,
        this.vehicleColor,
        required this.vehicleAge,
        required this.noOfPanels,
        required this.specifyWorkInDetail,
        required this.customerRemarks,
        required this.insuranceClaim,
        required this.insuranceExpireDate,
        this.insuranceCompanyId,
        this.corporateCompanyId,
        this.serviceAdvisorName,
        this.serviceAdvisorPhone,
        this.insuranceTypeId,
        this.surveyDate,
        this.surveyTime,
        required this.surveyStatus,
        this.surveyAmount,
        this.insuranceAgentId,
        this.surveyRemarks,
        required this.currentFollowupId,
        required this.currentFollowupLeadStatusId,
        required this.currentFollowupedBy,
        this.convertedBy,
        this.grandTotal,
        required this.gatepassStatus,
        required this.assignedTo,
        required this.createdBy,
        this.updatedBy,
        required this.device,
        this.lastUpdatedDevice,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        required this.enquirySource,
        this.enquirySubsource,
        required this.vehicleMake,
        required this.vehicleModel,
        this.insuranceCompany,
        required this.leadStatus,
        this.corporateCompany,
        required this.enquiriesFollowup,
        required this.enquiriesVerticals,
        required this.enquiriesSubVerticals,
        required this.enquiriesWorks,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        enquiryNo: json["enquiry_no"],
        jobcardId: json["jobcard_id"],
        franchiseId: json["franchise_id"],
        enquirySourceId: json["enquiry_source_id"],
        enquirySubSourceId: json["enquiry_sub_source_id"],
        rcOwnerName: json["rc_owner_name"],
        rcOwnerPrimaryMobile: json["rc_owner_primary_mobile"],
        rcOwnerSecondaryMobile: json["rc_owner_secondary_mobile"],
        rcOwnerAddress: json["rc_owner_address"],
        rcOwnerDistrict: json["rc_owner_district"],
        rcOwnerLocation: json["rc_owner_location"],
        name: json["name"],
        primaryMobile: json["primary_mobile"],
        secondaryMobile: json["secondary_mobile"],
        address: json["address"],
        location: json["location"],
        district: json["district"],
        kms: json["kms"],
        enquiryDate: json["enquiry_date"],
        estimationDate: json["estimation_date"],
        vehicleMakeId: json["vehicle_make_id"],
        vehicleModelId: json["vehicle_model_id"],
        vehicleRegNo: json["vehicle_reg_no"],
        vehicleColor: json["vehicle_color"],
        vehicleAge: json["vehicle_age"],
        noOfPanels: json["no_of_panels"],
        specifyWorkInDetail: json["specify_work_in_detail"],
        customerRemarks: json["customer_remarks"],
        insuranceClaim: json["insurance_claim"],
        insuranceExpireDate: json["insurance_expire_date"],
        insuranceCompanyId: json["insurance_company_id"],
        corporateCompanyId: json["corporate_company_id"],
        serviceAdvisorName: json["service_advisor_name"],
        serviceAdvisorPhone: json["service_advisor_phone"],
        insuranceTypeId: json["insurance_type_id"],
        surveyDate: json["survey_date"],
        surveyTime: json["survey_time"],
        surveyStatus: json["survey_status"],
        surveyAmount: json["survey_amount"],
        insuranceAgentId: json["insurance_agent_id"],
        surveyRemarks: json["survey_remarks"],
        currentFollowupId: json["current_followup_id"],
        currentFollowupLeadStatusId: json["current_followup_lead_status_id"],
        currentFollowupedBy: json["current_followuped_by"],
        convertedBy: json["converted_by"],
        grandTotal: json["grand_total"],
        gatepassStatus: json["gatepass_status"],
        assignedTo: AssignedTo.fromJson(json["assigned_to"]),
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        device: json["device"],
        lastUpdatedDevice: json["last_updated_device"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        enquirySource: EnquirySource.fromJson(json["enquiry_source"]),
        enquirySubsource: json["enquiry_subsource"] == null ? null : EnquirySubsource.fromJson(json["enquiry_subsource"]),
        vehicleMake: VehicleMake.fromJson(json["vehicle_make"]),
        vehicleModel: VehicleModel.fromJson(json["vehicle_model"]),
        insuranceCompany: json["insurance_company"] == null ? null : EnquirySource.fromJson(json["insurance_company"]),
        leadStatus: EnquirySource.fromJson(json["lead_status"]),
        corporateCompany: json["corporate_company"],
        enquiriesFollowup: EnquiriesFollowup.fromJson(json["enquiries_followup"]),
        enquiriesVerticals: List<EnquiriesVertical>.from(json["enquiries_verticals"].map((x) => EnquiriesVertical.fromJson(x))),
        enquiriesSubVerticals: List<EnquiriesSubVertical>.from(json["enquiries_sub_verticals"].map((x) => EnquiriesSubVertical.fromJson(x))),
        enquiriesWorks: List<dynamic>.from(json["enquiries_works"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "enquiry_no": enquiryNo,
        "jobcard_id": jobcardId,
        "franchise_id": franchiseId,
        "enquiry_source_id": enquirySourceId,
        "enquiry_sub_source_id": enquirySubSourceId,
        "rc_owner_name": rcOwnerName,
        "rc_owner_primary_mobile": rcOwnerPrimaryMobile,
        "rc_owner_secondary_mobile": rcOwnerSecondaryMobile,
        "rc_owner_address": rcOwnerAddress,
        "rc_owner_district": rcOwnerDistrict,
        "rc_owner_location": rcOwnerLocation,
        "name": name,
        "primary_mobile": primaryMobile,
        "secondary_mobile": secondaryMobile,
        "address": address,
        "location": location,
        "district": district,
        "kms": kms,
        "enquiry_date": enquiryDate,
        "estimation_date": estimationDate,
        "vehicle_make_id": vehicleMakeId,
        "vehicle_model_id": vehicleModelId,
        "vehicle_reg_no": vehicleRegNo,
        "vehicle_color": vehicleColor,
        "vehicle_age": vehicleAge,
        "no_of_panels": noOfPanels,
        "specify_work_in_detail": specifyWorkInDetail,
        "customer_remarks": customerRemarks,
        "insurance_claim": insuranceClaim,
        "insurance_expire_date": insuranceExpireDate,
        "insurance_company_id": insuranceCompanyId,
        "corporate_company_id": corporateCompanyId,
        "service_advisor_name": serviceAdvisorName,
        "service_advisor_phone": serviceAdvisorPhone,
        "insurance_type_id": insuranceTypeId,
        "survey_date": surveyDate,
        "survey_time": surveyTime,
        "survey_status": surveyStatus,
        "survey_amount": surveyAmount,
        "insurance_agent_id": insuranceAgentId,
        "survey_remarks": surveyRemarks,
        "current_followup_id": currentFollowupId,
        "current_followup_lead_status_id": currentFollowupLeadStatusId,
        "current_followuped_by": currentFollowupedBy,
        "converted_by": convertedBy,
        "grand_total": grandTotal,
        "gatepass_status": gatepassStatus,
        "assigned_to": assignedTo.toJson(),
        "created_by": createdBy,
        "updated_by": updatedBy,
        "device": device,
        "last_updated_device": lastUpdatedDevice,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "enquiry_source": enquirySource.toJson(),
        "enquiry_subsource": enquirySubsource?.toJson(),
        "vehicle_make": vehicleMake.toJson(),
        "vehicle_model": vehicleModel.toJson(),
        "insurance_company": insuranceCompany?.toJson(),
        "lead_status": leadStatus.toJson(),
        "corporate_company": corporateCompany,
        "enquiries_followup": enquiriesFollowup.toJson(),
        "enquiries_verticals": List<dynamic>.from(enquiriesVerticals.map((x) => x.toJson())),
        "enquiries_sub_verticals": List<dynamic>.from(enquiriesSubVerticals.map((x) => x.toJson())),
        "enquiries_works": List<dynamic>.from(enquiriesWorks.map((x) => x)),
    };
}

class AssignedTo {
    int id;
    String employeeName;

    AssignedTo({
        required this.id,
        required this.employeeName,
    });

    factory AssignedTo.fromJson(Map<String, dynamic> json) => AssignedTo(
        id: json["id"],
        employeeName: json["employee_name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "employee_name": employeeName,
    };
}

class EnquiriesFollowup {
    int id;
    int enquiryId;
    int leadStatusId;
    String? remarks;
    DateTime? nextFollowupDate;
    dynamic lostReasonId;
    int createdBy;
    int? updatedBy;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    dynamic lostReason;
    EnquirySource leadStatus;

    EnquiriesFollowup({
        required this.id,
        required this.enquiryId,
        required this.leadStatusId,
        this.remarks,
        this.nextFollowupDate,
        this.lostReasonId,
        required this.createdBy,
        this.updatedBy,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        this.lostReason,
        required this.leadStatus,
    });

    factory EnquiriesFollowup.fromJson(Map<String, dynamic> json) => EnquiriesFollowup(
        id: json["id"],
        enquiryId: json["enquiry_id"],
        leadStatusId: json["lead_status_id"],
        remarks: json["remarks"],
        nextFollowupDate: json["next_followup_date"] == null ? null : DateTime.parse(json["next_followup_date"]),
        lostReasonId: json["lost_reason_id"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        lostReason: json["lost_reason"],
        leadStatus: EnquirySource.fromJson(json["lead_status"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "enquiry_id": enquiryId,
        "lead_status_id": leadStatusId,
        "remarks": remarks,
        "next_followup_date": "${nextFollowupDate!.year.toString().padLeft(4, '0')}-${nextFollowupDate!.month.toString().padLeft(2, '0')}-${nextFollowupDate!.day.toString().padLeft(2, '0')}",
        "lost_reason_id": lostReasonId,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "lost_reason": lostReason,
        "lead_status": leadStatus.toJson(),
    };
}

class EnquirySource {
    int id;
    String name;

    EnquirySource({
        required this.id,
        required this.name,
    });

    factory EnquirySource.fromJson(Map<String, dynamic> json) => EnquirySource(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}

class EnquiriesSubVertical {
    int id;
    int enquiryId;
    int subVerticalId;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    SubVertical subVertical;

    EnquiriesSubVertical({
        required this.id,
        required this.enquiryId,
        required this.subVerticalId,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        required this.subVertical,
    });

    factory EnquiriesSubVertical.fromJson(Map<String, dynamic> json) => EnquiriesSubVertical(
        id: json["id"],
        enquiryId: json["enquiry_id"],
        subVerticalId: json["sub_vertical_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        subVertical: SubVertical.fromJson(json["sub_vertical"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "enquiry_id": enquiryId,
        "sub_vertical_id": subVerticalId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "sub_vertical": subVertical.toJson(),
    };
}

class SubVertical {
    int id;
    int verticalId;
    Name name;
    EnquirySource vertical;

    SubVertical({
        required this.id,
        required this.verticalId,
        required this.name,
        required this.vertical,
    });

    factory SubVertical.fromJson(Map<String, dynamic> json) => SubVertical(
        id: json["id"],
        verticalId: json["vertical_id"],
        name: nameValues.map[json["name"]]!,
        vertical: EnquirySource.fromJson(json["vertical"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "vertical_id": verticalId,
        "name": nameValues.reverse[name],
        "vertical": vertical.toJson(),
    };
}

enum Name { BONNET, DENTING_AND_PAINTING, BODY_WORK }

final nameValues = EnumValues({
    "BODY WORK": Name.BODY_WORK,
    "BONNET": Name.BONNET,
    "DENTING AND PAINTING": Name.DENTING_AND_PAINTING
});

class EnquiriesVertical {
    int id;
    int enquiryId;
    int verticalId;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    EnquirySource vertical;

    EnquiriesVertical({
        required this.id,
        required this.enquiryId,
        required this.verticalId,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        required this.vertical,
    });

    factory EnquiriesVertical.fromJson(Map<String, dynamic> json) => EnquiriesVertical(
        id: json["id"],
        enquiryId: json["enquiry_id"],
        verticalId: json["vertical_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        vertical: EnquirySource.fromJson(json["vertical"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "enquiry_id": enquiryId,
        "vertical_id": verticalId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "vertical": vertical.toJson(),
    };
}

class EnquirySubsource {
    int id;
    String enquirySubsource;

    EnquirySubsource({
        required this.id,
        required this.enquirySubsource,
    });

    factory EnquirySubsource.fromJson(Map<String, dynamic> json) => EnquirySubsource(
        id: json["id"],
        enquirySubsource: json["enquiry_subsource"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "enquiry_subsource": enquirySubsource,
    };
}

class VehicleMake {
    int id;
    String make;

    VehicleMake({
        required this.id,
        required this.make,
    });

    factory VehicleMake.fromJson(Map<String, dynamic> json) => VehicleMake(
        id: json["id"],
        make: json["make"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "make": make,
    };
}

class VehicleModel {
    int id;
    String model;

    VehicleModel({
        required this.id,
        required this.model,
    });

    factory VehicleModel.fromJson(Map<String, dynamic> json) => VehicleModel(
        id: json["id"],
        model: json["model"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "model": model,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
