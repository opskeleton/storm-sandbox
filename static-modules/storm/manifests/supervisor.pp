# Storm supervisor class
class storm::supervisor {
  include storm
  include storm::zookeeper
  storm::enable{'supervisor':}
  storm::service{'storm-supervisor': }
}
