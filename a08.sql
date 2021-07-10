-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 26 2021 г., 17:14
-- Версия сервера: 8.0.23
-- Версия PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `a08`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица для статей';

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `text`, `title`) VALUES
(1, '<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://html5book.ru/wp-content/uploads/2014/06/html_tags.png\" style=\"border-style:solid; border-width:1px; float:left; height:128px; margin:5px; width:128px\" /></strong></p>\r\n\r\n<p><strong>HTML-теги</strong>&nbsp;&mdash; основа языка HTML. Теги используются для разграничения начала и конца элементов в разметке.</p>\r\n\r\n<p>Каждый HTML-документ состоит из дерева HTML-элементов и текста. Каждый HTML-элемент обозначается начальным (открывающим) и конечным (закрывающим) тегом. Открывающий и закрывающий теги содержат имя тега.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Все HTML-элементы делятся на пять типов:</p>\r\n\r\n<ul>\r\n	<li><strong>пустые элементы</strong>&nbsp;&mdash;&nbsp;<kbd>&lt;area&gt;</kbd>,&nbsp;<kbd>&lt;base&gt;</kbd>,&nbsp;<kbd>&lt;br&gt;</kbd>,&nbsp;<kbd>&lt;col&gt;</kbd>,&nbsp;<kbd>&lt;embed&gt;</kbd>,&nbsp;<kbd>&lt;hr&gt;</kbd>,&nbsp;<kbd>&lt;img&gt;</kbd>,&nbsp;<kbd>&lt;input&gt;</kbd>,&nbsp;<kbd>&lt;link&gt;</kbd>,&nbsp;<kbd>&lt;menuitem&gt;</kbd>,&nbsp;<kbd>&lt;meta&gt;</kbd>,&nbsp;<kbd>&lt;param&gt;</kbd>,&nbsp;<kbd>&lt;source&gt;</kbd>,&nbsp;<kbd>&lt;track&gt;</kbd>,&nbsp;<kbd>&lt;wbr&gt;</kbd>;</li>\r\n	<li><strong>элементы с неформатированным текстом</strong>&nbsp;&mdash;&nbsp;<kbd>&lt;script&gt;</kbd>,&nbsp;<kbd>&lt;style&gt;</kbd>;</li>\r\n	<li><strong>элементы, выводящие неформатированный текст</strong>&nbsp;&mdash;&nbsp;<kbd>&lt;textarea&gt;</kbd>,&nbsp;<kbd>&lt;title&gt;</kbd>;</li>\r\n	<li><strong>элементы из другого пространства имён</strong>&nbsp;&mdash; MathML и SVG;</li>\r\n	<li><strong>обычные элементы</strong>&nbsp;&mdash; все остальные элементы.</li>\r\n</ul>\r\n', 'HTML-теги'),
(2, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><kbd>&lt;html&gt;&lt;/html&gt;</kbd></td>\r\n			<td>корневой элемент html-документа</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;head&gt;&lt;/head&gt;</kbd></td>\r\n			<td>контейнер для метаданных html-документа</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;title&gt;&lt;/title&gt;</kbd></td>\r\n			<td>заголовок / имя html-документа</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;base&gt;</kbd></td>\r\n			<td>базовый url-адрес, относительно которого вычисляются относительные адреса</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;link&gt;</kbd></td>\r\n			<td>подключает внешние таблицы стилей</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;meta&gt;</kbd></td>\r\n			<td>мета-данные веб-страницы</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;style&gt;&lt;/style&gt;</kbd></td>\r\n			<td>подключает таблицы стилей</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Метаданные документа'),
(3, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><kbd>&lt;body&gt;&lt;/body&gt;</kbd></td>\r\n			<td>тело html-документа</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;article&gt;&lt;/article&gt;</kbd></td>\r\n			<td>раздел контента, образующий независимую часть документа или сайта</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;section&gt;&lt;/section&gt;</kbd></td>\r\n			<td>логическая область (раздел) страницы, обычно с заголовком</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;nav&gt;&lt;/nav&gt;</kbd></td>\r\n			<td>раздел документа, содержащий навигационные ссылки по сайту</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;aside&gt;&lt;/aside&gt;</kbd></td>\r\n			<td>контент страницы, имеющий косвенное отношение к основному контенту</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;h1&gt;&lt;/h1&gt; - &lt;h6&gt;&lt;/h6&gt;</kbd></td>\r\n			<td>заголовки шести уровней</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;header&gt;&lt;/header&gt;</kbd></td>\r\n			<td>секция для вводной информации сайта или группы навигационных ссылок</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;footer&gt;&lt;/footer&gt;</kbd></td>\r\n			<td>секция для нижнего колонтитула документа или раздела</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Секционные элементы'),
(4, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><kbd>&lt;p&gt;&lt;/p&gt;</kbd></td>\r\n			<td>параграфы в тексте</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;address&gt;&lt;/address&gt;</kbd></td>\r\n			<td>контактные данные автора документа или статьи</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;hr&gt;</kbd></td>\r\n			<td>горизонтальная линия</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;pre&gt;&lt;/pre&gt;</kbd></td>\r\n			<td>выводит текст с пробелами и переносами</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;blockquote&gt;&lt;/blockquote&gt;</kbd></td>\r\n			<td>большая цитата</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;ol&gt;&lt;/ol&gt;</kbd></td>\r\n			<td>упорядоченный нумерованный список</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;ul&gt;&lt;/ul&gt;</kbd></td>\r\n			<td>маркированный список</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;li&gt;&lt;/li&gt;</kbd></td>\r\n			<td>элемент списка</td>\r\n			<td><kbd>list-item</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;dl&gt;&lt;/dl&gt;</kbd></td>\r\n			<td>контейнер для термина и его описания</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;dt&gt;&lt;/dt&gt;</kbd></td>\r\n			<td>задаёт термин</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;dd&gt;&lt;/dd&gt;</kbd></td>\r\n			<td>расшифровывает термин</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;figure&gt;&lt;/figure&gt;</kbd></td>\r\n			<td>независимый контейнер для такого контента как изображения, диаграммы и т.п.</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;figcaption&gt;&lt;/figcaption&gt;</kbd></td>\r\n			<td>заголовок для элемента&nbsp;&lt;figure&gt;</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;main&gt;&lt;/main&gt;</kbd></td>\r\n			<td>контейнер для уникального основного содержимого в пределах одной страницы сайта</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;div&gt;&lt;/div&gt;</kbd></td>\r\n			<td>контейнер для разделов html-документа, группирует блочные элементы</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Группировка содержимого'),
(5, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><kbd>&lt;table&gt;&lt;/table&gt;</kbd></td>\r\n			<td>html-таблица</td>\r\n			<td><kbd>table</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;caption&gt;&lt;/caption&gt;</kbd></td>\r\n			<td>подпись к таблице</td>\r\n			<td><kbd>table-caption</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;colgroup&gt;&lt;/colgroup&gt;</kbd></td>\r\n			<td>контейнер для одного или нескольких &lt;col&gt;</td>\r\n			<td><kbd>table-column-group</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;col&gt;</kbd></td>\r\n			<td>выбирает для форматирования столбцы</td>\r\n			<td><kbd>table-column</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;thead&gt;&lt;/thead&gt;</kbd></td>\r\n			<td>блок заголовков таблицы</td>\r\n			<td><kbd>table-header-group</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;tbody&gt;&lt;/tbody&gt;</kbd></td>\r\n			<td>тело таблицы</td>\r\n			<td><kbd>table-row-group</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;tfoot&gt;&lt;/tfoot&gt;</kbd></td>\r\n			<td>нижний колонтитул таблицы</td>\r\n			<td><kbd>table-footer-group</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;tr&gt;&lt;/tr&gt;</kbd></td>\r\n			<td>строка таблицы</td>\r\n			<td><kbd>table-row</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;th&gt;&lt;/th&gt;</kbd></td>\r\n			<td>заголовок столбца таблицы</td>\r\n			<td><kbd>table-cell</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;td&gt;&lt;/td&gt;</kbd></td>\r\n			<td>ячейка таблицы</td>\r\n			<td><kbd>table-cell</kbd></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Табличные данные'),
(6, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><kbd>&lt;details&gt;&lt;/details&gt;</kbd></td>\r\n			<td>контейнер с дополнительными сведениями, который можно открыть или закрыть</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;summary&gt;&lt;/summary&gt;</kbd></td>\r\n			<td>видимый заголовок для элемента&nbsp;&lt;details&gt;</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;dialog&gt;&lt;/dialog&gt;</kbd></td>\r\n			<td>диалоговое окно, инспектор или окно</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Интерактивные элементы'),
(7, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><kbd>&lt;script&gt;&lt;/script&gt;</kbd></td>\r\n			<td>подключает сценарии к странице</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;noscript&gt;&lt;/noscript&gt;</kbd></td>\r\n			<td>секция, не поддерживающая скрипт</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;template&gt;&lt;/template&gt;</kbd></td>\r\n			<td>фрагменты HTML-кода, которые могут быть клонированы и вставлены в документ скриптом</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;canvas&gt;&lt;/canvas&gt;</kbd></td>\r\n			<td>холст-контейнер для динамического отображения изображений</td>\r\n			<td><kbd>inline-block</kbd></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Скрипты'),
(8, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><kbd>&lt;picture&gt;&lt;/pictire&gt;</kbd></td>\r\n			<td>контейнер для одного&nbsp;<kbd>&lt;img&gt;</kbd>&nbsp;и ноль или больше&nbsp;<kbd>&lt;source&gt;</kbd></td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;source&gt;</kbd></td>\r\n			<td>местоположение и тип альтернативных медиаресурсов для элементов&nbsp;<kbd>&lt;picture&gt;</kbd>,&nbsp;<kbd>&lt;video&gt;</kbd>,&nbsp;<kbd>&lt;audio&gt;</kbd></td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;img&gt;</kbd></td>\r\n			<td>html-изображения</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;iframe&gt;&lt;/iframe&gt;</kbd></td>\r\n			<td>создаёт встроенный фрейм</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;embed&gt;</kbd></td>\r\n			<td>встраивает внешний интерактивный контент или плагин</td>\r\n			<td><kbd>inline-block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;object&gt;&lt;/object&gt;</kbd></td>\r\n			<td>контейнер для встраивания мультимедиа</td>\r\n			<td><kbd>inline-block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;param&gt;</kbd></td>\r\n			<td>задаёт параметры для плагинов, встраиваемых с помощью элемента &lt;object&gt;</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;audio&gt;&lt;/audio&gt;</kbd></td>\r\n			<td>добавляет аудио-файлы</td>\r\n			<td><kbd>inline-block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;video&gt;&lt;/video&gt;</kbd></td>\r\n			<td>добавляет видео-файлы</td>\r\n			<td><kbd>inline-block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;track&gt;</kbd></td>\r\n			<td>субтитры для элементов &lt;audio&gt;&nbsp;и&nbsp;&lt;video&gt;</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;map&gt;&lt;/map&gt;</kbd></td>\r\n			<td>активные области на карте-изображении</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;area&gt;</kbd></td>\r\n			<td>гиперссылка с текстом или активная область внутри карты-изображения</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Встроенное содержимое'),
(9, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><kbd>&lt;a&gt;&lt;/a&gt;</kbd></td>\r\n			<td>гиперссылка</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;em&gt;&lt;/em&gt;</kbd></td>\r\n			<td>выделяет важные фрагменты текста курсивом</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;strong&gt;&lt;/strong&gt;</kbd></td>\r\n			<td>выделяет полужирным важный текст</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;small&gt;&lt;/small&gt;</kbd></td>\r\n			<td>отображает текст шрифтом меньшего размера</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;s&gt;&lt;/s&gt;</kbd></td>\r\n			<td>перечёркивает неактуальный текст</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;cite&gt;&lt;/cite&gt;</kbd></td>\r\n			<td>источник цитирования</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;q&gt;&lt;/q&gt;</kbd></td>\r\n			<td>краткая цитата</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;dfn&gt;&lt;/dfn&gt;</kbd></td>\r\n			<td>выделяет термин курсивом</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;abbr&gt;&lt;/abbr&gt;</kbd></td>\r\n			<td>аббревиатура или акроним</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;ruby&gt;&lt;/ruby&gt;</kbd></td>\r\n			<td>контейнер для&nbsp;Восточно-Азиатских символов и их расшифровки</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;rb&gt;&lt;/rb&gt;</kbd></td>\r\n			<td>обертка для аннотации</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;rp&gt;&lt;/rp&gt;</kbd></td>\r\n			<td>тег для скобок вокруг символов</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;rt&gt;&lt;/rt&gt;</kbd></td>\r\n			<td>расшифровка символов</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;rtc&gt;&lt;/rtc&gt;</kbd></td>\r\n			<td>обертка для дополнительной аннотации</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;data&gt;&lt;/data&gt;</kbd></td>\r\n			<td>связывает содержимое с машиночитаемым переводом</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;time&gt;&lt;/time&gt;</kbd></td>\r\n			<td>дата / время документа или статьи</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;code&gt;&lt;/code&gt;</kbd></td>\r\n			<td>фрагмент программного кода</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;var&gt;&lt;/var&gt;</kbd></td>\r\n			<td>выделяет переменные из программ</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;samp&gt;&lt;/samp&gt;</kbd></td>\r\n			<td>результат выполнения сценария</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;kbd&gt;&lt;/kbd&gt;</kbd></td>\r\n			<td>текст, вводимый пользователем с клавиатуры</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;sub&gt;&lt;/sub&gt;</kbd></td>\r\n			<td>подстрочное написание символов</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;sup&gt;&lt;/sup&gt;</kbd></td>\r\n			<td>надстрочное написание символов</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;i&gt;&lt;/i&gt;</kbd></td>\r\n			<td>выделяет текст курсивом без акцента</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;b&gt;&lt;/b&gt;</kbd></td>\r\n			<td>задает полужирное начертание отрывка текста, без дополнительного акцента</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;u&gt;&lt;/u&gt;</kbd></td>\r\n			<td>выделяет отрывок текста подчёркиванием, без дополнительного акцента</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;mark&gt;&lt;/mark&gt;</kbd></td>\r\n			<td>выделяет фрагменты текста желтым фоном</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;bdi&gt;&lt;/bdi&gt;</kbd></td>\r\n			<td>изолирует текст, читаемый справа налево</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;bdo&gt;&lt;/bdo&gt;</kbd></td>\r\n			<td>задаёт направление написания текста</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;span&gt;&lt;/span&gt;</kbd></td>\r\n			<td>контейнер для строчных элементов</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;br&gt;</kbd></td>\r\n			<td>перенос текста на новую строку</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;wbr&gt;</kbd></td>\r\n			<td>возможное место разрыва длинной строки</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Семантика текста'),
(10, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><kbd>&lt;del&gt;&lt;/del&gt;</kbd></td>\r\n			<td>перечёркивает текст, помечая как удаленный</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;ins&gt;&lt;/ins&gt;</kbd></td>\r\n			<td>подчёркивает изменения в тексте</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Правки в тексте'),
(11, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><kbd>&lt;form&gt;&lt;/form&gt;</kbd></td>\r\n			<td>html-форма</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;label&gt;&lt;/label&gt;</kbd></td>\r\n			<td>текстовая метка для элемента&nbsp;&lt;input&gt;</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;input&gt;</kbd></td>\r\n			<td>многофункциональные поля формы</td>\r\n			<td><kbd>inline-block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;button&gt;&lt;/button&gt;</kbd></td>\r\n			<td>интерактивная кнопка</td>\r\n			<td><kbd>inline-block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;select&gt;&lt;/select&gt;</kbd></td>\r\n			<td>элемент управления с выбором значений из предложенных вариантов &lt;option&gt;</td>\r\n			<td><kbd>inline-block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;datalist&gt;&lt;/datalist&gt;</kbd></td>\r\n			<td>контейнер для выпадающего списка элемента&nbsp;&lt;input&gt; с &lt;option&gt;-значениями</td>\r\n			<td><kbd>none</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;optgroup&gt;&lt;/optgroup&gt;</kbd></td>\r\n			<td>контейнер с заголовком для группы элементов&nbsp;&lt;option&gt;</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;option&gt;&lt;/option&gt;</kbd></td>\r\n			<td>вариант (опция) в раскрывающемся списке</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;textarea&gt;</kbd></td>\r\n			<td>многострочное поле формы</td>\r\n			<td><kbd>inline-block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;output&gt;&lt;/output&gt;</kbd></td>\r\n			<td>поле для вывода результата вычисления</td>\r\n			<td><kbd>inline</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;progress&gt;&lt;/progress&gt;</kbd></td>\r\n			<td>индикатор выполнения задачи</td>\r\n			<td><kbd>inline-block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;meter&gt;&lt;/meter&gt;</kbd></td>\r\n			<td>индикатор измерения в заданном диапазоне</td>\r\n			<td><kbd>inline-block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;fieldset&gt;&lt;/fieldset&gt;</kbd></td>\r\n			<td>группирует связанные элементы в форме</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n		<tr>\r\n			<td><kbd>&lt;legend&gt;&lt;/legend&gt;</kbd></td>\r\n			<td>заголовок элементов формы, сгруппированных с помощью &lt;fieldset&gt;</td>\r\n			<td><kbd>block</kbd></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Формы'),
(12, '<p><strong>HTML-формы</strong>&nbsp;являются элементами управления, которые применяются для сбора информации от посетителей веб-сайта.</p>\r\n\r\n<p>Веб-формы состоят из набора текстовых полей, кнопок, списков и других элементов управления, которые активизируются щелчком мыши. Технически формы передают данные от пользователя удаленному серверу.</p>\r\n\r\n<p>Для получения и обработки данных форм используются языки веб-программирования, такие как&nbsp;<strong>PHP</strong>,&nbsp;<strong>Perl</strong>.</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Пример&nbsp;веб-формы с помощью HTML5:</strong></span></p>\r\n\r\n<p><img alt=\"\" src=\"https://html5book.ru/wp-content/uploads/2015/05/html5_form.png\" style=\"height:696px; margin:5px; width:660px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Элемент &lt;form&gt;</h3>\r\n\r\n<p>Основу любой формы составляет элемент&nbsp;<kbd>&lt;form&gt;...&lt;/form&gt;</kbd>. Он не предусматривает ввод данных, так как является контейнером, удерживая вместе все элементы управления формы &ndash;&nbsp;<strong>поля</strong>. Атрибуты этого элемента содержат информацию, общую для всех полей формы, поэтому в одну форму нужно включать поля, объединенные логически.</p>\r\n\r\n<h3>Группировка элементов формы</h3>\r\n\r\n<p>Элемент&nbsp;<kbd>&lt;fieldset&gt;...&lt;/fieldset&gt;</kbd>&nbsp;предназначен для группировки элементов, связанных друг с другом, разделяя таким образом форму на логические фрагменты.</p>\r\n\r\n<p>Каждой группе элементов можно присвоить название с помощью элемента&nbsp;<kbd>&lt;legend&gt;</kbd>, который идет сразу за открывающим тегом элемента&nbsp;<kbd>&lt;fieldset&gt;</kbd>. Название группы проявляется слева в верхней границе&nbsp;<kbd>&lt;fieldset&gt;</kbd>. Например, если в элементе&nbsp;<kbd>&lt;fieldset&gt;</kbd>&nbsp;хранится контактная информация:</p>\r\n\r\n<p><img alt=\"\" src=\"https://html5book.ru/wp-content/uploads/2015/05/fieldset.png\" style=\"height:303px; margin:5px; width:660px\" /></p>\r\n', 'HTML5-формы Ч.1'),
(13, '<h3><strong>Создание полей формы</strong></h3>\r\n\r\n<p>Элемент&nbsp;<kbd>&lt;input&gt;</kbd>&nbsp;создает большинство полей формы. Атрибуты элемента отличаются в зависимости от типа поля, для создания которого используется этот элемент.</p>\r\n\r\n<p>С помощью css-стилей можно изменить размер шрифта, тип шрифта, цвет и другие свойства текста, а также добавить границы, цвет фона и фоновое изображение. Ширина поля задается свойством&nbsp;<kbd>width</kbd>.</p>\r\n\r\n<h3><strong>Создание полей формы</strong></h3>\r\n\r\n<p>Элемент&nbsp;<kbd>&lt;input&gt;</kbd>&nbsp;создает большинство полей формы. Атрибуты элемента отличаются в зависимости от типа поля, для создания которого используется этот элемент.</p>\r\n\r\n<p>С помощью css-стилей можно изменить размер шрифта, тип шрифта, цвет и другие свойства текста, а также добавить границы, цвет фона и фоновое изображение. Ширина поля задается свойством&nbsp;<kbd>width</kbd>.</p>\r\n\r\n<h3>&nbsp;<strong>Раскрывающийся список</strong></h3>\r\n\r\n<p>Списки дают возможность расположить большое количество пунктов компактно. Раскрывающиеся списки создаются при помощи элемента&nbsp;<kbd>&lt;select&gt;...&lt;/select&gt;</kbd>. Они позволяют выбрать одно или несколько значений из предложенного множества. По умолчанию в поле списка отображается его первый элемент.</p>\r\n\r\n<p>Для добавления в список пунктов используются элементы&nbsp;<kbd>&lt;option&gt;...&lt;/option&gt;</kbd>, которые располагаются внутри&nbsp;<kbd>&lt;select&gt;</kbd>.</p>\r\n\r\n<p>Для систематизации списков применяется элемент&nbsp;<kbd>&lt;optgroup&gt;...&lt;/optgroup&gt;</kbd>, который создает заголовки в списках.</p>\r\n\r\n<p>Для списков возможно изменить размер шрифта, тип шрифта, цвет и другие свойства текста, а также добавить границы, цвет фона и фоновое изображение.</p>\r\n\r\n<h3><strong>Надписи к полям формы</strong></h3>\r\n\r\n<p>Надписи к элементам формы создаются с помощью элемента&nbsp;<kbd>&lt;label&gt;...&lt;/label&gt;</kbd>. Существует два способа группировки надписи и поля. Если поле находится внутри элемента&nbsp;<kbd>&lt;label&gt;</kbd>, то атрибут&nbsp;<kbd>for</kbd>&nbsp;указывать не нужно.</p>\r\n\r\n<h3><strong>Кнопки</strong></h3>\r\n\r\n<p>Элемент&nbsp;<kbd>&lt;button&gt;...&lt;/button&gt;</kbd>&nbsp;создает кликабельные кнопки. В отличие от кнопок, созданных&nbsp;<kbd>&lt;input&gt;</kbd>&nbsp;(<kbd>&lt;input type=&quot;submit&quot;&gt;&lt;/input&gt;</kbd>,&nbsp;<kbd>&lt;input type=&quot;image&quot;&gt;</kbd>,&nbsp;<kbd>&lt;input type=&quot;reset&quot;&gt;</kbd>,&nbsp;<kbd>&lt;input type=&quot;button&quot;&gt;</kbd>), внутрь элемента&nbsp;<kbd>&lt;button&gt;</kbd>&nbsp;можно поместить контент &mdash; текст или изображение.</p>\r\n\r\n<p>Для корректного отображения элемента&nbsp;<kbd>&lt;button&gt;</kbd>&nbsp;разными браузерами нужно указывать атрибут&nbsp;<kbd>type</kbd>, например,&nbsp;<kbd>&lt;button type=&quot;submit&quot;&gt;&lt;/button&gt;</kbd>.</p>\r\n\r\n<p>Кнопки позволяют пользователям передавать данные в форму, очищать содержимое формы или предпринимать какие-либо другие действия. Можно создавать границы, изменять фон и выравнивать текст на кнопке.</p>\r\n\r\n<h3><strong>Флажки и переключатели в формах</strong></h3>\r\n\r\n<p>Флажки в формах задаются с помощью конструкции&nbsp;<kbd>&lt;input type=&quot;checkbox&quot;&gt;</kbd>, а переключатель &mdash; при помощи&nbsp;<kbd>&lt;input type=&quot;radio&quot;&gt;</kbd>.</p>\r\n\r\n<p>Флажков, в отличие от переключателей, в одной форме может быть установлено несколько. Если для флажков указан атрибут&nbsp;<kbd>checked</kbd>, то при загрузке станицы на соответствующих полях формы флажки уже будут установлены.</p>\r\n\r\n<p>Элемент&nbsp;<kbd>&lt;label&gt;</kbd>&nbsp;применяется при реализации выбора с помощью переключателей и флажков. Можно выбрать нужный пункт, просто щелкая кнопкой мыши на тексте, связанном с ним. Для этого нужно поместить&nbsp;<kbd>&lt;input&gt;</kbd>&nbsp;внутрь элемента&nbsp;<kbd>&lt;label&gt;</kbd>.</p>\r\n', 'HTML5-формы Ч.2'),
(14, '<p><strong>MIME </strong>(Multipurpose Internet Mail Extension, Многоцелевые расширения почты Интернета)&nbsp;&mdash; спецификация для передачи по сети файлов различного типа: изображений, музыки, текстов, видео, архивов и др. Указание MIME-типа используется в HTML обычно при передаче данных форм и вставки на страницу различных объектов.</p>\r\n\r\n<h2><strong>Структура MIME типа</strong></h2>\r\n\r\n<p>Простейший MIME тип состоит из<em>&nbsp;типа</em>&nbsp;и<em>&nbsp;подтипа</em>&nbsp;&mdash; двух строк разделённых наклонной чертой (<code>/</code>), без использования пробелов.</p>\r\n\r\n<pre>\r\n<var>тип</var>/<var>подтип</var></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>Тип</strong>&nbsp;</em>представляет общую категорию, в которой находится тип данных, например&nbsp;<code>video</code>&nbsp;или&nbsp;<code>text</code>.<em>&nbsp;<strong>Подтип</strong></em>&nbsp;же строго отождествляется с отдельным типом данных, представляемых данным MIME типом. Например, для MIME типа&nbsp;<code>text</code>, подтипы могут быть&nbsp;&nbsp;<code>plain</code>&nbsp;(простой текст),&nbsp;<code>html</code>&nbsp;(<a href=\"https://developer.mozilla.org/ru/docs/Glossary/HTML\">HTML</a>&nbsp;source code) или&nbsp;<code>calendar</code>&nbsp;(для iCalendar/<code>.</code><code>ics</code>).</p>\r\n\r\n<p>Необязательный&nbsp;<strong>параметр</strong>&nbsp;может быть добавлен для указания дополнительных деталей</p>\r\n\r\n<pre>\r\n<var>тип</var>/<var>подтип</var>;<var>параметр</var>=<var>значение</var></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Типы</h3>\r\n\r\n<p>Все типы можно разделить на два класса:&nbsp;<strong>дискретные</strong>&nbsp;и&nbsp;<strong>многокомпонентные.&nbsp;</strong>Дискретные типы представляют одиночные файлы, например, одиночный текстовый, музыкальный или видео файл. Многокомпонентные типы представляют документы, составленные из нескольких частей, каждая из которых может иметь свой отдельный MIME тип, или они могут заключать в себе несколько отдельных файлов, передаваемых в одном сообщении. Например, многокомпонентные MIME типы используются для передачи нескольких изображений в одном email.</p>\r\n\r\n<h4><strong>Дискретные типы</strong></h4>\r\n\r\n<p>В настоящее время на IANA зарегистрированы следующие дискретные типы:</p>\r\n\r\n<p><code>application</code></p>\r\n\r\n<p>Любой вид бинарных данных, явно не попадающих ни в одну другу группу типов. Данные, которые будут выполняться или как-либо интерпретироваться, или данные для выполнения, которых необходимо отдельное приложение. Для указания базового типа бинарных данных (данных без определённого типа) используют тип&nbsp;<code>application/octet-stream</code>. Другие распространённые примеры включают&nbsp;<code>application/pdf</code>,&nbsp;<code>application/pkcs8</code>&nbsp;и&nbsp;<code>application/zip</code>.</p>\r\n\r\n<p><code>audio</code></p>\r\n\r\n<p>Аудио или музыкальные данные. Примеры:&nbsp;<code>audio/mpeg</code>,&nbsp;<code>audio/vorbis</code>.</p>\r\n\r\n<p><code>example</code></p>\r\n\r\n<p>Тип, зарезервированный для написания примеров, отображающих использование MIME типов. Этот тип никогда не должен использоваться вне примеров кода или документации.&nbsp;<code>example</code>&nbsp;может так же использоваться, как подтип.</p>\r\n\r\n<p><code>font</code></p>\r\n\r\n<p>Данные шрифтов. Распространённые примеры включают&nbsp;<code>font</code><code>/</code><code>woff</code>,&nbsp;<code>font</code><code>/</code><code>ttf</code>&nbsp;и&nbsp;<code>font</code><code>/</code><code>otf</code>.</p>\r\n\r\n<p><code>image</code></p>\r\n\r\n<p>Изображения или графические данные, включая векторную и растровую графику, а так же анимированные версии форматов неподвижных изображений, таких как &nbsp;GIF&nbsp;или APNG. Распространённые примеры включают&nbsp;<code>image/</code><code>jpeg</code>,&nbsp;<code>image</code><code>/</code><code>png</code>&nbsp;и&nbsp;<code>image</code><code>/</code><code>svg</code><code>+</code><code>xml</code>.</p>\r\n\r\n<p><code>model</code></p>\r\n\r\n<p>Данные моделей для 3D объектов или сцен. Примеры:&nbsp;<code>model/3mf</code>&nbsp;и&nbsp;<code>model/vml</code>.</p>\r\n\r\n<p><code>text</code></p>\r\n\r\n<p>Любые текстовые данные, так или иначе доступные для чтения человеку, а так же &nbsp;исходный код или текстовые данные для программ. Примеры:&nbsp;<code>text</code><code>/</code><code>plain</code>,&nbsp;<code>text</code><code>/</code><code>csv</code>&nbsp;и&nbsp;<code>text</code><code>/</code><code>html</code>.</p>\r\n\r\n<p><span style=\"font-family:monospace\">video</span></p>\r\n\r\n<p>Видео данные или файлы. Например, MP4 фильмы (<code>video</code><code>/</code><code>mp</code><code>4</code>).</p>\r\n\r\n<p>Любые текстовые документы без определённого подтипа стоит отправлять, как&nbsp;&nbsp;<code>text/plain</code>&nbsp;тип. Аналогичным образом,&nbsp;&nbsp;<code>application/octet-stream</code>&nbsp;тип подойдёт бинарным документам при неопределённом или неизвестном подтипе.</p>\r\n', 'MIME-типы и дискретные типы'),
(15, '<h4><strong>Многокомпонентные типы</strong></h4>\r\n\r\n<p><em>Многокомпонентные</em>&nbsp;типы описывают категории разграниченных на части документов, где каждая из частей может иметь свой отдельный MIME тип. При работе с электронными письмами, они могут использоваться для описания нескольких отдельных файлов, передаваемых в одном сообщении. Они представляют&nbsp;<strong>составные документы</strong>.</p>\r\n\r\n<p>За исключением&nbsp;<code>multipart/form-data</code>&nbsp;типа, используемого&nbsp;в&nbsp;<code>POST</code>&nbsp;методе&nbsp;HTML форм, и&nbsp;<code>multipart/byteranges</code>&nbsp;типа, используемом в ответе&nbsp;<code>206</code>&nbsp;<code>Partial Content</code>&nbsp;для отправки части документа, HTTP никаким особым образом не обрабатывает многокомпонентные типы, и просто отправляет данные в браузер (который, с большой вероятностью, предложит сохранить переданный файл, тоже не зная как его обработать).</p>\r\n\r\n<p>Существуют два многокомпонентных типа:</p>\r\n\r\n<p><code>message</code></p>\r\n\r\n<p>Сообщение, включающее в себя другие сообщения. Этот тип может использоваться, например, для представления сообщения, которое включают в себя другое переадресованное сообщение, как часть данных, или для отправки больших сообщений по частям, как если бы каждое сообщение отправлялось отдельно. Примеры включают&nbsp;<code>message</code><code>/</code><code>rfc</code><code>822</code>&nbsp;(для переадресованных или цитируемых сообщений) и &nbsp;<code>message</code><code>/</code><code>partial</code>&nbsp;для автоматического разделения одного большого сообщения на несколько небольших и их последующей сборки на стороне получателя.</p>\r\n\r\n<p><code>multipart</code></p>\r\n\r\n<p>Данные составленные из нескольких компонентов, каждый из которых может иметь отдельный MIME тип. Примеры включают &nbsp;<code>multipart</code><code>/</code><code>form</code><code>-</code><code>data</code>&nbsp;(для данных созданных с помощью&nbsp;<code>FormData</code>&nbsp;API) и&nbsp;<code>multipart</code><code>/</code><code>byteranges</code>&nbsp;(определённого в&nbsp;RFC 7233: 5.4.1&nbsp;и используемого в ответах&nbsp;HTTP&nbsp;<code>206</code>&nbsp;&quot;Partial Content&quot;, когда запрашиваемые данные возвращаются по частям в нескольких сообщениях, как например, при использовании заголовка&nbsp;<code>Range</code>).</p>\r\n', 'Многокомпонентные MIME-типы');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица пользователей';

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `nickname`, `password`, `admin`) VALUES
(1, 'Bachaev2000@yandex.ru', 'protoangel', 'qwe', 0),
(2, 'bachaev2000@mail.ru', 'Бачаев Алексей', 'asd', 1),
(3, 'Sad@ya.ru', 'Разработчик', '1234', 1),
(4, 'Ipatov@mail.ru', 'Михаил', 'йцу', 0),
(5, 'Cat@gmail.com', 'Кот', '123', 0),
(6, 'admin@admin.com', 'admin', 'admin', 1),
(7, 'vladik@mail.ru', 'Vladik', '1234', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
