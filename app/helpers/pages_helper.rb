module PagesHelper
	def contact_info_generator

		str = '<div class="col-md-2 center-text card contact">'
		str += "<div class='row justify-content-md-center'>"
		str += "<div class='col-md-12'>#{link_to((fa_icon 'facebook',text: 'FaceBook'), @contact.facebook, class: 'social-link link body-font')}</div>" if strcheck @contact.facebook
		str += "<div class='col-md-12'>#{link_to((fa_icon 'camera-retro',text: 'Instagram'), @contact.instagram, class: "social-link link body-font")}</div>" if strcheck @contact.instagram
		str += "<div class='col-md-12'>#{link_to((fa_icon 'twitter',text: 'Twitter'), @contact.twitter, class: "social-link link body-font")}</div>" if strcheck @contact.twitter
		str += "<div class='col-md-12'>#{link_to((fa_icon 'linkedin',text: 'LinkedIn'), @contact.linkedin, class: "social-link link body-font")}</div>" if strcheck @contact.linkedin

		str += "</div>"	
		str += link_to("Edit Contact and About", edit_contact_info_path(@contact)) if (logged_in?(:admin))
		str += "</div>"

		str.html_safe
	end

private

	def strcheck str
		str && str != ""
	end
end
