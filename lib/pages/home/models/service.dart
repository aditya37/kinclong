class ServiceModel {
  int id;
  String? serviceName;
  String iconPath;

  // constructor
  ServiceModel({
    this.serviceName,
    this.iconPath = "",
    this.id = 0,
  });

  // init service item
  static final List<ServiceModel> initListService = [
    ServiceModel(
      id: 1,
      serviceName: "Cuci Satuan",
      iconPath: "ic_cuci_satuan.svg",
    ),
    ServiceModel(serviceName: "Cuci Lipat", iconPath: "ic_cuci_lipat.svg"),
    ServiceModel(serviceName: "Cuci Setrika", iconPath: "ic_cuci_setrika.svg"),
    ServiceModel(id: 2, serviceName: "Pickup", iconPath: "ic_pickup.svg"),
    ServiceModel(serviceName: "Cuci Karpet", iconPath: "ic_cuci_karpet.svg"),
    ServiceModel(serviceName: "Cuci Sepatu", iconPath: "ic_cuci_sepatu.svg"),
  ];

  // getter (method get)
  static List<ServiceModel> get allServices => initListService;
}
