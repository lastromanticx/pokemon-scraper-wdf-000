class Pokemon
  attr_reader :id, :name, :type, :db

  def initialize(id,name,type,db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name,type,db)
    insert = db.prepare("INSERT INTO pokemon (name, type) VALUES (?, ?)")
    insert.execute(name,type)
  end

  def self.find(id,db)
    db.execute("SELECT * from pokemon WHERE id = ?",id)
  end
end
