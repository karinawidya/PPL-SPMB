require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given(/^I Open the SPMB homepage$/) do  
    driver.navigate.to "http://spmb.polinema.ac.id"
end

Then (/^user click on profil tab$/) do
    driver.find_element(:link_text,'Program Studi').click();
    sleep(5)
end

Then (/^user click on kegiatan tab$/) do
    driver.find_element(:link_text,'Prodi Pilihan').click
    sleep(5)
end

Then (/^user click on info tab$/) do
    driver.find_element(:link_text,'Info Pendaftaran').click
    sleep(5)
end

Then (/^user click on mekanisme tab$/) do
    driver.find_element(:link_text,'Mekanisme Pembayaran').click
    sleep(5)
end

Then (/^user click on peta tab$/) do
    driver.find_element(:link_text,'Peta Lokasi').click
    sleep(5)
end

# Then (/^user click on foto$/) do
#     driver.find_element(:link,'Foto').click
# end

# Then (/^user click faq$/) do
#     driver.find_element(:link,'FAQ').click
# end