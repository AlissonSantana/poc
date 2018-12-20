# Helpers
module Helpers

  def aguardar_mudanca_tela_por_titulo(timeout_segundos=15, titulo_pagina)
    begin
      Timeout::timeout(timeout_segundos) do
        while true
          sleep 1
          break if page.title == titulo_pagina
        end
      end
    rescue Timeout::Error
      #Kernel.puts 
      raise "Tela: [#{titulo_pagina}] demorou mais de #{timeout_segundos} segundos para carregar."
    end
  end

end
World Helpers
