# A storm worker class
class storm::worker {
  include storm::zookeeper
  storm::enable{'supervisor':}
}
