# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :contatos,
    [Types::ContatoType],
    null: false, 
    description: "Retorna uma lista de contatos"

    def contatos
      Contato.all
    end 

    def contatos_por_nome(nome:)
      Contato.where("nome LIKE ?", "%#{nome}%")
    end
  end
end

