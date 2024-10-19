# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      panel "Wallet Balance" do
        div class: "dashboard-wallet-balance" do
          h3 number_to_currency(current_admin_user.wallet.balance, unit: "$", precision: 2)
        end
      end
    end 
  end
end
