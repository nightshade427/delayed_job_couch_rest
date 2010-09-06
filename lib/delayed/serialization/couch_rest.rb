class CouchRest::ExtendedDocument
  yaml_as "tag:ruby.yaml.org,2002:CouchRest"
  
  def reload
    job = self.class.get self['_id']
    job.each {|k,v| self[k] = v}
  end
  def self.find(id)
    get id
  end
  def self.yaml_new(klass, tag, val)
    klass.get(val['_id'])
  end
  def to_yaml_properties
    ['@id']
  end  
  def ==(other)
    if other.is_a? ::CouchRest::ExtendedDocument
      self['_id'] == other['_id']
    else
      super
    end
  end
end
