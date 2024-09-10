enum AttributeType {
  product,
  service,
}

class AttributeUtils {
  static AttributeType getAttributeType({required String id}) {
    if (id.startsWith('1')) {
      return AttributeType.product;
    } else {
      return AttributeType.service;
    }
  }
}
