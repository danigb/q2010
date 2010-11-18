require 'yaml'

CONVERT = {}

class Importer
  def initialize
    @ignore = {}
    @replace = {}
  end

  def import
    data = YAML.load_file("db/import/q09.yml")
    data.each do |item|
      apply(item) if item['id']
    end

  end

  def apply(item)
    puts "Aplying #{item['id']}"
    user = User.find(item['id'])
    set(:user, user, item['user'])
    Survey::CUESTIONARIOS.each do |name|
      data = item[name.to_s]
      data ||= item["#{name}s"]
      set(name.to_sym, user.send("survey_#{name}"), data)
    end
  end

  def set(type, model, data)
    puts "SET #{type} - #{model.class.to_s}"
    if data.blank?
      puts "#{type} - NO DATA"
      return
    end

    #   puts "DATA #{data.inspect}"
    params = {}
    columns = model.class.column_names.clone
    data.keys.each do |key|
      name = columns.delete(key)
      unless name
        name = replacement(type, key)
        name = columns.delete(name)
      end
      
      if name
        value = data[key] ? data[key] : ''
        params[name] = value
      end
    end
    params.symbolize_keys!
    #puts "params #{params.inspect}"
    model.send(:attributes=, params, false)
    puts "SAVE: #{model.save(false)}"
    #puts "model: #{model.attributes.inspect}"
  end

  def replacement(type, key)
    rep = @replace[type.to_s]
    if rep
      rep[key]
    else
      puts "REPLACEMENTS No se encuentra '#{type}' [#{@replace.keys.join(',')}]"
      nil
    end
  end


  def replace(original, replacement)
    type,key = decode(original)
    @replace[type] ||= {}
    @replace[type][key] = replacement
  end

  def decode(original)
    split = original.split(':')
    return split[0],split[1]
  end
end

importer = Importer.new
importer.replace('user:password', nil)
importer.replace('presentacion:actividad_diseño','actividad_diseno')
importer.replace('tumisma:traject_eval_other','traject_eval')
importer.replace('experiencia:form_access_offer_#','form_access_offer')
importer.replace('experiencia:form_access_info_#', 'form_access_info')
importer.replace('experiencia:form_access_geo_#','form_access_geo')
importer.replace('experiencia:form_access_other_#','form_access_other')
importer.replace('experiencia:form_access_money_#','form_access_money')
importer.replace('experiencia:studies_eval_other',nil)
importer.replace('experiencia:formation_kind_other',nil)
importer.replace('experiencia:form_access_time_#','form_access_time')
importer.replace('dinero:grants_bad_grantpoor_#','grants_bad_grantpoor')
importer.replace('dinero:grants_bad_grantcriteria_#','grants_bad_grantcriteria')
importer.replace('dinero:grants_bad_grantage_#','grants_bad_grantage')
importer.replace('dinero:ajob_vocation_money_family_#','ajob_vocation_money_family')
importer.replace('dinero:grants_bad_granttime_#','grants_bad_granttime')
importer.replace('dinero:grants_bad_grantinfo_#','grants_bad_grantinfo')
importer.replace('dinero:laboral',nil)
importer.replace('dinero:ajob_vocation_money_sponsor_#','ajob_vocation_money_sponsor')
importer.replace('dinero:ajob_vocation_money_sale_#','ajob_vocation_money_sale')
importer.replace('dinero:grants_bad_grantgeo_#','grants_bad_grantgeo')
importer.replace('dinero:ajob_vocation_money_work_#','ajob_vocation_money_work')
importer.replace('dinero:ajob_vocation_money_grant_#','ajob_vocation_money_grant')
importer.replace('dinero:grants_bad_grantoffer_#','grants_bad_grantoffer')
importer.replace('autoria:author',nil)
importer.replace('habitat:culture_infra_cinema_#','culture_infra_cinema')
importer.replace('habitat:culture_infra_theater_#','culture_infra_theater')
importer.replace('habitat:culture_infra_concert_#','culture_infra_concert')
importer.replace('habitat:culture_infra_space_#','culture_infra_space')
importer.replace('habitat:culture_infra_museum_#','culture_infra_museum')
importer.replace('habitat:culture_infra_biblio_#','culture_infra_biblio')
importer.replace('habitat:culture_infra_internet_#','culture_infra_internet')
importer.replace('habitat:home',nil)
importer.replace('habitat:culture_infra_exhibition_#','culture_infra_exhibition')
importer.replace('habitat:culture_infra_social_#','culture_infra_social')
importer.replace('red:internet_cyber_#','internet_cyber')
importer.replace('red:internet_home_#','internet_home')
importer.replace('red:internet_work_#','internet_work')
importer.replace('comun:future_ocupy_#','future_ocupy')
importer.replace('comun:culture_action_movement_#','culture_action_movement')
importer.replace('comun:culture_action_group_#','culture_action_group')
importer.replace('comun:future_festival_#','future_festival')
importer.replace('comun:culture_action_sindicate_#','culture_action_sindicate')
importer.replace('comun:polis_action_polis_act_#','polis_action_polis_act')
importer.replace('comun:polis_action_polis_manifestation_#','polis_action_polis_manifestation')
importer.replace('comun:future_syndicate_#','future_syndicate')
importer.replace('comun:culture_action_asociation_#','culture_action_asociation')
importer.replace('comun:future_campaign_#','future_campaign')
importer.replace('comun:polis_action_polis_campaign_#','polis_action_polis_campaign')
importer.replace('comun:future_asociation_#','future_asociation')
importer.replace('comun:future_ofices_#','future_ofices')
importer.replace('comun:future_platform_#','future_platform')
importer.replace('comun:future_online_#','future_online')
importer.import