# Nimbus instance
class storm::nimbus {
  include storm
  storm::enable{'nimbus':}
  storm::enable{'ui':}
  storm::service{'storm-nimbus': }
  storm::service{'storm-ui': }
}
