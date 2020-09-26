# frozen_string_literal: true

require 'json'

require_relative './file_manager'
require_relative './acao'

# lista de acoes cadastradas
class AcaoList
  def initialize
    @file_manager = FileManager.new
    @acao_list = []
  end

  def listar_todas_acoes
    hash_acao_list = []
    hash_acao_list << @acao_list.map do |acao|
      acao.to_hash
    end
    puts hash_acao_list
  end

  def listar_acao
    puts 'list_action'
  end

  def listar_valores_de_uma_acao
    puts 'list_action_values'
  end

  def criar_acao
    acao = Acao.new('001')
    @acao_list << acao
  end

  def adicionar_valor_em_acao
    puts 'add_action_value'
  end

  def edita_codigo_de_uma_acao
    puts 'edit_action_code'
  end

  def edita_valor_de_uma_acao
    puts 'edit_action_value'
  end

  def editar_data_de_uma_acao
    puts 'edit_action_date'
  end

  def deletar_acao
    puts 'delete_action'
  end

  def remover_valor_de_uma_acao
    puts 'remove_action_value'
  end

  def load
    @acao_list = @file_manager.read_file
  end

  def save
    hash_acao_list = []
    hash_acao << acao_list.map do |acao|
      acao.to_hash
    end
    @acao_list = @file_manager.write_file
  end
end
