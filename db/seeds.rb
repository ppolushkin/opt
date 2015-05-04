# coding: utf-8

# In order to use it:
#~/RoR/obelisk$ rake db:seed

Product.delete_all

Page.delete_all

Revision.delete_all

#use this sql to get products
#
#select 'Product.create(:article => \'',article,'\', :name => \'', name, '\', :height => \'', height, '\', :width => \'',width, '\', :notes => %{',notes, '}, :small_image_name => \'/images/foto/', small_image_name,
#'\', :big_image_name => \'/images/foto/', big_image_name, '\', :extra_image_name => \'/images/foto/', extra_image_name, '\', :price => ', price, ')'
#from products

Product.create(:article => 'В071', :name => 'Снежинка-1', :height => '90', :width => '60', :small_image_name => '/images/foto/V071-s.jpg', :big_image_name => '/images/foto/V071-b.jpg', :extra_image_name => '/images/foto/V071-e.jpg', :price => 260)
Product.create(:article => 'В051', :name => 'Слеза', :height => '130', :width => '70', :small_image_name => '/images/foto/V051-s.jpg', :big_image_name => '/images/foto/V051-b.jpg', :extra_image_name => '/images/foto/V051-e.jpg', :price => 450)
Product.create(:article => 'В166', :name => 'Ника', :height => '110', :width => '60', :small_image_name => '/images/foto/V166-s.jpg', :big_image_name => '/images/foto/V166-b.jpg', :extra_image_name => '/images/foto/V166-e.jpg', :price => 520)
Product.create(:article => 'К021', :name => 'Лодочка', :height => '40', :width => '40', :notes => %{Каркас <b>ритуальной корзины</b> выполнен в форме ладьи, украшена цветами лотоса и лентой.}, :small_image_name => '/images/foto/Q021-s.jpg', :big_image_name => '/images/foto/Q021-b.jpg', :extra_image_name => '/images/foto/Q021-e.jpg', :price => 60)
Product.create(:article => 'К031', :name => 'Кувшин', :height => '80', :width => '40', :small_image_name => '/images/foto/Q031-s.jpg', :big_image_name => '/images/foto/Q031-b.jpg', :extra_image_name => '/images/foto/Q031-e.jpg', :price => 120)
Product.create(:article => 'К011', :name => 'Лилия', :height => '90', :width => '50', :small_image_name => '/images/foto/Q011-s.jpg', :big_image_name => '/images/foto/Q011-b.jpg', :extra_image_name => '/images/foto/Q011-e.jpg', :price => 230)
Product.create(:article => 'К043', :name => 'Подсвечник', :height => '45', :width => '45', :small_image_name => '/images/foto/Q043-s.jpg', :big_image_name => '/images/foto/Q043-b.jpg', :extra_image_name => '/images/foto/Q043-e.jpg', :price => 80)
Product.create(:article => 'К081', :name => 'Поляна', :height => '70', :width => '60', :small_image_name => '/images/foto/Q081-s.jpg', :big_image_name => '/images/foto/Q081-b.jpg', :extra_image_name => '/images/foto/Q081-e.jpg', :price => 270)
Product.create(:article => 'В081', :name => 'Огонек', :height => '130', :width => '60', :notes => %{Различные цветовые решения, гвоздика, розы, гладиолусы}, :small_image_name => '/images/foto/V081-s.jpg', :big_image_name => '/images/foto/V081-b.jpg', :extra_image_name => '/images/foto/V081-e.jpg', :price => 320)
Product.create(:article => 'В461', :name => 'Жар-птица', :height => '90', :width => '60', :small_image_name => '/images/foto/V461-s.jpg', :big_image_name => '/images/foto/V461-b.jpg', :extra_image_name => '/images/foto/V461-e.jpg', :price => 330)
Product.create(:article => 'В1621', :name => 'Мария 2', :height => '110', :width => '65', :small_image_name => '/images/foto/V1621-s.jpg', :big_image_name => '/images/foto/V1621-b.jpg', :extra_image_name => '/images/foto/V1621-e.jpg', :price => 550)
Product.create(:article => 'К091', :name => 'Лукошко', :height => '50', :width => '30', :small_image_name => '/images/foto/Q091-s.jpg', :big_image_name => '/images/foto/Q091-b.jpg', :extra_image_name => '/images/foto/Q091-e.jpg', :price => 100)
Product.create(:article => 'В111', :name => 'Соната', :height => '90', :width => '60', :small_image_name => '/images/foto/V111-s.jpg', :big_image_name => '/images/foto/V111-b.jpg', :extra_image_name => '/images/foto/V111-e.jpg', :price => 260)
Product.create(:article => 'В131', :name => 'Отражение', :height => '95', :width => '60', :small_image_name => '/images/foto/V131-s.jpg', :big_image_name => '/images/foto/V131-b.jpg', :extra_image_name => '/images/foto/V131-e.jpg', :price => 390)
Product.create(:article => 'В121', :name => 'Звезда', :height => '150', :width => '150', :notes => %{<b>Венок</b> из серии "Защитникам Отечества". Оригинальное исполнением в форме звезды. Символика российского флага в центре выполнена из крупных гвоздик.}, :small_image_name => '/images/foto/V121-s.jpg', :big_image_name => '/images/foto/V121-b.jpg', :extra_image_name => '/images/foto/V121-e.jpg', :price => 1320)
Product.create(:article => 'В141', :name => 'Прощание', :height => '100', :width => '70', :small_image_name => '/images/foto/V141-s.jpg', :big_image_name => '/images/foto/V141-b.jpg', :extra_image_name => '/images/foto/V141-e.jpg', :price => 450)
Product.create(:article => 'В167', :name => 'Увертюра', :height => '110', :width => '60', :small_image_name => '/images/foto/V167-s.jpg', :big_image_name => '/images/foto/V167-b.jpg', :extra_image_name => '/images/foto/V167-e.jpg', :price => 520)
Product.create(:article => 'В112', :name => 'Троица', :height => '90', :width => '60', :small_image_name => '/images/foto/V112-s.jpg', :big_image_name => '/images/foto/V112-b.jpg', :extra_image_name => '/images/foto/V112-e.jpg', :price => 240)
Product.create(:article => 'В142', :name => 'Звездопад', :height => '100', :width => '70', :small_image_name => '/images/foto/V142-s.jpg', :big_image_name => '/images/foto/V142-b.jpg', :extra_image_name => '/images/foto/V142-e.jpg', :price => 530)
Product.create(:article => 'В093', :name => 'Волна', :height => '80', :width => '60', :small_image_name => '/images/foto/V093-s.jpg', :big_image_name => '/images/foto/V093-b.jpg', :extra_image_name => '/images/foto/V093-e.jpg', :price => 260)
Product.create(:article => 'В351', :name => 'Ажурный венок', :height => '145', :width => '100', :small_image_name => '/images/foto/V351-s.jpg', :big_image_name => '/images/foto/V351-b.jpg', :extra_image_name => '/images/foto/V351-e.jpg', :price => 600)
Product.create(:article => 'В366', :name => 'Амелия', :height => '80', :width => '45', :small_image_name => '/images/foto/V366-s.jpg', :big_image_name => '/images/foto/V366-b.jpg', :extra_image_name => '/images/foto/V366-e.jpg', :price => 250)
Product.create(:article => 'В151', :name => 'Акварель', :height => '140', :width => '70', :notes => %{ }, :small_image_name => '/images/foto/V151-s.jpg', :big_image_name => '/images/foto/V151-b.jpg', :extra_image_name => '/images/foto/V151-e.jpg', :price => 760)
Product.create(:article => 'В161', :name => 'Мираж', :height => '110', :width => '65', :small_image_name => '/images/foto/V161-s.jpg', :big_image_name => '/images/foto/V161-b.jpg', :extra_image_name => '/images/foto/V161-e.jpg', :price => 490)
Product.create(:article => 'В171', :name => 'Орион', :height => '90', :width => '50', :small_image_name => '/images/foto/V171-s.jpg', :big_image_name => '/images/foto/V171-b.jpg', :extra_image_name => '/images/foto/V171-e.jpg', :price => 250)
Product.create(:article => 'В172', :name => 'Гладиатор', :height => '90', :width => '50', :notes => %{Центр цветочной композиции составляют три крупные лилии, в разные стороны от которых выложены гладиолусы и каллы. По контуру ритуальный венок украшен лентой.   }, :small_image_name => '/images/foto/V172-s.jpg', :big_image_name => '/images/foto/V172-b.jpg', :extra_image_name => '/images/foto/V172-e.jpg', :price => 310)
Product.create(:article => 'В185', :name => 'Джульетта', :height => '140', :width => '70', :small_image_name => '/images/foto/V185-s.jpg', :big_image_name => '/images/foto/V185-b.jpg', :extra_image_name => '/images/foto/V185-e.jpg', :price => 870)
Product.create(:article => 'В113', :name => 'Ратный', :height => '90', :width => '60', :notes => %{Ритуальный траурный венок из серии "Защитникам Отечества" украшают триколор,выполненный из гвоздик и лент,фурнитура в форме звезды,золотой лист и белый мелкоцвет.}, :small_image_name => '/images/foto/V113-s.jpg', :big_image_name => '/images/foto/V113-b.jpg', :extra_image_name => '/images/foto/V113-e.jpg', :price => 360)
Product.create(:article => 'В091', :name => 'Капля-1', :height => '80', :width => '60', :small_image_name => '/images/foto/V091-s.jpg', :big_image_name => '/images/foto/V091-b.jpg', :extra_image_name => '/images/foto/V091-e.jpg', :price => 260)
Product.create(:article => 'В043', :name => 'Колибри', :height => '70', :width => '55', :small_image_name => '/images/foto/V043-s.jpg', :big_image_name => '/images/foto/V043-b.jpg', :extra_image_name => '/images/foto/V043-e.jpg', :price => 150)
Product.create(:article => 'В013', :name => 'Лист', :height => '80', :width => '40', :notes => %{В центре ритуального венка - три розы, мелкоцвет, листья. Сверху и снизу - цветы табака, по контуру - цветы мальвы и лента. }, :small_image_name => '/images/foto/V013-s.jpg', :big_image_name => '/images/foto/V013-b.jpg', :extra_image_name => '/images/foto/V013-e.jpg', :price => 150)
Product.create(:article => 'В152', :name => ' Слава героям', :height => '140', :width => '100', :notes => %{Серия "Защитникам Отечества". <b>Ритуальный венок</b> для возложения павшим героям.}, :small_image_name => '/images/foto/V152-s.jpg', :big_image_name => '/images/foto/V152-b.jpg', :extra_image_name => '/images/foto/V152-e.jpg', :price => 980)
Product.create(:article => 'В181', :name => 'Виктория', :height => '135', :width => '75', :notes => %{Сверху - цветочная композиция, составленная из роз разного размера, белого мелкоцвета и листьев. Форму каркаса подчеркивают красные гвоздики и белые ромашки.}, :small_image_name => '/images/foto/V181-s.jpg', :big_image_name => '/images/foto/V181-b.jpg', :extra_image_name => '/images/foto/V181-e.jpg', :price => 730)
Product.create(:article => 'В211', :name => 'Ариадна', :height => '90', :width => '50', :small_image_name => '/images/foto/V211-s.jpg', :big_image_name => '/images/foto/V211-b.jpg', :extra_image_name => '/images/foto/V211-e.jpg', :price => 200)
Product.create(:article => 'В191', :name => 'Роса', :height => '50', :width => '35', :small_image_name => '/images/foto/V191-s.jpg', :big_image_name => '/images/foto/V191-b.jpg', :extra_image_name => '/images/foto/V191-e.jpg', :price => 70)
Product.create(:article => 'В453', :name => 'Феникс', :height => '90', :width => '60', :small_image_name => '/images/foto/V453-s.jpg', :big_image_name => '/images/foto/V453-b.jpg', :extra_image_name => '/images/foto/V453-e.jpg', :price => 290)
Product.create(:article => 'К101', :name => 'Ажурная средняя', :height => '70', :width => '50', :small_image_name => '/images/foto/Q101-s.jpg', :big_image_name => '/images/foto/Q101-b.jpg', :extra_image_name => '/images/foto/Q101-e.jpg', :price => 170)
Product.create(:article => 'К111', :name => 'Большая Ажурная корзина', :height => '100', :width => '70', :small_image_name => '/images/foto/Q111-s.jpg', :big_image_name => '/images/foto/Q111-b.jpg', :extra_image_name => '/images/foto/Q111-e.jpg', :price => 400)
Product.create(:article => 'В052', :name => 'Вечный Огонь', :height => '130', :width => '70', :small_image_name => '/images/foto/V052-s.jpg', :big_image_name => '/images/foto/V052-b.jpg', :extra_image_name => '/images/foto/V052-e.jpg', :price => 480)
Product.create(:article => 'В075', :name => 'Скарлетт', :height => '95', :width => '60', :small_image_name => '/images/foto/V075-s.jpg', :big_image_name => '/images/foto/V075-b.jpg', :extra_image_name => '/images/foto/V075-e.jpg', :price => 310)
Product.create(:article => 'В212', :name => 'Вега', :height => '90', :width => '50', :small_image_name => '/images/foto/V212-s.jpg', :big_image_name => '/images/foto/V212-b.jpg', :extra_image_name => '/images/foto/V212-e.jpg', :price => 200)
Product.create(:article => 'В213', :name => 'Флора', :height => '90', :width => '50', :small_image_name => '/images/foto/V213-s.jpg', :big_image_name => '/images/foto/V213-b.jpg', :extra_image_name => '/images/foto/V213-e.jpg', :price => 200)
Product.create(:article => 'В182', :name => 'Диана', :height => '140', :width => '70', :notes => %{Оригинально оформленный <b>ритуальный венок</b> является одним из лидеров продаж. Розы, гвоздики, амарилисы, гладиолусы, листва.}, :small_image_name => '/images/foto/V182-s.jpg', :big_image_name => '/images/foto/V182-b.jpg', :extra_image_name => '/images/foto/V182-e.jpg', :price => 780)
Product.create(:article => 'В162', :name => 'Мария', :height => '110', :width => '65', :small_image_name => '/images/foto/V162-s.jpg', :big_image_name => '/images/foto/V162-b.jpg', :extra_image_name => '/images/foto/V162-e.jpg', :price => 550)
Product.create(:article => 'К121', :name => 'Кашпо', :height => '60', :width => '50', :notes => %{Изготовлена в форме большого вазона, в который помещены цветы. Имеется откидывающаяся ручка для более удобной переноски корзины.}, :small_image_name => '/images/foto/Q121-s.jpg', :big_image_name => '/images/foto/Q121-b.jpg', :extra_image_name => '/images/foto/Q121-e.jpg', :price => 270)
Product.create(:article => 'В231', :name => 'Гектор', :height => '110', :width => '65', :notes => %{Ритуальный венок великолепен в своей простоте. Четыре крупных розы в центре окружены полукругом гвоздик, по краю каркас оплетен темнозеленой хвоей с белыми кончиками.}, :small_image_name => '/images/foto/V231-s.jpg', :big_image_name => '/images/foto/V231-b.jpg', :extra_image_name => '/images/foto/V231-e.jpg', :price => 280)
Product.create(:article => 'В241', :name => 'Невский', :height => '75', :width => '50', :notes => %{"Защитникам Отечества". }, :small_image_name => '/images/foto/V241-s.jpg', :big_image_name => '/images/foto/V241-b.jpg', :extra_image_name => '/images/foto/V241-e.jpg', :price => 190)
Product.create(:article => 'К131', :name => 'Малая Ажурная', :height => '55', :width => '35', :small_image_name => '/images/foto/Q131-s.jpg', :big_image_name => '/images/foto/Q131-b.jpg', :extra_image_name => '/images/foto/NULL', :price => 90)
Product.create(:article => 'В261', :name => 'Скиф', :height => '80', :width => '50', :small_image_name => '/images/foto/V261-s.jpg', :big_image_name => '/images/foto/V261-b.jpg', :extra_image_name => '/images/foto/NULL', :price => 190)
Product.create(:article => 'В271', :name => 'Лира', :height => '60', :width => '40', :small_image_name => '/images/foto/V271-s.jpg', :big_image_name => '/images/foto/V271-b.jpg', :extra_image_name => '/images/foto/V271-e.jpg', :price => 80)
Product.create(:article => 'К141', :name => 'Свеча', :height => '145', :width => '80', :small_image_name => '/images/foto/Q141-s.jpg', :big_image_name => '/images/foto/Q141-b.jpg', :extra_image_name => '/images/foto/Q141-e.jpg', :price => 930)
Product.create(:article => 'К032', :name => 'Кувшин-2', :height => '80', :width => '40', :small_image_name => '/images/foto/Q032-s.jpg', :big_image_name => '/images/foto/Q032-b.jpg', :extra_image_name => '/images/foto/Q032-e.jpg', :price => 150)
Product.create(:article => 'В163', :name => 'Марго', :height => '110', :width => '60', :notes => %{<b>Ритуальный венок</b> с пышной цветочной композицией сверху (розы, гладиолусы, мелкоцвет, листва). Снизу -  православный крест и колос, по контуру <b>венок</b> обрамлен траурной черной лентой.}, :small_image_name => '/images/foto/V163-s.jpg', :big_image_name => '/images/foto/V163-b.jpg', :extra_image_name => '/images/foto/V163-e.jpg', :price => 700)
Product.create(:article => 'В281', :name => 'Арка', :height => '115', :width => '65', :notes => %{Оригинальный <b>ритуальный венок</b>-корзина, выполненный в форме арки. В вазе  стоит большой букет роз, над ним -  православный крест. Венок украшает золотая фурнитура и пышные розы.}, :small_image_name => '/images/foto/V281-s.jpg', :big_image_name => '/images/foto/V281-b.jpg', :extra_image_name => '/images/foto/V281-e.jpg', :price => 680)
Product.create(:article => 'В183', :name => 'Викинг', :height => '140', :width => '70', :notes => %{Цветочный орнамент выполнен секторами. Голубые гладиолусы, пышная листва, белые каллы. <b>Траурный венок</b> украшен фурнитурой в виде свечи.}, :small_image_name => '/images/foto/V183-s.jpg', :big_image_name => '/images/foto/V183-b.jpg', :extra_image_name => '/images/foto/V183-e.jpg', :price => 800)
Product.create(:article => 'В164', :name => 'Реквием', :height => '110', :width => '60', :notes => %{Этот <b>траурный венок</b> выполнен в европейском стиле. Пышная композиция из белых роз, лилий и гвоздики, снизу украшен черно-золотой сеткой.}, :small_image_name => '/images/foto/V164-s.jpg', :big_image_name => '/images/foto/V164-b.jpg', :extra_image_name => '/images/foto/V164-e.jpg', :price => 820)
Product.create(:article => 'В102', :name => 'Мадонна', :height => '180', :width => '90', :notes => %{Фигура Мадонны окружена цветочной композицией , состоящей из белых роз, георгинов, гладиолусов и листьев. Черно-золотая сетка. }, :small_image_name => '/images/foto/V102-s.jpg', :big_image_name => '/images/foto/V102-b.jpg', :extra_image_name => '/images/foto/V102-e.jpg', :price => 820)
Product.create(:article => 'В291', :name => 'Легенда', :height => '110', :width => '45', :notes => %{Ритуальный венок украшают лилии, цветы табака, листья. По краю выложен колос из золотой ленты, сверху - пышный бант.}, :small_image_name => '/images/foto/V291-s.jpg', :big_image_name => '/images/foto/V291-b.jpg', :extra_image_name => '/images/foto/V291-e.jpg', :price => 250)
Product.create(:article => 'В301', :name => 'Русич', :height => '100', :width => '70', :notes => %{Привлекает внимание оригинальная форма этого <b>ритуального венка</b>, в центре которой находится золотой православный крест. В цветочной композиции использованы лилии, гладиолусы, листья папоротника, табак.}, :small_image_name => '/images/foto/V301-s.jpg', :big_image_name => '/images/foto/V301-b.jpg', :extra_image_name => '/images/foto/V301-e.jpg', :price => 520)
Product.create(:article => 'В132', :name => 'Енисей', :height => '95', :width => '60', :small_image_name => '/images/foto/V132-s.jpg', :big_image_name => '/images/foto/V132-b.jpg', :extra_image_name => '/images/foto/V132-e.jpg', :price => 480)
Product.create(:article => 'В214', :name => 'Амулет', :height => '95', :width => '65', :small_image_name => '/images/foto/V214-s.jpg', :big_image_name => '/images/foto/V214-b.jpg', :extra_image_name => '/images/foto/V214-e.jpg', :price => 240)
Product.create(:article => 'В042', :name => 'Фаберже', :height => '70', :width => '50', :small_image_name => '/images/foto/V042-s.jpg', :big_image_name => '/images/foto/V042-b.jpg', :extra_image_name => '/images/foto/V042-e.jpg', :price => 170)
Product.create(:article => 'В133', :name => 'Джоконда', :height => '95', :width => '60', :notes => %{Центр: лилии, гладиолусы, розы, листья. По контуру: белые гвоздики, аморалис.}, :small_image_name => '/images/foto/V133-s.jpg', :big_image_name => '/images/foto/V133-b.jpg', :extra_image_name => '/images/foto/V133-e.jpg', :price => 430)
Product.create(:article => 'В173', :name => 'Слава', :height => '90', :width => '50', :notes => %{Ритуальный траурный венок из серии "Защитникам Отечества" украшают триколор,выполненный из гвоздик и лент,фурнитура в форме звезды и золотой лист.}, :small_image_name => '/images/foto/V173-s.jpg', :big_image_name => '/images/foto/V173-b.jpg', :extra_image_name => '/images/foto/V173-e.jpg', :price => 280)
Product.create(:article => 'В311', :name => 'Днепр', :height => '90', :width => '60', :small_image_name => '/images/foto/V311-s.jpg', :big_image_name => '/images/foto/V311-b.jpg', :extra_image_name => '/images/foto/V311-e.jpg', :price => 260)
Product.create(:article => 'В033', :name => 'Юпитер маленький', :height => '95', :width => '60', :small_image_name => '/images/foto/V033-s.jpg', :big_image_name => '/images/foto/V033-b.jpg', :extra_image_name => '/images/foto/V033-e.jpg', :price => 350)
Product.create(:article => 'В021', :name => 'Гвоздика', :height => '80', :width => '50', :small_image_name => '/images/foto/V021-s.jpg', :big_image_name => '/images/foto/V021-b.jpg', :extra_image_name => '/images/foto/V021-e.jpg', :price => 180)
Product.create(:article => 'В134', :name => 'Ярославна', :height => '95', :width => '60', :small_image_name => '/images/foto/V134-s.jpg', :big_image_name => '/images/foto/V134-b.jpg', :extra_image_name => '/images/foto/V134-e.jpg', :price => 390)
Product.create(:article => 'В135', :name => 'Алиса', :height => '95', :width => '60', :small_image_name => '/images/foto/V135-s.jpg', :big_image_name => '/images/foto/V135-b.jpg', :extra_image_name => '/images/foto/V135-e.jpg', :price => 390)
Product.create(:article => 'В022', :name => 'Дуэт', :height => '75', :width => '50', :small_image_name => '/images/foto/V022-s.jpg', :big_image_name => '/images/foto/V022-b.jpg', :extra_image_name => '/images/foto/V022-e.jpg', :price => 180)
Product.create(:article => 'В242', :name => 'Невский 2', :height => '75', :width => '50', :notes => %{Венок разделен на два сектора с помощью золотой ленты. В верхнем - розы на стебельках, низ украшен цветами мальвы.}, :small_image_name => '/images/foto/V242-s.jpg', :big_image_name => '/images/foto/V242-b.jpg', :extra_image_name => '/images/foto/V242-e.jpg', :price => 190)
Product.create(:article => 'В252', :name => 'Радоница', :height => '85', :width => '60', :small_image_name => '/images/foto/V252-s.jpg', :big_image_name => '/images/foto/V252-b.jpg', :extra_image_name => '/images/foto/V252-e.jpg', :price => 250)
Product.create(:article => 'К181', :name => 'Амфора малая', :height => '65', :width => '45', :small_image_name => '/images/foto/Q181-s.jpg', :big_image_name => '/images/foto/Q181-b.jpg', :extra_image_name => '/images/foto/Q181-e.jpg', :price => 90)
Product.create(:article => 'В074', :name => 'Снежинка 3', :height => '90', :width => '60', :small_image_name => '/images/foto/V074-s.jpg', :big_image_name => '/images/foto/V074-b.jpg', :extra_image_name => '/images/foto/V074-e.jpg', :price => 260)
Product.create(:article => 'В031', :name => 'Альтаир', :height => '95', :width => '55', :small_image_name => '/images/foto/V031-s.jpg', :big_image_name => '/images/foto/V031-b.jpg', :extra_image_name => '/images/foto/V031-e.jpg', :price => 200)
Product.create(:article => 'В061', :name => 'Цветочница', :height => '70', :width => '120', :small_image_name => '/images/foto/V061-s.jpg', :big_image_name => '/images/foto/V061-b.jpg', :extra_image_name => '/images/foto/V061-e.jpg', :price => 490)
Product.create(:article => 'К191', :name => 'Амфора средняя', :height => '85', :width => '70', :small_image_name => '/images/foto/Q191-s.jpg', :big_image_name => '/images/foto/Q191-b.jpg', :extra_image_name => '/images/foto/Q191-e.jpg', :price => 330)
Product.create(:article => 'В321', :name => 'Илья Муромец', :height => '150', :width => '90', :notes => %{<b>Ритуальный венок</b> с многоярусной объемной формой каркаса и оригинальной  цветочной  композицией из гвоздик и амарилисов.}, :small_image_name => '/images/foto/V321-s.jpg', :big_image_name => '/images/foto/V321-b.jpg', :extra_image_name => '/images/foto/V321-e.jpg', :price => 1200)
Product.create(:article => 'В032', :name => 'Персей', :height => '95', :width => '55', :small_image_name => '/images/foto/V032-s.jpg', :big_image_name => '/images/foto/V032-b.jpg', :extra_image_name => '/images/foto/V032-e.jpg', :price => 200)
Product.create(:article => 'В165', :name => 'Ворожея', :height => '110', :width => '60', :notes => %{В центре пышная цветочная композиция, составленная из роз, хризантем и листьев. Ритуальный венок украшают гвоздики. }, :small_image_name => '/images/foto/V165-s.jpg', :big_image_name => '/images/foto/V165-b.jpg', :extra_image_name => '/images/foto/V165-e.jpg', :price => 650)
Product.create(:article => 'К171', :name => 'Мальвина', :height => '50', :width => '35', :notes => %{Небольшая поминальная корзина}, :small_image_name => '/images/foto/Q171-s.jpg', :big_image_name => '/images/foto/Q171-b.jpg', :extra_image_name => '/images/foto/Q171-e.jpg', :price => 80)
Product.create(:article => 'В136', :name => 'Леди', :height => '95', :width => '60', :small_image_name => '/images/foto/V136-s.jpg', :big_image_name => '/images/foto/V136-b.jpg', :extra_image_name => '/images/foto/V136-e.jpg', :price => 340)
Product.create(:article => 'К051', :name => 'Дюймовочка', :height => '50', :width => '30', :small_image_name => '/images/foto/Q051-s.jpg', :big_image_name => '/images/foto/Q051-b.jpg', :extra_image_name => '/images/foto/Q051-e.jpg', :price => 120)
Product.create(:article => 'В331', :name => 'Защитник 1', :height => '120', :width => '70', :notes => %{Серия "Защитникам Отечества". Уникальность венка в щитообразной форме, подчеркнутой золотой фурнитурой и "заклепками"  по контуру.}, :small_image_name => '/images/foto/V331-s.jpg', :big_image_name => '/images/foto/V331-b.jpg', :extra_image_name => '/images/foto/V331-e.jpg', :price => 980)
Product.create(:article => 'В332', :name => 'Защитник 2', :height => '120', :width => '70', :notes => %{Серию венков "Защитникам Отечества". Уникальность ритуальных венков в их щитообразной форме, подчеркнутой золотой фурнитурой и "заклепками" по контуру}, :small_image_name => '/images/foto/V332-s.jpg', :big_image_name => '/images/foto/V332-b.jpg', :extra_image_name => '/images/foto/V332-e.jpg', :price => 980)
Product.create(:article => 'К151', :name => 'Свеча Средняя', :height => '110', :width => '60', :small_image_name => '/images/foto/Q151-s.jpg', :big_image_name => '/images/foto/Q151-b.jpg', :extra_image_name => '/images/foto/Q151-e.jpg', :price => 490)
Product.create(:article => 'В431', :name => 'Афродита', :height => '130', :width => '70', :small_image_name => '/images/foto/V431-s.jpg', :big_image_name => '/images/foto/V431-b.jpg', :extra_image_name => '/images/foto/V431-e.jpg', :price => 720)
Product.create(:article => 'К161', :name => 'Герда', :height => '80', :width => '50', :small_image_name => '/images/foto/Q161-s.jpg', :big_image_name => '/images/foto/Q161-b.jpg', :extra_image_name => '/images/foto/Q161-e.jpg', :price => 250)
Product.create(:article => 'В044', :name => 'Аккорд', :height => '75', :width => '50', :small_image_name => '/images/foto/V044-s.jpg', :big_image_name => '/images/foto/V044-b.jpg', :extra_image_name => '/images/foto/V044-e.jpg', :price => 150)
Product.create(:article => 'В421', :name => 'Элегия', :height => '80', :width => '45', :small_image_name => '/images/foto/V421-s.jpg', :big_image_name => '/images/foto/V421-b.jpg', :extra_image_name => '/images/foto/V421-e.jpg', :price => 250)
Product.create(:article => 'В341', :name => 'Часовня', :height => '85', :width => '60', :notes => %{Фурнитура в форме собора окружена белыми ромашками и лентой двух расцветок. По краю венка выложены цветы гвоздики о роз.}, :small_image_name => '/images/foto/V341-s.jpg', :big_image_name => '/images/foto/V341-b.jpg', :extra_image_name => '/images/foto/V341-e.jpg', :price => 280)
Product.create(:article => 'В362', :name => 'Иволга', :height => '70', :width => '40', :small_image_name => '/images/foto/V362-s.jpg', :big_image_name => '/images/foto/V362-b.jpg', :extra_image_name => '/images/foto/V362-e.jpg', :price => 170)
Product.create(:article => 'В361', :name => 'Лада', :height => '70', :width => '40', :small_image_name => '/images/foto/V361-s.jpg', :big_image_name => '/images/foto/V361-b.jpg', :extra_image_name => '/images/foto/V361-e.jpg', :price => 170)
Product.create(:article => 'В041', :name => 'Фаберже 2', :height => '75', :width => '50', :small_image_name => '/images/foto/V041-s.jpg', :big_image_name => '/images/foto/V041-b.jpg', :extra_image_name => '/images/foto/V041-e.jpg', :price => 190)
Product.create(:article => 'В312', :name => 'Днепр 2', :height => '85', :width => '60', :small_image_name => '/images/foto/V312-s.jpg', :big_image_name => '/images/foto/V312-b.jpg', :extra_image_name => '/images/foto/V312-e.jpg', :price => 290)
Product.create(:article => 'В186', :name => 'Клеопатра', :height => '140', :width => '70', :small_image_name => '/images/foto/V186-s.jpg', :big_image_name => '/images/foto/V186-b.jpg', :extra_image_name => '/images/foto/V186-e.jpg', :price => 890)
Product.create(:article => 'В411', :name => 'Плеяды', :height => '80', :width => '50', :small_image_name => '/images/foto/V411-s.jpg', :big_image_name => '/images/foto/V411-b.jpg', :extra_image_name => '/images/foto/V411-e.jpg', :price => 250)
Product.create(:article => 'К112', :name => 'Ваза большая', :height => '110', :width => '70', :small_image_name => '/images/foto/Q112-s.jpg', :big_image_name => '/images/foto/Q112-b.jpg', :extra_image_name => '/images/foto/Q112-e.jpg', :price => 420)
Product.create(:article => 'В011', :name => 'Кипарис', :height => '80', :width => '40', :small_image_name => '/images/foto/V011-s.jpg', :big_image_name => '/images/foto/V011-b.jpg', :extra_image_name => '/images/foto/V011-e.jpg', :price => 170)
Product.create(:article => 'В391', :name => 'Бублик', :height => '20', :width => '20', :small_image_name => '/images/foto/V391-s.jpg', :big_image_name => '/images/foto/V391-b.jpg', :extra_image_name => '/images/foto/V391-e.jpg', :price => 35)
Product.create(:article => 'В371', :name => 'Парус', :height => '60', :width => '40', :small_image_name => '/images/foto/V371-s.jpg', :big_image_name => '/images/foto/V371-b.jpg', :extra_image_name => '/images/foto/V371-e.jpg', :price => 90)
Product.create(:article => 'К102', :name => 'Ваза средняя', :height => '80', :width => '40', :small_image_name => '/images/foto/Q102-s.jpg', :big_image_name => '/images/foto/Q102-b.jpg', :extra_image_name => '/images/foto/Q102-e.jpg', :price => 180)
Product.create(:article => 'К132', :name => 'Ваза малая', :height => '55', :width => '35', :small_image_name => '/images/foto/Q132-s.jpg', :big_image_name => '/images/foto/Q132-b.jpg', :extra_image_name => '/images/foto/Q132-e.jpg', :price => 100)
Product.create(:article => 'К211', :name => 'Стаканчик', :height => '40', :width => '25', :small_image_name => '/images/foto/Q211-s.jpg', :big_image_name => '/images/foto/Q211-b.jpg', :extra_image_name => '/images/foto/Q211-e.jpg', :price => 70)
Product.create(:article => 'В441', :name => 'Сердце', :height => '80', :width => '80', :small_image_name => '/images/foto/V441-s.jpg', :big_image_name => '/images/foto/V441-b.jpg', :extra_image_name => '/images/foto/V441-e.jpg', :price => 490)
Product.create(:article => 'К201', :name => 'Прима', :height => '80', :width => '50', :small_image_name => '/images/foto/Q201-s.jpg', :big_image_name => '/images/foto/Q201-b.jpg', :extra_image_name => '/images/foto/Q201-e.jpg', :price => 320)
Product.create(:article => 'В451', :name => 'Лебединое озеро', :height => '90', :width => '60', :small_image_name => '/images/foto/V451-s.jpg', :big_image_name => '/images/foto/V451-b.jpg', :extra_image_name => '/images/foto/V451-e.jpg', :price => 330)
Product.create(:article => 'В143', :name => 'Чингисхан', :height => '110', :width => '80', :small_image_name => '/images/foto/V143-s.jpg', :big_image_name => '/images/foto/V143-b.jpg', :extra_image_name => '/images/foto/V143-e.jpg', :price => 650)
Product.create(:article => 'В123', :name => 'Отечественная Война', :height => '145', :width => '145', :notes => %{За основу при разработке венка взят известный орден "Отечественная Война" 1 степени. В центре венка вместо серпа и молота - цифры 65 из белых гвоздик.}, :small_image_name => '/images/foto/V123-s.jpg', :big_image_name => '/images/foto/V123-b.jpg', :extra_image_name => '/images/foto/V123-e.jpg', :price => 1560)
Product.create(:article => 'В262', :name => 'Скиф 2', :height => '80', :width => '50', :small_image_name => '/images/foto/V262-s.jpg', :big_image_name => '/images/foto/V262-b.jpg', :extra_image_name => '/images/foto/V262-e.jpg', :price => 190)
Product.create(:article => 'В352', :name => 'Руслан', :height => '140', :width => '90', :small_image_name => '/images/foto/V352-s.jpg', :big_image_name => '/images/foto/V352-b.jpg', :extra_image_name => '/images/foto/V352-e.jpg', :price => 850)
Product.create(:article => 'К033', :name => 'Кувшин 3', :height => '80', :width => '40', :notes => %{Новый вариант кувшина, где вместо ПЭ пленки используется ёрш. Размеры и цветы остались прежними}, :small_image_name => '/images/foto/Q033-s.jpg', :big_image_name => '/images/foto/Q033-b.jpg', :extra_image_name => '/images/foto/Q033-e.jpg', :price => 140)
Product.create(:article => 'В323', :name => 'Георгиевский', :height => '150', :width => '95', :small_image_name => '/images/foto/V323-s.jpg', :big_image_name => '/images/foto/V323-b.jpg', :extra_image_name => '/images/foto/V323-e.jpg', :price => 1200)
Product.create(:article => 'В452', :name => 'Млечный путь', :height => '90', :width => '60', :small_image_name => '/images/foto/V452-s.jpg', :big_image_name => '/images/foto/V452-b.jpg', :extra_image_name => '/images/foto/V452-e.jpg', :price => 280)
Product.create(:article => 'В381', :name => 'Шехерезада', :height => '140', :width => '65', :small_image_name => '/images/foto/V381-s.jpg', :big_image_name => '/images/foto/V381-b.jpg', :extra_image_name => '/images/foto/V381-e.jpg', :price => 770)
Product.create(:article => 'В137', :name => 'Купава', :height => '95', :width => '60', :small_image_name => '/images/foto/V137-s.jpg', :big_image_name => '/images/foto/V137-b.jpg', :extra_image_name => '/images/foto/V137-e.jpg', :price => 470)
Product.create(:article => 'В272', :name => 'Лира 2', :height => '60', :width => '40', :small_image_name => '/images/foto/V272-s.jpg', :big_image_name => '/images/foto/V272-b.jpg', :extra_image_name => '/images/foto/V272-e.jpg', :price => 100)
Product.create(:article => 'К221', :name => 'К221Венера', :height => '140', :width => '80', :small_image_name => '/images/foto/Q221-s.jpg', :big_image_name => '/images/foto/Q221-b.jpg', :extra_image_name => '/images/foto/Q221-e.jpg', :price => 930)
Product.create(:article => 'К152', :name => 'Свеча средняя 2', :height => '110', :width => '70', :small_image_name => '/images/foto/Q152-s.jpg', :big_image_name => '/images/foto/Q152-b.jpg', :extra_image_name => '/images/foto/Q152-e.jpg', :price => 600)
Product.create(:article => 'В232', :name => 'Юпитер', :height => '110', :width => '70', :small_image_name => '/images/foto/V232-s.jpg', :big_image_name => '/images/foto/V232-b.jpg', :extra_image_name => '/images/foto/V232-e.jpg', :price => 450)
Product.create(:article => 'В034', :name => 'Ассоль', :height => '95', :width => '60', :small_image_name => '/images/foto/V034-s.jpg', :big_image_name => '/images/foto/V034-b.jpg', :extra_image_name => '/images/foto/V034-e.jpg', :price => 290)
Product.create(:article => 'В353', :name => 'Руслан 2', :height => '140', :width => '90', :small_image_name => '/images/foto/V353-s.jpg', :big_image_name => '/images/foto/V353-b.jpg', :extra_image_name => '/images/foto/V353-e.jpg', :price => 850)
Product.create(:article => 'К241', :name => 'Каприз', :height => '120', :width => '80', :small_image_name => '/images/foto/Q241-s.jpg', :big_image_name => '/images/foto/Q241-b.jpg', :extra_image_name => '/images/foto/Q241-e.jpg', :price => 450)
Product.create(:article => 'К071', :name => 'Кай', :height => '70', :width => '45', :small_image_name => '/images/foto/Q071-s.jpg', :big_image_name => '/images/foto/Q071-b.jpg', :extra_image_name => '/images/foto/Q071-e.jpg', :price => 150)
Product.create(:article => 'В175', :name => 'Лель', :height => '90', :width => '60', :small_image_name => '/images/foto/V175-s.jpg', :big_image_name => '/images/foto/V175-b.jpg', :extra_image_name => '/images/foto/V175-e.jpg', :price => 290)
Product.create(:article => 'В114', :name => 'Афина', :height => '95', :width => '65', :small_image_name => '/images/foto/V114-s.jpg', :big_image_name => '/images/foto/V114-b.jpg', :extra_image_name => '/images/foto/V114-e.jpg', :price => 480)
Product.create(:article => 'В354', :name => 'Тамерлан', :height => '145', :width => '90', :small_image_name => '/images/foto/V354-s.jpg', :big_image_name => '/images/foto/V354-b.jpg', :extra_image_name => '/images/foto/V354-e.jpg', :price => 890)
Product.create(:article => 'В094', :name => 'Венеция', :height => '80', :width => '60', :small_image_name => '/images/foto/V094-s.jpg', :big_image_name => '/images/foto/V094-b.jpg', :extra_image_name => '/images/foto/V094-e.jpg', :price => 280)
Product.create(:article => 'К261', :name => 'Грация', :height => '155', :width => '80', :small_image_name => '/images/foto/Q261-s.jpg', :big_image_name => '/images/foto/Q261-b.jpg', :extra_image_name => '/images/foto/Q261-e.jpg', :price => 960)
Product.create(:article => 'В035', :name => 'Лагуна малая', :height => '90', :width => '60', :small_image_name => '/images/foto/V035-s.jpg', :big_image_name => '/images/foto/V035-b.jpg', :extra_image_name => '/images/foto/V035-e.jpg', :price => 360)
Product.create(:article => 'В138', :name => 'Лагуна средняя', :height => '95', :width => '65', :small_image_name => '/images/foto/V138-s.jpg', :big_image_name => '/images/foto/V138-b.jpg', :extra_image_name => '/images/foto/V138-e.jpg', :price => 480)
Product.create(:article => 'В036', :name => 'Листопад', :height => '95', :width => '60', :small_image_name => '/images/foto/V036-s.jpg', :big_image_name => '/images/foto/V036-b.jpg', :extra_image_name => '/images/foto/V036-e.jpg', :price => 330)
Product.create(:article => 'В076', :name => 'Арфа', :height => '90', :width => '60', :small_image_name => '/images/foto/V076-s.jpg', :big_image_name => '/images/foto/V076-b.jpg', :extra_image_name => '/images/foto/V076-e.jpg', :price => 290)
Product.create(:article => 'В037', :name => 'Лолита', :height => '95', :width => '60', :small_image_name => '/images/foto/V037-s.jpg', :big_image_name => '/images/foto/V037-b.jpg', :extra_image_name => '/images/foto/V037-e.jpg', :price => 350)
Product.create(:article => 'К271', :name => 'Катрин', :height => '155', :width => '65', :small_image_name => '/images/foto/Q271-s.jpg', :big_image_name => '/images/foto/Q271-b.jpg', :extra_image_name => '/images/foto/Q271-e.jpg', :price => 1400)
Product.create(:article => 'В233', :name => 'Офицерский', :height => '110', :width => '65', :small_image_name => '/images/foto/V233-s.jpg', :big_image_name => '/images/foto/V233-b.jpg', :extra_image_name => '/images/foto/V233-e.jpg', :price => 500)
Product.create(:article => 'В363', :name => 'Вечная память', :height => '80', :width => '45', :small_image_name => '/images/foto/V363-s.jpg', :big_image_name => '/images/foto/V363-b.jpg', :extra_image_name => '/images/foto/V363-e.jpg', :price => 190)
Product.create(:article => 'В364', :name => 'Агат', :height => '80', :width => '45', :small_image_name => '/images/foto/V364-s.jpg', :big_image_name => '/images/foto/V364-b.jpg', :extra_image_name => '/images/foto/V364-e.jpg', :price => 190)
Product.create(:article => 'В367', :name => 'Жемчужина', :height => '80', :width => '45', :small_image_name => '/images/foto/V367-s.jpg', :big_image_name => '/images/foto/V367-b.jpg', :extra_image_name => '/images/foto/V367-e.jpg', :price => 260)
Product.create(:article => 'В365', :name => 'Портрет овальный', :height => '80', :width => '45', :notes => %{В центре венка - фото рамка со стеклом формата А5. Рамка легко извлекается для установки фотографии, надежно крепится.}, :small_image_name => '/images/foto/V365-s.jpg', :big_image_name => '/images/foto/V365-b.jpg', :extra_image_name => '/images/foto/V365-e.jpg', :price => 350)
Product.create(:article => 'В521', :name => 'Портрет прямоугольный', :height => '70', :width => '50', :notes => %{В центре-фоторамка формата А4, легко извлекается для установки портретной фотографии, фотография защищена стеклом}, :small_image_name => '/images/foto/V521-s.jpg', :big_image_name => '/images/foto/V521-b.jpg', :extra_image_name => '/images/foto/V521-e.jpg', :price => 400)
Product.create(:article => 'В462', :name => 'Царевна', :height => '120', :width => '65', :small_image_name => '/images/foto/V462-s.jpg', :big_image_name => '/images/foto/V462-b.jpg', :extra_image_name => '/images/foto/V462-e.jpg', :price => 700)
Product.create(:article => 'К281', :name => 'Незнакомка малая', :height => '50', :width => '40', :small_image_name => '/images/foto/Q281-s.jpg', :big_image_name => '/images/foto/Q281-b.jpg', :extra_image_name => '/images/foto/Q281-e.jpg', :price => 150)
Product.create(:article => 'К291', :name => 'Фея', :height => '130', :width => '60', :small_image_name => '/images/foto/Q291-s.jpg', :big_image_name => '/images/foto/Q291-b.jpg', :extra_image_name => '/images/foto/Q291-e.jpg', :price => 480)
Product.create(:article => 'К292', :name => 'Виолетта', :height => '130', :width => '60', :small_image_name => '/images/foto/Q292-s.jpg', :big_image_name => '/images/foto/Q292-b.jpg', :extra_image_name => '/images/foto/Q292-e.jpg', :price => 530)
Product.create(:article => 'К301', :name => 'Незнакомка большая', :height => '70', :width => '55', :small_image_name => '/images/foto/Q301-s.jpg', :big_image_name => '/images/foto/Q301-b.jpg', :extra_image_name => '/images/foto/Q301-e.jpg', :price => 250)
Product.create(:article => 'В038', :name => 'Воинская Слава', :height => '90', :width => '60', :small_image_name => '/images/foto/V038-s.jpg', :big_image_name => '/images/foto/V038-b.jpg', :extra_image_name => '/images/foto/V038-e.jpg', :price => 320)

about_us = <<"ABOUT_US"
<!-- Новостной раздел --> <div class="right-div"> <h3>Новости</h3> <ul>
<li>
Вы можете найти наш сайт и по адресу: <a href="http://www.venki-spb.ru/">http://ритуальный-венок.рф</a>
</li>
<li>
07.02.2011 <strong>Мы обновили сайт. Добро пожаловать!</strong>
</li>
<li>
15.12.2010 Новые <strong>ритуальные корзины</strong> - <a href="/images/foto/Q281-b.jpg" rel="lightbox">Незнакомка малая</a> и <a href="/images/foto/Q301-b.jpg" rel="lightbox">Незнакомка большая</a>
</li>
<li>
12.12.2010 Добавлены <strong>ритуальные корзины</strong> высотой до 130 см - <a href="/images/foto/Q291-b.jpg" rel="lightbox">Фея</a> и <a href="/images/foto/Q292-b.jpg" rel="lightbox">Виолетта</a>
</li>
<li>
08.12.2010 Новый <strong>траурный венок</strong> - <a href="/images/foto/V038-b.jpg" rel="lightbox">Воинская Слава</a>
</li>
<li>
07.12.2010 Добавлены <strong>ритуальные венки</strong> с возможностью установить фотографию - <a href="/images/foto/V521-b.jpg" rel="lightbox">Портрет прямоугольный</a> и
<a href="/images/foto/V365-b.jpg" rel="lightbox">Портрет овальный</a>
</li>

<li>06.12.2010 Новый <strong>траурный венок</strong> - <a href="/images/foto/V462-b.jpg" rel="lightbox">Царевна</a></li>
<li>05.12.2010 Добавлены <strong>ритуальные венки</strong> - <a href="/images/foto/V366-b.jpg" rel="lightbox">Амелия</a> и <a href="/images/foto/V367-b.jpg" rel="lightbox">Жемчужина</a>
</li>
</ul></div>

<!-- Основной раздел --> <div class="main-div"> <h3>О нас</h3>
<strong>ООО "Обелиск"</strong> - надежный поставщик <strong>ритуальных траурных венков и корзин</strong> из искусственной хвои. Наша продукция отличается высоким качеством и широким ассортиментом. Созданием моделей <strong>траурных венков и корзин</strong> занимаются опытные дизайнеры, а благодаря отлаженному процессу производства и качественным материалам предлагаемый нами товар вне конкуренции. Мы не стоим на месте и постоянно работаем над новыми моделями и с радостью возьмемся за изготовление на заказ как элитных, так и типовых партий <strong>траурных ритуальных веков и корзин</strong>.
<br/><br/>
Заказ <strong>ритуальных венков и корзин</strong> осуществляется по телефону, мы гарантируем его выполнение в течение 3-10 дней, в зависимости от объема и сложности работ. Оплата производится как за наличные, так и по безналичному расчету, соответственно выдается полный комплект документов. Вопрос доставки решается отдельно в каждом конкретном случае.Имеется опыт работ с другими регионами РФ, имеющих железнодорожное сообщение. Если Вы затрудняетесь сделать заказ по фотографиям,то можете оговорить сумму, количество больших, средних и маленьких <strong>траурных венков и корзин</strong>. Мы сами скомплектуем качественный и красивый набор изделий.
<br/><br/>
<strong>ООО "Обелиск"</strong> имеет представительства в Псковской области и в городе Приозерск Ленинградской области.
<br/><br/>
В другие регионы России мы можем отправить свою продукцию 5-ти тонными железнодорожными контейнерами.
</div>

<!-- Партнерский раздел --> <div class="footer-div"> <h3>Партнеры сайта</h3> <ul>
<li>Ритуальное интернет-агенство <a href="http://www.poxoronka.ru">Poxoronka.ru</a></li>
<li>Компания РА-текс -производитель текстильных ритуальных принадлежностей <a href="http://www.ra-tex.ru">Ra-tex.ru</a></li>

</ul></div>
ABOUT_US

Revision.create(:content => about_us).update_attribute('page_id', Page.create(:reference => 'about_us', :title => 'О нас').id)

articles = <<"ARTICLES"
<h3>Статьи</h3>
<ul>
<li><a href="/ritual_venok"><strong>Ритуальный венок</strong></a></li>
<li><a href="/ritual_venok_tradition">Традиция возложения <strong>ритуальных венков</strong></a></li>
<li><a href="/symbols">Символика цвета и цветов в <strong>ритуальных венках и корзинах</strong></a></li>
<li><a href="/reportage">Фоторепортаж о праздновании Дня Победы из Бокситогорского района</a></li>
</ul>
ARTICLES
Revision.create(:content => articles).update_attribute('page_id', Page.create(:reference => 'articles', :title => 'Статьи').id)

article1 = <<"ARTICLE1"
<h3>Ритуальный венок</h3>
&nbsp;&nbsp;&nbsp;&nbsp;<strong>Ритуальный венок</strong> - это последняя дань ушедшим от нас близким людям, выражение нашей любви и благодарности за то, что они были в нашей жизни... После их ухода мы особенно нуждаемся в возможности выразить свою боль и скорбь от утраты, сохранить память о людях, которые были дороги.
<br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;Возлагая на могилу <strong>траурные венки или корзины</strong> из цветов, вечнозеленой хвои, а порой и с добавлением различных символических предметов, наполненных для нас особым смыслом, мы знаем, что это нужно нам, чтобы сохранить память о тех, кому многим обязаны, нашим детям, которые, учась ухаживать за могилами родных и близких, станут преемниками традиций своей культуры, и, несомненно, усопшим. Ведь если честно, то каждый из нас, заглядывая вперед, за последнюю черту, хочет верить, что его могила не будет забыта теми, кого он любил.
ARTICLE1
Revision.create(:content => article1).update_attribute('page_id', Page.create(:reference => 'ritual_venok', :title => 'Ритуальный венок').id)

article2 = <<"ARTICLE2"
<h3>Традиция возложения ритуальных венков</h3>
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;Зелень и цветы с древних времен сопровождают знаковые события в культурах многих народов. Благодаря совершенству формы, богатству красок, благоуханию цветы снискали трепетное отношение наших далеких предков.
В пору язычества растения были как самостоятельным объектом поклонения, так и неотъемлемой частью праздничной и обрядовой атрибутики. Растения обожествлялись, неизбежно вовлекаясь в структуру представлений о судьбе, жизни и смерти. Поэтому неудивительно, что цветы стали непременными спутниками обрядов, посвященным усопшим. Среди древних римлян, к примеру, был распространен обычай – в мае, на пороге весны и лета, в знак  памяти украшать себя и гробницы предков розами.<br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;С развитием христианства цветы приобретают новое значение как образец совершенства божественного творения. Живыми растениями украшают храмы, убирая цветами алтарь, чтимые храмовые иконы и икону праздника. Цветы и зелень призваны выразить духовный смысл отмечаемого Церковью события. Например, на Рождество Христово храм украшали пахучими еловыми ветками – вечнозеленая ель символизировала древо жизни и рождение Спасителя.
Сплетение зелени и цветов в виде венков также восходит к древности. У греков и римлян символ круга обозначал бессмертие, являлся знамением переселения души на небо и союзом смертью почивших с живыми. У славян венок имел также значения любви и брака. Во многих культурах венок – непременный атрибут признания избранности. Христианская культура придала данному значению оттенок духовной возвышенности: сияние в виде венца – нимб – является символом избранности Богом.<br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;Православная традиция провожать и поминать усопших цветами и <strong>ритуальными венками</strong>, вероятно, берет свое начало в раннем христианстве и связана, судя по всему, с празднованием Недели Святых Отцов (Семик, родительская суббота, Троица – праздники этой недели), в котором тесно переплелись народные и церковные обряды. Цветы и особенно венки выражали надежду на воскресение и вечную жизнь, а также были призваны почтить христианские достоинства умершего.
В качестве основы венка в прошлых столетиях чаще всего использовали можжевельник, позднее – ель. Вечнозеленые растения символизировали вступление в вечную жизнь, а их смолистый душистый аромат подчеркивал торжественность происходящего.<br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;В современном мире более актуальны <strong>траурные ритуальные венки из искусственной хвои</strong>. Они дольше сохраняют свой вид в условиях непогоды, украшая место захоронения. Большое разнообразие форм, размеров, вариантов украшения в сочетании с глубоким смыслом, заложенным в этом предмете, делают ритуальный венок лучшим способом выразить свою печаль и отдать дань уважения ушедшему.
ARTICLE2
Revision.create(:content => article2).update_attribute('page_id', Page.create(:reference => 'ritual_venok_tradition', :title => 'Традиция').id)

article3 = <<"ARTICLE3"
<h3>Символика цвета и цветов в ритуальных венках и корзинах</h3>
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<strong>Ритуальный венок</strong> – это важный атрибут прощания с умершим человеком. Он является выражением чувств близких людей, символом памяти, уважения, благодарности. Зачастую выбор <strong>траурного венка</strong> происходит чисто интуитивно, на основании переполняющих человека, понесшего утрату, эмоций. Лишь немногие знающие люди способны в композиции <strong>ритуального венка</strong> «зашифровать послание» для усопшего. А ведь порой это последняя возможность передать то, что так и не было сказано при жизни. Вот почему так важно грамотно подходить к изготовлению <strong>ритуальных венков и корзин</strong>: от выбора формы до составления цветовой гаммы – с тем, чтобы правильно отразить заложенный заказчиком смысл или помочь покупателю сделать соответствующий его настроению выбор.<br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;Искусство оформления <strong>ритуальных венков, корзин, букетов</strong> – <em>траурная, или ритуальная, флористика</em> – развита в России недостаточно по сравнению с европейскими странами. Однако основные приемы создания <em>траурных композиций</em> все же известны, и мы стараемся неукоснительно соблюдать их при изготовлении своей <em>ритуальной продукции</em>.
&nbsp;&nbsp;&nbsp;&nbsp;Основную нагрузку, как правило, несет на себе цветовая гамма, в которой выполнены <strong>венки и корзины</strong>. Кроме собственного глубокого значения, присущего вечнозеленой хвое, ее темно-зеленый цвет служит отличным фоном для цветочной композиции. Последняя, согласно европейским стандартам, не должна включать более трех доминирующих цветов. Их выбор основан как на сочетании красок, так и на их символическом значении.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;К примеру, <em>желтый цвет</em> ассоциируется с солнцем и солнечным светом, оптимизмом, так как ему свойственно ободрять и оживлять, как солнечному свету. Он может символизировать и надежду, ведь яркий свет солнца может пробить темноту.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<em>Оранжевый цвет</em> греет, как солнце, ведь это самый теплый из всех цветов, он действует тепло и мягко, ласкающе. Поэтому он и означает тепло души, сочувствие, поддержку.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<em>Красный цвет</em> – самый активный из всех цветов, он символизирует сильные чувства. Красные цветы в <strong>траурном венке</strong> обозначают великие трудности, мученичество и большие заботы, выпавшие на жизнь усопшего, ведь в христианской символике капли крови из ран распятого Иисуса превращаются в распустившуюся розу. Кроме того, красный цвет является символом безграничной любви Бога и человека.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;Мягкий <em>розовый цвет</em> – символ райского цветущего сада.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<em>Пурпурный цвет</em>, с одной стороны, символизирует силу и достоинство, так как участие синего цвета успокаивают активность красного. С другой стороны, этот цвет символизирует любовь, но не такую сгорающую, как красный цвет, а наделенную чувствами, чудесными свойствами, полную сил.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;Очень глубока символика <em>синего цвета</em>. Это и верность, которая подразумевает сознательные и продуманные действия, и сознание, мечтательные размышления, поскольку синий цвет смотрится тихо и спокойно, и свободу (светлый синий как бы свободен от земного притяжения, он парит, мысли человека свободны при созерцании этого цвета). Но синий цвет означает также и тоску, стремление – с ним хочется унестись в «голубую даль», а мысли отворачиваются от реальности.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<em>Зеленый цвет</em> – основной цвет в <strong>ритуальных венках и корзинах</strong> – олицетворяет надежду, так как там, где есть зеленый цвет, там есть надежда на жизнь. Он означает и мир, так как успокаивает, настраивает на жизнь без борьбы. Он обостряет восприятие, так как действует естественно и побуждает к наблюдениям. &nbsp;&nbsp;&nbsp;&nbsp;<em>Желто-зеленый цвет</em>, цвет молодой листвы, олицетворяет молодость и восприимчивость – эти ассоциации связаны с молодой листвой, которые впитывают солнечный свет.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<em>Фиолетовый цвет</em> одновременно и праздничный, и мистический, он тяжелый и таинственный, серьезный и спокойный, полный глубины. Он направлен внутрь самого себя, так как части красного цвета удерживаются синим. Это цвет эксклюзивный, спокойный, сдержанный, полный достоинства. Нежно-фиолетовый цвет означает сдержанность и воспоминания, ведь в нем чувственная часть красного смешана с мечтательностью синего, и оба они ослаблены влиянием белого цвета. <em>Сиреневый цвет</em>, как оттенок фиолетового, является символом веры и христианского вероучения. Он обозначает единство противоположностей  тела и души (одно из которых смертно, а другое вечно), а также создает ощущение печали, но не гнетущей, а светлой, умиротворенной.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<em>Черный цвет</em> означает скорбь и смерть, так как смотрится мрачно и безжизненно из-за отсутствия цвета, но в то же время в нем заключено гордое достоинство. Фиолетовый и черный цвета символизируют глубочайшую духовность. Это истинные цвета печали.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<em>Серый цвет</em> обозначает страх, так как кажется неопознанным, смотрится как бы в стороне, напуганным.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<em>Белый цвет</em> олицетворяет праздник, поскольку сам лучится, хотя и спокойно. Он означает чистоту и непостижимость, являясь посредником между человеком и чем-то духовным, и сам меняется в зависимости от того, какая краска рядом. Он же обозначает и смерть в качестве духовной формы дальнейшего образа жизни.<br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;При оформлении <strong>ритуальных венков и корзин</strong> не стоит забывать, что <em>траурную символику</em> несет не только колористическое решение букета, но и сам подбор цветов. На протяжении многих веков значение, которое присвоено цветам, развивалось из ощущения красок, их воздействия на человека, возникало из затейливого переплетения мифологии и истории.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;В Древнем Египте, к примеру, символом кратковременности жизни считалась <em>белая лилия</em>. Для древних греков же олицетворением быстротечности жизни была <em>роза</em>. Считалось, что ее красота блекнет также быстро, как незаметно пролетает наша жизнь. Круглый бутон розы, по мнению древних греков, был символом бесконечности, не имеющей ни начала, ни конца, а потому его часто изображали на могильных памятниках. Позже обычай украшать могилы розами переняли у древних греков римляне.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;Цветами печали и смерти у древних греков были не только розы, но и <em>фиалка, гиацинт, анемона, нарцисс</em>. Их <em>траурная символика</em> связана с легендами и мифами, в которых появление этих цветов на земле связывалось с печальными событиями. Кроме того, эти весенние цветы недолговечны, их красота живет всего лишь несколько недель – маленький миг в бесконечном течении времени – такой же, как наша земная жизнь.
У европейцев символом печали и скорби стал цветок глубокой осени – <em>хризантема</em>. Она завершает сезонный парад цветов, зацветая в разгар или даже к исходу осени. Еще одним растением, которое традиционно используется в Европе в похоронных церемониях, является <em>розмарин</em>, символизирующий верность и память. Очень часто высаживают в Европе на кладбищах <em>барвинок</em> – стелющееся растение с вечнозелеными кожистыми листьями. Издревле оно считалось олицетворением стойкости и жизненной силы. Посаженный же на могиле, барвинок является знаком вечно зеленеющей любви и верной памяти.<br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;В настоящее время уместными при изготовлении <strong>траурных венков и корзин</strong> считают <em>пихтовые, еловые и сосновые ветки</em>, которые символизируют время, надежду, возрождение. Также можно использовать <em>розовое дерево</em> без листьев и с шипами, которые в христианской символике олицетворяют терновый венец, символ победы над смертью.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;Отразить гордость, достоинство, благородство в цветочной композиции, украшающей <strong>ритуальные венки и корзины</strong>, можно с помощью <em>амаралисов, гладиолусов, лилий, магнолий, настурций, пальмовых листьев</em>.
Чистоту, девственность, утонченность, красоту символизируют <em>астры, каллы, маргаритки, белые хризантемы и розы</em>.
Свою благодарность усопшему можно выразить, включив в <strong>траурный венок</strong> <em>бутоны роз, нарциссы, гладиолусы</em>.
Отражением переполняющей душу печали и скорби в <strong>ритуальных венках</strong> служат <em>красные гвоздики, черные розы</em>. Обычно им сопутствуют символы смирения, покорности и надежды: <em>колокольчики, цикламены, ирисы</em>.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;Любовь в разных ее проявлениях можно выразить с помощью <em>незабудок, астр, красных роз и гвоздик</em>. Просьба о прощении сокрыта в голубых и пурпурных <em>гиацинтах</em>, полосатых <em>гвоздиках</em>.<br/>
Вечную память символизируют <em>циннии</em>, розовые <em>гвоздики, незабудки</em>.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;При всем многообразии цветочных и колористических решений важно помнить, что <strong>траурный венок</strong> должен быть сдержан, торжественен, а главное – проникнут особым настроением и смыслом, ведь это последняя дань умершему человеку.
ARTICLE3
Revision.create(:content => article3).update_attribute('page_id', Page.create(:reference => 'symbols', :title => 'Символы').id)

article4 = <<"ARTICLE4"
<h3>Фоторепортаж о праздновании Дня Победы из Бокситогорского района</h3>
<p>Митинг 9 мая г. Бокситогорск</p>
<p><img src="/images/foto/reportage/img3.jpg" style="width: 448px; height: 336px;" alt="Митинг 9 мая г. Бокситогорск" title="Митинг 9 мая г. Бокситогорск" /></p>
<p>Мемориал павшим войнам в городе Бокситогорск</p>
<p><img src="/images/foto/reportage/img1.jpg" style="width: 336px; height: 448px;" alt="Мемориал павшим войнам в городе Бокситогорск" title="Мемориал павшим войнам в городе Бокситогорск" /></p>
<p>Братское кладбище г. Бокситогорск</p>
<p><img src="/images/foto/reportage/img4.jpg" style="width: 448px; height: 336px;" alt="Братское кладбище г. Бокситогорск" title="Братское кладбище г. Бокситогорск" /></p>
<p>Братское кладбище г. Бокситогорск(Траурный венок &quot;Звезда&quot;)</p>
<p><img src="/images/foto/reportage/img5.jpg" style="width: 448px; height: 336px;" alt="Братское кладбище г. Бокситогорск" title="Братское кладбище г. Бокситогорск" /></p>
<p>Братское кладбище г. Бокситогорск(Траурный венок &quot;Прощание&quot;)</p>
<p><img src="/images/foto/reportage/img6.jpg" style="width: 448px; height: 336px;" alt="Братское кладбище г. Бокситогорск" title="Братское кладбище г. Бокситогорск" /></p>
<p>Братское кладбище г. Бокситогорск</p>
<p><img src="/images/foto/reportage/img7.jpg" style="width: 448px; height: 336px;" alt="Братское кладбище г. Бокситогорск" title="Братское кладбище г. Бокситогорск" /></p>
<p>Митнинг в Астраче</p>
<p><img src="/images/foto/reportage/img9.jpg" style="width: 448px; height: 336px;" alt="Митнинг в Астраче" title="Митнинг в Астраче" /></p>
<p>Митнинг в Астраче</p>
<p><img src="/images/foto/reportage/img10.jpg" style="width: 336px; height: 448px;" alt="Митнинг в Астраче" title="Митнинг в Астраче" /></p>
<p>Митнинг в Астраче</p>
<p><img src="/images/foto/reportage/img11.jpg" style="width: 448px; height: 336px;" alt="Митнинг в Астраче" title="Митнинг в Астраче" /></p>
<p>Митнинг в Астраче</p>
<p><img src="/images/foto/reportage/img12.jpg" style="width: 336px; height: 448px;" alt="Митнинг в Астраче" title="Митнинг в Астраче" /></p>
<p>Мемориал павшим войнам в деревня Астрача</p>
<p><img src="/images/foto/reportage/img2.jpg" style="width: 448px; height: 336px;" alt="Мемориал павшим войнам в деревня Астрача" title="Мемориал павшим войнам в деревня Астрача" /></p>
<p>Вечный огонь деревня Астрача</p>
<p><img src="/images/foto/reportage/img8.jpg" style="width: 448px; height: 336px;" alt="Вечный огонь деревня Астрача" title="Вечный огонь деревня Астрача" /></p>
ARTICLE4
Revision.create(:content => article4).update_attribute('page_id', Page.create(:reference => 'reportage', :title => 'Репортаж').id)

links = <<"LINKS"
<h3>Ссылки</h3>

<ul>
<li><a href="http://kalitniky.ru/">Сайт Калитниковского кладбища</a></li>
<li><a href="http://piskarevskoe.ru/">Сайт Пискаревского кладбища</a></li>
<li><a href="http://lavraspb.ru/">Сайт некрополя Свято-Троицкой Александро-Невской Лавры.</a></li>
<li><a href="http://devichka.ru/">Сайт Новодевичьего кладбища.</a></li>

<li><a href="http://www.vagankovka.ru/">Сайт Ваганьковского кладбища</a></li>
<li><a href="http://volkovka.ru/">Сайт Волковского кладбища</a></li>
<li><a href="http://devichkaspb.ru/">Сайт Новодевичьего кладбища Санкт-Петербург</a></li>
<li><a href="http://malaohta.ru/">Сайт Малоохтинского кладбища</a></li>
<li><a href="http://kinovievskoe.ru/">Сайт Киновиевского кладбища</a></li>
<li><a href="http://www.gromovskoe.ru/">Сайт Громовского кладбища Санкт-Петербург</a></li>
<li><a href="http://www.bolsheohta.ru/">Сайт Большеохтинского кладбища Санкт-Петербург</a></li>
<li><a href="http://www.ewreiskoe.ru/">Сайт Еврейского кладбища Санкт-Петербург</a></li>
<li><a href="http://www.9yanvar.ru/">Сайт Кладбища памяти жертв 9 января Санкт-Петербург</a></li>

<li><a href="http://smolenkaspb.ru/">Сайт Смоленского кладбища Санкт-Петербург</a></li>
<li><a href="http://www.kazanckoe.ru/">Сайт Казанского кладбища Санкт-Петербург</a></li>
<li><a href="http://www.shuvalovskoe.ru/">Сайт Шуваловского кладбища Санкт-Петербург</a></li>
<li><a href="http://www.sestroreckoe.ru/">Сайт Сестрорецкого кладбища Санкт-Петербург</a></li>
<li><a href="http://www.kovalevskoe.ru/">Сайт Ковалевского кладбища Санкт-Петербург</a></li>
<li><a href="http://www.porohovskoe.ru/">Сайт Пороховского кладбища Санкт-Петербург</a></li>
<li><a href="http://serafimovskoe.ru/">Сайт Серафимовского кладбища</a></li>
<li><a href="http://komarovskoe.ru/">Сайт Комаровского кладбища</a></li>
<li><a href="http://bogoslovskoe.ru/">Сайт Богословского кладбища</a></li>

<li><a href="http://www.ritualluks.ru/">Похороны, ритуальные услуги в Москве</a></li>
</ul>
LINKS
Revision.create(:content => links).update_attribute('page_id', Page.create(:reference => 'links', :title => 'Ссылки').id)

contacts = <<"CONTACTS"
<h3>Контакты</h3>
<br/>
Вы можете найти наш сайт и по адресу: <a href="http://venki-spb.ru/index.php">&quot;http://ритуальный-венок.рф&quot;</a>
<br/><br/>

<strong>ООО&quot;Обелиск&quot;</strong>:  <strong>Ленинградская область</strong> , г. Бокситогорск, ул. Школьная 19.
<ul>
<li> Контактное лицо: Марина Владимировна</li>
<li> Телефон - +7-911-127-70-77</li>
<li> Электронный адрес: <a href="mailto:polushkina.marina@bk.ru">polushkina.marina@bk.ru</a></li>
</ul>
<br/>
<ul>
<li> Контактное лицо: Андрей Викторович</li>
<li>Телефон - +7-911-1000-700</li>
<li> Электронный адрес: <a href="mailto:a_10@bk.ru">a_10@bk.ru</a></li>
</ul>
<br/><br/>

<strong>Представительство в Псковской области </strong>
<ul>
<li>Контактное лицо: Валерий Александрович</li>
<li>Телефон - +7-911-693-4444</li>
</ul>
<br/><br/>

<strong>Представительство в Приозерске </strong>: г. Приозерск, ул. Леншоссе 11.
<ul>
<li>Контактное лицо: Константин Александрович</li>
<li>Телефоны: +7 904 645 1608 +7 921 402 9177</li>
<li>Электронный адрес: <a href="mailto:kongin@yandex.ru">kongin@yandex.ru</a></li>
</ul>
CONTACTS
Revision.create(:content => contacts).update_attribute('page_id', Page.create(:reference => 'contacts', :title => 'Контакты').id)

