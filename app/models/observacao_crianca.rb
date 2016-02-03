class ObservacaoCrianca < ActiveRecord::Base
  belongs_to :crianca , :dependent => :destroy

end
