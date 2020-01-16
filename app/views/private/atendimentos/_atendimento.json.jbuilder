json.extract! atendimento, :id, :numero, :ano, :assunto_id, :data_abertura, :data_finalizacao, :data_arquivamento, :texto, :created_at, :updated_at
json.url private_atendimento_url(atendimento, format: :json)
