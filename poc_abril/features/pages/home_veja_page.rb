class HomeVeja < SitePrism::Page

  set_url $base_urls['sites_url']['veja']
# Modal
  element :fechar_modal_info, "div[class='ilabspush-close ilabspush-btn-close']"
  element :fechar_modal_news, "div[id='pnosp_div_close']"
#newsletter
  element :click_newsletter, "div[class='widget-newsletter newsletter-widget widget-box with-border custom-title']"
  element :name_newsletter_txt, "input[id='newsletter-nome']"
  element :email_newsletter_txt, "input[id='newsletter-email']"
  element :btn_newsletter, "button[class='widget-newsletter-button']"
  element :msg_newsletter_txt, "span[class='widget-newsletter-success-message display-block']"
#Assine_Abril
  element :lst_session, "div[id='abril_barra_assine_widget-6']"
  elements :produtos_assine_abril_text, "div[class='assine-abril text-center'] div[class='col-md-2 col-xs-6'] div[class='name']"
#Footer
  element :click_footer, "footer[class='footer'] "
  elements :lst_footer_references_abril, "footer[class='footer'] ul[id='menu-sites-abril'] li"


#Metodos
  def preencher_newsletter(nome, email)
    name_newsletter_txt.set nome
    email_newsletter_txt.set email
    btn_newsletter.click
  end

  def validar_modal
    wait_for_fechar_modal_info
    if has_fechar_modal_info?
      fechar_modal_info.click
      fechar_modal_news.click
    end
  end
end
