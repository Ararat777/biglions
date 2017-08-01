# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    Category.delete_all
    Page.delete_all
    Indent.delete_all
    category_main = Category.create(:title => 'main',:name => 'Главная')
    development = category_main.pages.create(:title => 'intro-development',:name => 'Мощная разработка сайтов')
    development.indents.create(:title => 'Рецепт по-настоящему мощного сайта состоит из множества ингридиентов и должен быть заправлен особенным соусом.',:image_url => '',:body => 'Ингредиенты знают все, соус - только мы.')
    development.indents.create(:title => '13',:image_url => '',:body => 'Не совсем адекватных, но крутых программистов')
    development.indents.create(:title => '15',:image_url => '',:body => 'Охваченных сфер при реализации проектов')
    development.indents.create(:title => '50',:image_url => '',:body => 'Тысячи часов проведенных в разработке "вкусных" проектов')
    development.indents.create(:title => '100+',:image_url => '',:body => 'Созданных проектов и точка.')

    marketing = category_main.pages.create(:title => 'intro-marketing',:name => 'Digital маркетинг')
    marketing.indents.create(:title => 'Рецепт по-настоящему мощного сайта состоит из множества ингридиентов и должен быть заправлен особенным соусом.',:image_url => '',:body => 'Ингредиенты знают все, соус - только мы.')
    marketing.indents.create(:title => '13',:image_url => '',:body => 'Не совсем адекватных, но крутых программистов')
    marketing.indents.create(:title => '15',:image_url => '',:body => 'Охваченных сфер при реализации проектов')
    marketing.indents.create(:title => '50',:image_url => '',:body => 'Тысячи часов проведенных в разработке "вкусных" проектов')
    marketing.indents.create(:title => '100+',:image_url => '',:body => 'Созданных проектов и точка.')


    design = category_main.pages.create(:title => 'intro-design',:name => 'Креативный дизайн')
    design.indents.create(:title => 'Рецепт по-настоящему мощного сайта состоит из множества ингридиентов и должен быть заправлен особенным соусом.',:image_url => '',:body => 'Ингредиенты знают все, соус - только мы.')
    design.indents.create(:title => '13',:image_url => '',:body => 'Не совсем адекватных, но крутых программистов')
    design.indents.create(:title => '15',:image_url => '',:body => 'Охваченных сфер при реализации проектов')
    design.indents.create(:title => '50',:image_url => '',:body => 'Тысячи часов проведенных в разработке "вкусных" проектов')
    design.indents.create(:title => '100+',:image_url => '',:body => 'Созданных проектов и точка.')


    category_team = Category.create(:title => 'about',:name => 'Компания')
    team = category_team.pages.create(:title => 'team',:name => 'Команда',:nav_name => 'Команда')
    team.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    team.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    team.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    team.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')


    mission = category_team.pages.create(:title => 'mission',:name => 'Наша миссия',:nav_name => 'Наша миссия')
    mission.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    mission.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')


    work = category_team.pages.create(:title => 'work',:name => 'Как мы работаем',:nav_name => 'Как мы работаем')
    work.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    work.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    work.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    work.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    work.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    work.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')

    
    client = category_team.pages.create(:title => 'client',:name => 'Наши клиенты',:nav_name => 'Наши клиенты')
    client.indents.create(:image_url => '/assets/tick.svg')
    client.indents.create(:image_url => '/assets/tick.svg')
    client.indents.create(:image_url => '/assets/tick.svg')
    client.indents.create(:image_url => '/assets/tick.svg')
    client.indents.create(:image_url => '/assets/tick.svg')
    client.indents.create(:image_url => '/assets/tick.svg')
    client.indents.create(:image_url => '/assets/tick.svg')
    client.indents.create(:image_url => '/assets/tick.svg')
    client.indents.create(:image_url => '/assets/tick.svg')
    client.indents.create(:image_url => '/assets/tick.svg')
    client.indents.create(:image_url => '/assets/tick.svg')
    client.indents.create(:image_url => '/assets/tick.svg')
    client.indents.create(:image_url => '/assets/tick.svg')
    client.indents.create(:image_url => '/assets/tick.svg')

    category_team.pages.create(:title => 'ourteam', :name => 'Наша команда',:nav_name => 'Наша команда')
    certificates = category_team.pages.create(:title => 'certificates',:name => 'Сертификаты',:nav_name => 'Сертификаты')
    certificates.indents.create(:image_url =>'/assets/tick.svg')
    certificates.indents.create(:image_url =>'/assets/tick.svg')
    certificates.indents.create(:image_url =>'/assets/tick.svg')
    certificates.indents.create(:image_url =>'/assets/tick.svg')
    category_team.pages.create(:title => 'reviews',:name => 'Отзывы',:nav_name => 'Отзывы')
    Review.delete_all
    Review.create(:name => 'Александр Рыбаков', :site => 'www.brazzers.com', :body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    Review.create(:name => 'Александр Рыбаков', :site => 'www.brazzers.com', :body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    Review.create(:name => 'Александр Рыбаков', :site => 'www.brazzers.com', :body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    Review.create(:name => 'Александр Рыбаков', :site => 'www.brazzers.com', :body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    category_team.pages.create(:title => 'vacantions', :name => 'Работать с нами',:nav_name => 'Работать с нами')

    category_services = Category.create(:title => 'services',:name => 'Услуги')
    services = category_services.pages.create(:title => 'services', :name => 'Услуги',:nav_name => 'Услуги')
    services.indents.create(:body => 'Мы предоставляем широкий спектр услуг в сфере Digital')

    webdevelopment = category_services.pages.create(:title => 'webdevelopment', :name => 'Веб-разработка',:nav_name => 'Веб-разработка')
    webdevelopment.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',:image_url => '/assets/webdevelopment-item.png')

    marketing = category_services.pages.create(:title => 'marketing', :name => 'Маркетинг',:nav_name => 'Маркетинг')
    marketing.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',:image_url => '/assets/marketing-item.png')

    design = category_services.pages.create(:title => 'design', :name => 'Дизайн',:nav_name => 'Дизайн')
    design.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',:image_url => '/assets/design-item.png')

    cat_webdevelopment = category_services.categories.create(:title => 'webdevelopment', :name => 'Веб-разработка')
    cat_webdevelopment.categories.create(:title => 'promo_sites', :name => 'Промо сайты')
    cat_webdevelopment.categories.create(:title => 'internet_shop', :name => 'Интернет магазины')
    cat_webdevelopment.categories.create(:title => 'landing_page', :name => 'Лендинг пейдж')
    cat_webdevelopment.categories.create(:title => 'support_site', :name => 'Поддержка сайтов')
    cat_webdevelopment.categories.create(:title => 'non-standart_solutions', :name => 'Нестандартные решения')

    cat_marketing = category_services.categories.create(:title => 'marketing', :name => 'Маркетинг')
    cat_marketing.categories.create(:title => 'SEO', :name => 'СЕО')
    cat_marketing.categories.create(:title => 'advertising', :name => 'Контекстная реклама')
    cat_marketing.categories.create(:title => 'SMM', :name => 'СММ')
    cat_marketing.categories.create(:title => 'auditing', :name => 'Аудит рекламных компания и сайтов')

    page_marketing = cat_marketing.pages.create(:title => 'marketing',:name => 'Маркетинг',:nav_name => 'Маркетинг')
    page_marketing.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',:image_url => '/assets/marketing-item.png')

    advancement = cat_marketing.pages.create(:title => 'advancement', :name => 'PROдвигаем ваш маркетинг', :nav_name => 'Продвижение')
    advancement.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')

    why_advancement = cat_marketing.pages.create(:title => 'why_advancement', :name => 'Зачем нужно продвигать сайт', :nav_name => 'Зачем продвижение')
    why_advancement.indents.create(:title => 'Увеличение прибыли',:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',:image_url => '/assets/marketing-item.png')
    why_advancement.indents.create(:title => 'Уменьшение стоимости привлечения клиента',:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',:image_url => '/assets/face-icon.svg')
    why_advancement.indents.create(:title => 'Большой охват аудитории',:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',:image_url => '/assets/graphic-icon.svg')
    why_advancement.indents.create(:title => 'Повышение узнаваемости',:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',:image_url => '/assets/fire-icon.svg')

    why_us = cat_marketing.pages.create(:title => 'why_us',:name => 'Почему нужно доверится нам',:nav_name => 'Почему мы')
    why_us.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    why_us.indents.create(:title => 'Проффесионализм',:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',:image_url => '/assets/shield-icon.svg')
    why_us.indents.create(:title => 'Креативность',:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',:image_url => '/assets/eye-icon.svg')
    why_us.indents.create(:title => '100 выполненых проектов',:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',:image_url => '/assets/bag-icon.svg')
    why_us.indents.create(:title => 'Работа на результат',:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',:image_url => '/assets/like-icon.svg')

    internet_marketing = cat_marketing.pages.create(:title => 'internet_marketing', :name => 'Комплексный интернет маркетинг', :nav_name => 'Инет маркетинг')
    internet_marketing.indents.create(:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    internet_marketing.indents.create(:title => 'Аудит сайта',:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    internet_marketing.indents.create(:title => 'SEO-продвижение сайта',:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    internet_marketing.indents.create(:title => 'Контекстная реклама',:body => 'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor')
    


    cat_design = category_services.categories.create(:title => 'design', :name => 'Дизайн')
    cat_design.categories.create(:title => 'interface_design', :name => 'Проектирование интерфейсов')
    cat_design.categories.create(:title => 'prototyping', :name => 'Прототипирование')
    cat_design.categories.create(:title => 'corporate_style', :name => 'Фирменный стиль')
    cat_design.categories.create(:title => 'out_advertising', :name => 'Наружная реклама')
    AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')