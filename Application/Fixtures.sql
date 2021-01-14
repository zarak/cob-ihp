

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.admins DISABLE TRIGGER ALL;

INSERT INTO public.admins (id, email, password_hash, locked_at, failed_login_attempts, file_url) VALUES ('45b039c9-670e-4438-ad7b-368ca182d524', 'admin@test.com', 'sha256|17|vDz4IKxF/B+jVmbly21QJQ==|sWGaKPECcl4FWs7yd4yuts3L10GtrhwGD9HPbuvbWUA=', NULL, 0, NULL);


ALTER TABLE public.admins ENABLE TRIGGER ALL;


ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d523445b-abea-4712-a7f2-cceda097cec8', '', 'Allah hidayat day Ameen 🤓✌️', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601225285885953');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('dfabd86f-7a1d-4cdd-913f-bd5ce7247bba', '', '❣️❣️🔥👍🏻✨', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601220789604355');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('49844555-69d7-4308-946e-4d677059598d', '', '@RjAsifsaif', '2020-06-10 05:00:00+05', 0, 0, 0, 'rjasifsaif', 'https://twitter.com/RjAsifsaif/status/1270601215538343936');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('56c08d7f-ba28-4e5e-a1c1-2dc8c8bfa18e', '', '😔', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601209964093445');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d7cb1a02-fd7b-47cb-9171-80ba6dce63b6', '', '@NoorUlAin82 
I wish for you 
I pray for you https://twitter.com/Z_Bangash1/status/1270597984888270848 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramlla_', 'https://twitter.com/Ramlla_/status/1270601206105325568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ec2d786e-8fea-4178-a7ed-3ba4e998ec3f', '', 'arrange', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270601203605540865');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1452acd3-555c-4970-ae2f-0de1c8022729', '', 'سر فروشی کا مزا کُوچہِ اسرار میں ہے
 کَلمہِ حق سے جو پِھر جاۓ وہ مَنصُور نہیں', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistani_313', 'https://twitter.com/PAKISTANI_313/status/1270601197712551942');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7c5b9ac9-3f3c-4831-b4b3-09e2cb51beaf', '', 'Want to know about history of one of the greatest heros of world, 
Here you have that champ to see, who destroyed 5 jets in 30 sec 😍
#PakistanAirForce pic.twitter.com/QQqTr2ZoGP', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270601196429094912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('baf6e8d5-cb1a-4200-b536-60b144b6741a', '', 'To bhai ja k rok lo isko plz', '2020-06-10 05:00:00+05', 0, 0, 0, 'nasirmughalpk', 'https://twitter.com/NasirMughalPK/status/1270601196382883840');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3a88e337-0acc-46e8-8da8-b17667901091', '', 'اے خدا! تیرا ہر فیصلا سر آنکھوں پر♥
لیکن مجھے دنیا اور آخرت میں وہ چاہیے😍', '2020-06-10 05:00:00+05', 0, 0, 0, 'skyscrapper_70', 'https://twitter.com/skyscrapper_70/status/1270601185041547264');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ad4e9881-c72d-4d1f-8e2a-d7ddf243003d', '', 'GORGEOUS 🥺❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270601167282855937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c9c31356-d383-45c1-9245-15ac6f6a39f5', '', 'Nice click 👌👍', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601152892211200');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f47b4eac-b4d3-4d52-8bbd-d35c5fbffa7c', '', 'i will fall back asleep any minute dw ure good', '2020-06-10 05:00:00+05', 0, 0, 0, 'shesunreliable', 'https://twitter.com/shesunreliable/status/1270601152867024896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('abe3dd26-f1de-4580-9df1-7df82615cba0', '', ':) <33', '2020-06-10 05:00:00+05', 0, 0, 0, 'syyedzeeshan', 'https://twitter.com/SyyedZeeshan/status/1270601150639812608');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1cb5b7da-68d7-4ac8-a61c-93faf8ed02d3', '', 'Qsm sy 
Kisi ko sui b chubhy gi na " kya m bach to jaunga/i k chkr k bus tweet pr tweet', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270601148286803968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('cad13cf5-ae78-4211-8412-030af4f781f2', '', 'Ameen https://twitter.com/Aqsahshmi/status/1270504913207005186 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270601146000965632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('efcca195-7b89-4435-8a1f-f17210e0dd54', '', 'Walikum salam', '2020-06-10 05:00:00+05', 0, 0, 0, 'mohsinamir10', 'https://twitter.com/Mohsinamir10/status/1270601143408889856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f57c085a-afdd-40f9-b875-0ece50986d23', '', 'I am big fan since watching #netflix Versailles as jt embodies the memory of the Sun King.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ameen_swati', 'https://twitter.com/Ameen_Swati/status/1270601141437509634');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2d22a018-ae64-490f-b7f4-a3be45b721b7', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601133975916545');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9ba6f1eb-725d-454e-a9ac-d05e0e82cd5e', '', 'ICAP: Say something
Nobody: Mene Paper nai dene
ICAP: Then don''t give the Papers You F** Loser That''s the only thing You can Do. 😂😂
#icapExamsOnTime', '2020-06-10 05:00:00+05', 0, 0, 0, 'professornawab', 'https://twitter.com/ProfessorNawab/status/1270601133275439106');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4a340d7d-4649-40a0-bf20-9996e094afc8', '', '1. Every year on April fools someone lit firecrackers in class. 
2. On my first day in a new school, I got to know that a girl committed suicide. 
3. A girl was beaten to death and thrown behind café.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramsha_saghir', 'https://twitter.com/ramsha_saghir/status/1270601129915809792');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8b69a393-c284-4985-b2df-fc4e97f07783', '', 'I feel more at home in the outdoors. The streets, twilight, nature. The only part I hate about photographing in the wilderness is ke apna aap sambhalay banda ya camera😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'komallsalman', 'https://twitter.com/komallsalman/status/1270601123951345665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('97cf7b64-1ed6-4686-bd41-e375e7b6a5d3', '', 'Done pic.twitter.com/EE9YCdAmNN', '2020-06-10 05:00:00+05', 0, 0, 0, 'raja_danish5', 'https://twitter.com/Raja_Danish5/status/1270601117672656896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6e6afb11-c360-4981-93a8-e61ef0dedfc1', '', ' https://twitter.com/messages/media/1270375516055445508 …
ye bhai ka insta ka page hy
@Anaskhan_0909 ka 
is ka page hy 
is ko follow kro insta py 
plzz follow', '2020-06-10 05:00:00+05', 0, 0, 0, 'm_saim467', 'https://twitter.com/m_saim467/status/1270601110756233219');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ea7c84e7-2f15-4a72-accd-aa9f10ed4530', '', 'Kon narax?', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270601110127030273');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e50aec5c-0214-433b-b84c-a7ee5e6e7417', '', 'یہاں انصاف صرف طاقتور لوگوں ملتا ہے ۔ غریب تو بے قصور ہو کر بھی قصوروار ٹھہرایا جاتا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'f_a7e', 'https://twitter.com/F_A7e/status/1270601109967720453');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('753827f1-ce69-4e24-b69f-06e87d06f174', '', 'Khair Bakhsh Marri – Daily Balochistan Express thank you for sharing. I had many interesting conversations with Uncle KB. Unwavering in his beliefs. https://www.bexpress.com.pk/2020/06/khair-bakhsh-marri/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ninoqazi', 'https://twitter.com/ninoqazi/status/1270601102602440704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e3583e55-48b6-4b38-b26e-45dae3c4be78', '', 'Amazing 😍😘👌', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601092712275969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('76798c7f-e8c7-4a60-a7f5-87ec4df570f8', '', 'پاکستان اسٹاک مارکیٹ کا مثبت آغاز
مزید پڑھیں:  https://www.humnews.pk/latest/255600/ 
۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔
#HumNews #PSX #KSE #PakistanStockExchange pic.twitter.com/VBBGo6FiPt', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnewspakistan', 'https://twitter.com/humnewspakistan/status/1270601087364497408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('142e001c-7abf-495e-bf5a-c23b783ac55b', '', 'Hahaha it is useless to cry over split milk 😂😂😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'miarajput101', 'https://twitter.com/miarajput101/status/1270601087272325120');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ec0f9f2a-4b24-4730-8759-2cea15a0d04b', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601083610693632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('86c71660-73e0-4362-9199-f107aa453f07', '', 'Okhay 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601067299037184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7f3714e5-f11a-4751-a870-e9906a313ae9', '', 'Sure 👀', '2020-06-10 05:00:00+05', 0, 0, 0, 'ayrasair', 'https://twitter.com/AyraSair/status/1270601054535761922');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('880a41d1-02ae-4045-ae00-ff4fafa28287', '', 'Why india always lose land 2 enemy forces

1962 lost Aksai chin 37,244 Sq. km

2013 lost 640 Sq. km in eastern ladakh

2017 lost Doklam, china built the road, came within 60 meters of India’s outpost at Doka La

2020 lost Ladakh 60 Sq. Km

NOW ONCE AGAIN  PLEASE GO BACK
😀😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'ishaqkhan1967', 'https://twitter.com/ishaqkhan1967/status/1270601046767931393');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0917e237-08d5-4dd4-a121-d04190432e48', '', 'شُکر ہے بالآخر آپ کو بھی سمجھ آ گئی مان ہی گئے
اب اُسے بولیں انا کو چھوڑے اور پاکستان واپس آئے🤷🏻‍♀️', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270601044435836928');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('cb6c4b7c-f800-4cbc-8792-4fdaec727b67', '', 'these mazduur next to my house make sexual noises every dupehr i can''t even sit with my family anymore', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601026865954816');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4105aebf-8160-4cb7-9189-a998f5b4f725', '', 'صرف میرے لیے نہیں رہنا
تم میرے بعد بھی حسیں رہنا

                 ⁦❤️⁩ pic.twitter.com/RmYERPaKPm', '2020-06-10 05:00:00+05', 0, 0, 0, 'ranjha_of2020', 'https://twitter.com/Ranjha_of2020/status/1270601024617709568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('891b78e2-2967-42ad-aea4-1e25a5245be5', '', 'بہت خوب تجزیہ کیا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'faisalsohailfa1', 'https://twitter.com/FaisalSohailFa1/status/1270601020792541184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9240cf41-fc9e-411a-b5d8-4b5267281433', '', 'Mention not', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601017403547648');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a8b28b98-17d2-4ab2-b751-e7cd7a21f6ad', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601015843328001');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3fc91bb1-3e0f-4ccd-81f7-bade864943e5', '', 'میرے گاؤں کا دس سال کا تمیور جو گاؤں تو نہیں ہوتا مگر اور نہ ہی مجھے جانتا تھا 

مگر یوٹیوب پر ویڈیوز دیکھ کر فین ہوگیا 😂♥️

کہتا ہے آپ ایبٹ آباد آئے اور ہمارے گھر کیوں نہیں آئے 

پاور آف یوٹیوب 

ایک سہی مگر مخلص ہو یہی بڑی بات ہوتی ہے pic.twitter.com/vbpazB1Oyq', '2020-06-10 05:00:00+05', 0, 0, 0, 'imammarofficial', 'https://twitter.com/ImAmmarOfficial/status/1270601015440617472');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('13fe1c6a-4b7a-484a-bf30-1df570e78569', '', 'Kash karachi plan k waqat b yahi bat kartay', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270601015365111808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8971e761-1e03-4155-8cd3-8d992a663263', '', 'یہ ہے نالائق و نا اہل حکومت کا کار نامہ اب اس سے فورا”جان چھڑانا ہوگی', '2020-06-10 05:00:00+05', 0, 0, 0, 'khurshidaawan', 'https://twitter.com/khurshidAawan/status/1270600995555495937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3a2de285-73d9-4104-8983-02fb4e93fd2b', '', 'In sha allah janab....ap dua kary bs', '2020-06-10 05:00:00+05', 0, 0, 0, 'bangashwaji', 'https://twitter.com/BangashWaji/status/1270600978572750849');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('31a321ef-2349-4782-b8d3-71f907035fa8', '', 'May Allah swt give her complete health..', '2020-06-10 05:00:00+05', 0, 0, 0, 'abbasmalik13', 'https://twitter.com/AbbasMalik13/status/1270600975657709570');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('72a27fc3-feb0-43b0-bdbe-813c80edeec1', '', 'Ok', '2020-06-10 05:00:00+05', 0, 0, 0, 'lacklustersays', 'https://twitter.com/lacklustersays/status/1270600972272877569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('73ad62bb-9751-4ffd-982f-906b84316e5c', '', '" جب پوری دنیا آپ کے خلاف کھڑی ہو جائے تو آپ دوسری طرف مُنہ کریں اور سیلفی لے لیں،پھر پوری دنیا آپ کے پیچھے کھڑی ہو گی ۔۔📸

Copy pic.twitter.com/nGkJw2Spjb', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamabad110', 'https://twitter.com/islamabad110/status/1270600941520277505');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c938ee1a-4b4b-4dac-b67c-95b519d08532', '', '44444', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600935094566912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('13aa3af6-536e-47b7-a38c-cfe6fe646ae5', '', 'Nope. You need recovered plasma?', '2020-06-10 05:00:00+05', 0, 0, 0, 'saarimmehdi', 'https://twitter.com/SaarimMehdi/status/1270600928203345920');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c6369783-1775-4e3f-8636-dd81dfd670bc', '', 'Allah de rogh ka', '2020-06-10 05:00:00+05', 0, 0, 0, 'nijatmohmand', 'https://twitter.com/NijatMohmand/status/1270600927586762752');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('08469c4d-c225-4d64-b7a6-e01dda368369', '', '@shoaibi26', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600917767933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9e1aef9a-f075-42b3-9c47-397ff973e7f7', '', 'رپورٹ دیکھنے کیلئے لنک پر کلک کریں
 https://youtu.be/okejBvTfUJg  pic.twitter.com/vIw4yiq3C1', '2020-06-10 05:00:00+05', 0, 0, 0, 'sportslinkpk92', 'https://twitter.com/sportslinkpk92/status/1270600903196884993');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c6d9128b-0421-4488-9d17-6eb85d7635c2', '', 'Yaddd hai karchi plan crash p kesa jashan manaya tha.. Ham na just phcha knsa mulk ka ha.. Par apka pora mulk khush tha us din.', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600900130807808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0b4e88c5-dbc6-488e-a2a2-0d18409cd50a', '', 'اتنے حجابوں پر تو یہ عالم ہے حسن کا 
کیا حال ہو جو دیکھ لیں پردہ اٹھا کے "ہم" https://twitter.com/RasoolAalia/status/1270210450047762432 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'highblunder', 'https://twitter.com/HighBlunder/status/1270600895705874435');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0c263e47-c132-4ffa-b9a0-4e890bc59bda', '', ' pic.twitter.com/HZFkJ7lYmR', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270600887438839808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d40ec270-4138-41ce-bb2e-2344765f6c59', '', 'awfully demeaning comment -"poor lady knowing English" Its reflective of our societal malice of gender inequality

There are many women experts on all topics, look around. look at  @JinnahInstitute & @tabadlab policy briefs, roundtables, webinars and you would find them.', '2020-06-10 05:00:00+05', 0, 0, 0, 'yazdanifauzia', 'https://twitter.com/yazdanifauzia/status/1270600886662856704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1c2f8be7-2430-4bfc-8358-8de0f69189a2', '', 'Well love is always blind ❤️ if it''s pure and true love, appearances doesn''t matter', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600879750684673');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('51d2b421-5cf1-475c-a79f-cc2fd300075f', '', '@shoaibi26 

آگ  لگانے  والوں  کو  کہاں  خبر ،،،

🌹🌹🌹🌹👉👉👉👁

رخ  ہواؤں  نے  بدلا  تو  خاک  وہ  بھی ہونگے۔!!#', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600869160144897');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c3ebf482-43b5-4275-9bbc-711faef2a33e', '', 'had me on strings ffs', '2020-06-10 05:00:00+05', 0, 0, 0, 'themohkum', 'https://twitter.com/TheMohkum/status/1270600861870424064');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f3b60673-b0e8-4d17-9796-41f5bc744fe3', '', 'آپ سے اتفاق ہے https://twitter.com/nasirshahoffice/status/1270368126069342208 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'rsabbasi2', 'https://twitter.com/RSabbasi2/status/1270600857202110464');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('90457d04-5e41-4a43-baef-dc481a1284f1', '', 'Good question 😂', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600855419523072');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9cfeba02-7549-4778-b578-eec855b473e4', '', 'چھتر مار کر نکالنا پڑے گا۔ تخم خنزیر میں غیرت کہاں۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamirkhan3288', 'https://twitter.com/aamirkhan3288/status/1270600853641101312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5f049d9d-dbbf-4c85-9266-65603141ff61', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600834737463298');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('56960f8a-ce6c-4b47-a747-cdb46d0b3277', '', 'Haha Allah na kara, at least I am promoting their stories in Pak newspaper''s... Itna to mara ehsan ha in par😅😆', '2020-06-10 05:00:00+05', 0, 0, 0, 'furqanraja1122', 'https://twitter.com/furqanraja1122/status/1270600821546405893');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a9b0a80f-8648-43be-9b78-e465e9f3044d', '', 'گوجرانوالہ: فائرنگ کے 2 زخمی چل بسے https://taazakhaber.com/urdu/%da%af%d9%88%d8%ac%d8%b1%d8%a7%d9%86%d9%88%d8%a7%d9%84%db%81-%d9%81%d8%a7%d8%a6%d8%b1%d9%86%da%af-%da%a9%db%92-2-%d8%b2%d8%ae%d9%85%db%8c-%da%86%d9%84-%d8%a8%d8%b3%db%92/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'khabertaaza', 'https://twitter.com/KhaberTaaza/status/1270600806052618241');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a094d60a-f6fc-4406-b39b-721d48d13cca', '', 'Tora che warpase', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600789279617024');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('eb863594-db9a-4826-a03e-8418de3c3cf9', '', 'Oo :(', '2020-06-10 05:00:00+05', 0, 0, 0, 'rizvihijjab', 'https://twitter.com/RizviHijjab/status/1270600784305152000');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2ce96cf3-c199-4606-8269-66f596856e4a', '', 'Congo dusky', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600773785837569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('da7e87a9-8f52-4cd8-9c43-1039be7ef76b', '', 'کورونا وبا کے باعث پاکستان کی معاشی ترقی کے سفر https://viralpakistan.com/archives/23086 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600771990704128');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2c2da0af-4992-42d3-854b-98bc53258a50', '', 'Thank you ahmed :)', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600754978586627');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f2f48c47-2bf5-4901-b462-dfeec371a49c', '', 'لسٹ 653 B
لیگی جمعیتی فالو ریٹویٹ 
@Sh_Misbah
@MFAK_12
@Najamkhan175
@m_kashmiri79
@SheikhNoorMJav3
@Rsh628
@Saadull9
@MalikSh87
@Mik5642
@MehmoodAhmedqu2
@Mubashar_12
@idrees700
@ChHassnainAli3
@aftab261970
@AbdulHa20984338
@PmlBibi
@JadoonHazara1
@ab_zz1
@kalamkar7
@Z_R786 pic.twitter.com/KlVHrewKnJ', '2020-06-10 05:00:00+05', 0, 0, 0, 'sh_misbah', 'https://twitter.com/Sh_Misbah/status/1270600754848358401');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5486a7a6-23bf-4f3a-9c10-08c554abfcf5', '', 'O Kuch Nahi Milta in Cheezo Sey🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'talhaijaz95', 'https://twitter.com/TalhaIjaz95/status/1270600754777202689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a160cfc0-f056-4340-956e-ec696d21d7c2', '', '🥵🥵🥵', '2020-06-10 05:00:00+05', 0, 0, 0, 'haadeap', 'https://twitter.com/HaadeaP/status/1270600754026381312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6f631ca5-c388-4151-b670-78faa04704ec', '', 'How do people think they can get away with saying this kind of inane nonsense. I would say I’m numb to this but omg is this jarring .', '2020-06-10 05:00:00+05', 0, 0, 0, 'sophiasaifi', 'https://twitter.com/SophiaSaifi/status/1270600748376694785');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('16d03a2e-e7ca-4cc6-b19c-2d60278be22d', '', ' pic.twitter.com/LebjX1avbW', '2020-06-10 05:00:00+05', 0, 0, 0, 'samia_firdous', 'https://twitter.com/samia_firdous/status/1270600742303399937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('35d65430-186d-4e9a-8f82-c4684fcbaf0e', '', ' pic.twitter.com/5Bwc7JGxNC', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600740290080769');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('57e46fd0-2be3-4340-9067-ccd440e7524c', '', 'phely my follow back', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270600721877086208');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('75827f39-c473-47ef-8f5e-4a357ceb5020', '', 'YOURE THE CUTEST 🤧🤧
you cant change my mind, period', '2020-06-10 05:00:00+05', 0, 0, 0, 'bekindplsandtks', 'https://twitter.com/bekindplsandtks/status/1270600721868771329');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5e09b4db-ae26-4d55-9b2d-77557ae9a3cf', '', 'A friend did it and got 12 month og ultimate like that how does that work?', '2020-06-10 05:00:00+05', 0, 0, 0, 'sarimmuhammad', 'https://twitter.com/SarimMuhammad/status/1270600712628699136');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7ae255f6-be13-4ee6-91b2-96c8baa3e842', '', 'hii 🥺', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270600701664808960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('38037a46-a38d-40a2-bf28-cdbd43e92a7d', '', 'MashaAllah great 🌸
Allah pak sb k parents ko khudh and salamt rakhen ameen
The only pure love 💕', '2020-06-10 05:00:00+05', 0, 0, 0, 'amar61955819', 'https://twitter.com/Amar61955819/status/1270600700771340288');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6c7acb95-6a6f-48db-b88e-0e2b3c977f28', '', 'Ohhh acha 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600699433361408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c4a27175-2234-42c9-b16b-d554f50d96b0', '', 'Good morning arsalan.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600697000734720');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4c97593a-153b-4e1f-97f7-3f8425dcc23f', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600696434483201');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('62d7edbc-d15d-425d-af8f-348498ac80a9', '', '🤓', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600693037096967');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d92c69bb-d09c-4b0d-bfb2-aabda7ecf558', '', 'آپ کے پاس کتنے وسائل ہیں؟ 

سو میں سے پانچ کا مطلب ہے پانچ فیصد آبادی! 

ایک کروڑ لوگ؟ https://twitter.com/geonews_urdu/status/1270599191467896834 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'husnainjamal', 'https://twitter.com/HusnainJamal/status/1270600688763092992');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('982b7aa2-5e6c-462b-90ca-a95af4486f81', '', 'You look great honey, don''t let a couple of haters or trolls take that from you. Keep smiling💓', '2020-06-10 05:00:00+05', 0, 0, 0, 'sahar_ashfaq', 'https://twitter.com/sahar_ashfaq/status/1270600682534514689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7c3fac0c-4299-4d77-89df-3076462b5ac7', '', 'When a Back Bencher Solves a Tough Problem in Front of Whole Class On White Board..

Other Back Benchers: pic.twitter.com/16PM0fRAIW', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600664138354689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('10877d8c-736d-4efc-9348-aad3cc7046d1', '', 'یہ قرآن وہ رستہ دکھاتا ہے جو سب سے سیدھا ہے اور مومنوں کو جو نیک عمل کرتے ہیں بشارت دیتا ہے کہ اُن کے لئے اجر عظیم ہے"، سورة الإسراء ﴿۹﴾

#wednesdaymorning
#wednesdaymorning
#wednesdaymorning', '2020-06-10 05:00:00+05', 0, 0, 0, 'adv_shahfahad', 'https://twitter.com/Adv_ShahFahad/status/1270600662309580801');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('224ee3ff-af19-4d51-96bb-68601297a89a', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600660334100480');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('356a0213-1950-47e5-94de-ca25e51fcc51', '', 'And we as a Muslim apologize on this pervert''s behavior towards you. 🙏', '2020-06-10 05:00:00+05', 0, 0, 0, 'khanmubeenahmad', 'https://twitter.com/KhanMubeenAhmad/status/1270600658178191361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('012fc208-eeea-43e3-b82b-2f4e0eeb8cd0', '', 'Dn', '2020-06-10 05:00:00+05', 0, 0, 0, 'itx_danny9', 'https://twitter.com/itx_Danny9/status/1270600654361427968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('abdf9414-2c99-4abc-a49c-459da4752139', '', 'No one 😔 https://twitter.com/eshu_dead/status/1270471475930292225 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'sufijaann', 'https://twitter.com/sufijaann/status/1270600651840671744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e71b1328-b2c4-4143-85e5-18c648814ca1', '', 'Ali 🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600648443256834');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('831d0238-cf91-4ca0-bcd6-957ab8583118', '', 'This is good and wise decision to appointed @AmbassadorSadiq as special representative for Afghanistan because being an amb, he was widely respected in Afghanistan and still Afghan leaders respect him, thats why Afghan FM also warmly welcomed his appointment. https://twitter.com/miqazi/status/1270597229120753664 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamudinsajid', 'https://twitter.com/islamudinsajid/status/1270600640176291842');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('703bbf1b-5b9a-47e9-9486-77fe367f78fb', '', 'عشقِ کامل جس کو عزت بخش دے
ہم نہیں بخش سکتے🙏🏻', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270600637076639744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('00009c64-ad56-4103-bf56-bd11c4255430', '', 'Thank you Ik.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600630466490368');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ffd4d3ab-f4f0-4217-a1c0-c488e22aae9a', '', 'Hahaha 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'aaab_e_hayat', 'https://twitter.com/Aaab_e_hayat/status/1270600620047831045');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2e05b941-fc86-4977-9548-fb7959f2531d', '', '😂😑😂😑', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600616516206593');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7d040f5e-d256-474f-8f36-2d508448899a', '', 'Searching really.', '2020-06-10 05:00:00+05', 0, 0, 0, 'sea_goat', 'https://twitter.com/sea_goat/status/1270600609662676994');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('311576e9-0837-47ba-8844-0b32e5e09fb7', '', 'Well said and thank you for your beautiful words. Good day.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600590712811520');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9ecfbdda-57fe-4bc4-8893-8a2e7be479c7', '', 'Turkey begins constructing modern warship for Pakistan. #pakistan https://www.dawn.com/news/1562426/turkey-begins-constructing-modern-warship-for-pakistan …', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistaninews', 'https://twitter.com/pakistaninews/status/1270600590607945728');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('31a690f0-7558-42d9-a577-9c9b9d1c260d', '', 'Great development Alhamdulilah ,From day one we are listening this but they thought to practise it now, anyhow der ayy durust ayy', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270600589781721088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('eb7d5929-919b-4c71-b302-a707d82dfd5a', '', 'خوف کا ختم ہونا عقل کے حصول کی نشانی ہے خوف میں مبتلا شخص کبھی بھی دانا نہیں ہوسکتا 
برٹنڈ رسل
شکریہ منظور پشتین pic.twitter.com/XE0VxSD8s6', '2020-06-10 05:00:00+05', 0, 0, 0, 'scorpion_junaid', 'https://twitter.com/scorpion_junaid/status/1270600583905521665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6eef7bf0-9cd2-4936-a60b-4b63cceb1b42', '', '44444', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600935094566912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3b1df182-80e5-42a9-afe0-a716c03ec31f', '', 'خان کو اپنا کہنے کا بہانہ چاہیے بس۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'sam18071991', 'https://twitter.com/Sam18071991/status/1270600578285142018');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c16709ce-a139-491e-a5f7-2d80b461507d', '', 'Khty hain k awam pr hukmran un k bech m sy he chuny jaty hain 
Either you call him corrupt or public is corrupt k un m sy b corrupt e un pr muslt key jaty hain 
Whosoever is leader , is from nation. Or zalim hukmran qoum k lye saxa hoty hain', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270600556864778240');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('784ba9e3-bc0c-4c78-aa1d-04ad1c81d351', '', 'How merciful Allah is! #Reminders #socialdiarymagazine #QuranSayings #QuranicVerses  https://www.instagram.com/p/CBPoCe8gpex/?igshid=cdr1j3l1za76 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'socialdiarymagz', 'https://twitter.com/SocialDiaryMagz/status/1270600556722216960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ab86315d-91c4-4684-868f-7c78a492a715', '', 'Aurat ki izat karna aik izatdar mard ki nishani hai❤', '2020-06-10 05:00:00+05', 0, 0, 0, 'aseelmadani_', 'https://twitter.com/aseelmadani_/status/1270600554780246016');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6d24a5b4-369d-4c0a-a4f1-19830f37a32f', '', 'G Sahi 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'mashriqi_hussan', 'https://twitter.com/Mashriqi_Hussan/status/1270600554235023361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e1997b18-e85e-4c1d-ba8f-e019e7e16633', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600544957222912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('68c4f776-5567-4b0f-ad8e-84e355869e79', '', 'Tum pr hi gaya hai na', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600544017625088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1a5d241f-b845-4823-9fa8-f0a206094656', '', '@PTCLOfficial  Gatiya taeern internet pata nai kesy sunty hain yeh log k asar he nai hota in ko...complain karo to thori dair tek jasy he ap ne #1218 pr 1 press kia nai again wo he problem suru', '2020-06-10 05:00:00+05', 0, 0, 0, 'iam_raajput', 'https://twitter.com/iam_raajput/status/1270600539907260416');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('00898c9f-0d95-4cf0-b23c-58022949f861', '', 'کشمیریوں کو بھارتی فوج نے نام نہاد سرچ آپریشن کی آڑ میں شہید کیا ، کشمیر میڈیا سروس', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600539378724864');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f8f78992-03c4-4809-8af0-2e43316bdf4f', '', 'مقبوضہ کشمیر میں بھارتی دہشت  گردی جاری،ضلع شوپیاں میں 3کشمیری شہید', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600537726160898');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e43d4c29-539a-477f-9a84-85574d0392a7', '', 'سرکاری گھروں پر قبضوں سے متعلق ازخودنوٹس کیس:چیف جسٹس https://viralpakistan.com/archives/23084 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600515399933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f54fef20-3e7e-495a-aa49-392b98336db8', '', 'Same as our journalist and journalism claims that they are best in the world', '2020-06-10 05:00:00+05', 0, 0, 0, 'sherafzal2020', 'https://twitter.com/SherAfzal2020/status/1270600515001483265');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('fc2b3498-37a3-454b-86a7-82721d80d0af', '', 'Good day Azb.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600486421397504');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3cc179ca-9b26-4e9a-8bbd-59de8ad7909a', '', 'My pleasure.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600455295586304');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('350c79cf-d67a-4cfb-bac2-d3b711cdafb9', '', 'Hum sy murad main (only me)
Ik to ap alfaz daikhti hain 🤭
Emotions daikhyn ☹️', '2020-06-10 05:00:00+05', 0, 0, 0, 'l0wercase_guy', 'https://twitter.com/l0wercase_guy/status/1270600441840181254');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b2872d0f-1cc8-4e26-9f34-d533ddb8c71b', '', 'When your intentions are pure, you don''t lose anyone. People lose you.', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamnah_j', 'https://twitter.com/Aamnah_J/status/1270600424131833856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a1f671e9-1ca8-4e08-b425-27e2b5506df7', '', 'Khair hai new lay laina 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600409598615553');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('13416e8b-4022-49ab-9177-ab512aee4901', '', 'i like all of u but :( idk', '2020-06-10 05:00:00+05', 0, 0, 0, 'youneverdid1', 'https://twitter.com/youneverdid1/status/1270600391412064256');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6eb8f6f5-43fe-4fbe-9c8b-b29e91f83e15', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600377554042880');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('72cb0bd8-27cb-4b70-8272-b63acad1f79a', '', '"The Great Hack" is a documentary about how public opinion can be manufactured by vested interests. A must see who wants to know about malicious campaigns on social media agianst IK. https://www.youtube.com/watch?v=iX8GxLP1FHo …', '2020-06-10 05:00:00+05', 0, 0, 0, 'saeedbabar', 'https://twitter.com/saeedbabar/status/1270600377394749446');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1cce9bf1-9833-459d-ab78-c7388c5757d1', '', 'YOUUUU ❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'sidrarare', 'https://twitter.com/sidrarare/status/1270600373930274817');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f9fdcb31-e56f-4fbf-af56-c4422b050abe', '', 'Exactly', '2020-06-10 05:00:00+05', 0, 0, 0, 'suhaib165', 'https://twitter.com/suhaib165/status/1270600372193824768');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a2b55273-0632-4771-833e-0ae6fe6ac237', '', ' pic.twitter.com/ffnb4tNyQh', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600368263741440');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8409343d-5100-4d48-9b49-2c10c7f8195e', '', 'سعودی عرب اور ایران کی جس نے صلح کروائی تھی، 
پاکستان میں پیٹرول پمپ والے اس کی بات نہیں مان رہے۔
(منقول)', '2020-06-10 05:00:00+05', 0, 0, 0, 'jaabus2000', 'https://twitter.com/jaabus2000/status/1270600358658785283');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('095db1e2-fd03-47fc-aed8-bc8d8277460b', '', 'Queeeeeeeeeeen😘😍♥️', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270600358054825986');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8ac16324-d9af-4f6b-9659-fc5ffa205344', '', '@mubinasays  sooo meeee🥺🥺🥺💔', '2020-06-10 05:00:00+05', 0, 0, 0, 'awais09870301', 'https://twitter.com/Awais09870301/status/1270600355802382337');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4f45fbb1-7dae-4ef3-a328-889c493da56c', '', 'JazakAllah.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600344968531969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9e7cb321-de49-4562-a5a4-c96d244858d2', '', 'khota', '2020-06-10 05:00:00+05', 0, 0, 0, 'd_illusionist_', 'https://twitter.com/D_illusionist_/status/1270600341512429569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('32be47bf-716e-4a4f-8388-a8fed348d6d7', '', 'Are you thinking to get #Rich? No problem. Learn the ways to get rich easily. Read Book “Ameer Baap Ghareeb Baap” by Robert Kiosaki #LUMS #NUST #UoG #SZABIST #NUML #IBA #Karachi #Pakistancricket #UET #PTI #PMLN #PPP #Lahore Order at Daraz:  https://ift.tt/2XQj1Lb ', '2020-06-10 05:00:00+05', 0, 0, 0, 'eastbookbank1', 'https://twitter.com/EastBookBank1/status/1270600335833300993');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f903636d-2abc-4c08-a420-1bc166d4dc27', '', 'Allah hidayat day Ameen 🤓✌️', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601225285885953');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('91bacf7a-0ffc-4981-a700-3dbb0cf9671a', '', '❣️❣️🔥👍🏻✨', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601220789604355');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('312bb1d0-af79-4faa-9d9b-a954820025c3', '', '@RjAsifsaif', '2020-06-10 05:00:00+05', 0, 0, 0, 'rjasifsaif', 'https://twitter.com/RjAsifsaif/status/1270601215538343936');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0790253c-d31c-4142-99ab-54e98adef2f4', '', '😔', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601209964093445');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('588c5888-6651-4a7e-8946-25b75a5b2a75', '', '@NoorUlAin82 
I wish for you 
I pray for you https://twitter.com/Z_Bangash1/status/1270597984888270848 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramlla_', 'https://twitter.com/Ramlla_/status/1270601206105325568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('99725ce6-8fde-46dc-81e0-2a363625224f', '', 'arrange', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270601203605540865');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('66412a0b-9437-456b-a004-9b2b74de99e6', '', 'سر فروشی کا مزا کُوچہِ اسرار میں ہے
 کَلمہِ حق سے جو پِھر جاۓ وہ مَنصُور نہیں', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistani_313', 'https://twitter.com/PAKISTANI_313/status/1270601197712551942');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('62e1850f-f98b-4f33-9a22-3dd879b54a10', '', ' pic.twitter.com/LebjX1avbW', '2020-06-10 05:00:00+05', 0, 0, 0, 'samia_firdous', 'https://twitter.com/samia_firdous/status/1270600742303399937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('856cf517-3233-4484-becf-ee24606cc491', '', 'Want to know about history of one of the greatest heros of world, 
Here you have that champ to see, who destroyed 5 jets in 30 sec 😍
#PakistanAirForce pic.twitter.com/QQqTr2ZoGP', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270601196429094912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7236f87b-dfd9-4a13-aa53-1789eea11d21', '', 'To bhai ja k rok lo isko plz', '2020-06-10 05:00:00+05', 0, 0, 0, 'nasirmughalpk', 'https://twitter.com/NasirMughalPK/status/1270601196382883840');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1c2971b9-f95e-44ec-b3e8-34549d8b1a87', '', 'اے خدا! تیرا ہر فیصلا سر آنکھوں پر♥
لیکن مجھے دنیا اور آخرت میں وہ چاہیے😍', '2020-06-10 05:00:00+05', 0, 0, 0, 'skyscrapper_70', 'https://twitter.com/skyscrapper_70/status/1270601185041547264');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0d465d46-b901-4d3a-b6a0-fa2c06be05d6', '', 'GORGEOUS 🥺❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270601167282855937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('41a073b1-8493-4c8d-bd69-cd8312de8445', '', 'Nice click 👌👍', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601152892211200');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f2098785-5700-43a0-8bc2-8b55aab31263', '', 'i will fall back asleep any minute dw ure good', '2020-06-10 05:00:00+05', 0, 0, 0, 'shesunreliable', 'https://twitter.com/shesunreliable/status/1270601152867024896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3ad8dfc0-2186-4dac-9bba-eb610da16f4d', '', ':) <33', '2020-06-10 05:00:00+05', 0, 0, 0, 'syyedzeeshan', 'https://twitter.com/SyyedZeeshan/status/1270601150639812608');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('20cd0032-cf26-414b-9961-5f833c18ceba', '', 'Qsm sy 
Kisi ko sui b chubhy gi na " kya m bach to jaunga/i k chkr k bus tweet pr tweet', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270601148286803968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('02642394-f807-4341-9eb7-b36488acc2e9', '', 'Ameen https://twitter.com/Aqsahshmi/status/1270504913207005186 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270601146000965632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('401b6778-6298-47bb-a256-cc0311b04d17', '', 'Walikum salam', '2020-06-10 05:00:00+05', 0, 0, 0, 'mohsinamir10', 'https://twitter.com/Mohsinamir10/status/1270601143408889856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('cba63d4b-1627-441c-87e9-62d884bea0d1', '', 'I am big fan since watching #netflix Versailles as jt embodies the memory of the Sun King.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ameen_swati', 'https://twitter.com/Ameen_Swati/status/1270601141437509634');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f43b36a3-3da7-4ffc-b167-bbe3646654c7', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601133975916545');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('179b8689-6c34-4525-ab2b-601a7033a912', '', 'ICAP: Say something
Nobody: Mene Paper nai dene
ICAP: Then don''t give the Papers You F** Loser That''s the only thing You can Do. 😂😂
#icapExamsOnTime', '2020-06-10 05:00:00+05', 0, 0, 0, 'professornawab', 'https://twitter.com/ProfessorNawab/status/1270601133275439106');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('96a7ba15-1085-4f06-847a-e065f1b16371', '', '1. Every year on April fools someone lit firecrackers in class. 
2. On my first day in a new school, I got to know that a girl committed suicide. 
3. A girl was beaten to death and thrown behind café.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramsha_saghir', 'https://twitter.com/ramsha_saghir/status/1270601129915809792');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('51217ac9-1489-461f-91c9-bcec6b15a68d', '', 'I feel more at home in the outdoors. The streets, twilight, nature. The only part I hate about photographing in the wilderness is ke apna aap sambhalay banda ya camera😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'komallsalman', 'https://twitter.com/komallsalman/status/1270601123951345665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('037a37d5-2bf6-4bd3-b9ba-294d74f5ce10', '', 'Done pic.twitter.com/EE9YCdAmNN', '2020-06-10 05:00:00+05', 0, 0, 0, 'raja_danish5', 'https://twitter.com/Raja_Danish5/status/1270601117672656896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0932e3cb-5b19-4cc4-ae7d-cef6008dc593', '', ' https://twitter.com/messages/media/1270375516055445508 …
ye bhai ka insta ka page hy
@Anaskhan_0909 ka 
is ka page hy 
is ko follow kro insta py 
plzz follow', '2020-06-10 05:00:00+05', 0, 0, 0, 'm_saim467', 'https://twitter.com/m_saim467/status/1270601110756233219');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('299ea211-1ab5-4d90-9369-1635e16e35a2', '', 'Kon narax?', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270601110127030273');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1a9e6d28-6b1f-42af-86cb-17c8bc84b101', '', 'یہاں انصاف صرف طاقتور لوگوں ملتا ہے ۔ غریب تو بے قصور ہو کر بھی قصوروار ٹھہرایا جاتا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'f_a7e', 'https://twitter.com/F_A7e/status/1270601109967720453');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('374afd9a-14df-4a23-aa83-afec5acd2d85', '', 'Khair Bakhsh Marri – Daily Balochistan Express thank you for sharing. I had many interesting conversations with Uncle KB. Unwavering in his beliefs. https://www.bexpress.com.pk/2020/06/khair-bakhsh-marri/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ninoqazi', 'https://twitter.com/ninoqazi/status/1270601102602440704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('557dd7ea-04c5-4c1f-9ffc-d00d533402d9', '', 'Amazing 😍😘👌', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601092712275969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('77d1aa1a-2798-4d09-863a-b12896381a19', '', 'پاکستان اسٹاک مارکیٹ کا مثبت آغاز
مزید پڑھیں:  https://www.humnews.pk/latest/255600/ 
۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔
#HumNews #PSX #KSE #PakistanStockExchange pic.twitter.com/VBBGo6FiPt', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnewspakistan', 'https://twitter.com/humnewspakistan/status/1270601087364497408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8d0e83f0-5c54-40fc-93cd-dada2ce025e3', '', 'Hahaha it is useless to cry over split milk 😂😂😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'miarajput101', 'https://twitter.com/miarajput101/status/1270601087272325120');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d3d40e50-1d75-48ba-8d22-57c82d20fc2b', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601083610693632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('225a2375-dc2e-4a0a-8439-b3f5e6e91368', '', 'Okhay 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601067299037184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('699290f4-9514-471d-b97b-2bb9c139ca79', '', 'Sure 👀', '2020-06-10 05:00:00+05', 0, 0, 0, 'ayrasair', 'https://twitter.com/AyraSair/status/1270601054535761922');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('de3de2ae-9a50-4ed6-be59-3e8e1cfd1131', '', 'Why india always lose land 2 enemy forces

1962 lost Aksai chin 37,244 Sq. km

2013 lost 640 Sq. km in eastern ladakh

2017 lost Doklam, china built the road, came within 60 meters of India’s outpost at Doka La

2020 lost Ladakh 60 Sq. Km

NOW ONCE AGAIN  PLEASE GO BACK
😀😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'ishaqkhan1967', 'https://twitter.com/ishaqkhan1967/status/1270601046767931393');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('721e643e-81aa-4efe-a6ac-25c02b29ed16', '', 'شُکر ہے بالآخر آپ کو بھی سمجھ آ گئی مان ہی گئے
اب اُسے بولیں انا کو چھوڑے اور پاکستان واپس آئے🤷🏻‍♀️', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270601044435836928');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1b53fe02-ed19-4d5d-8c12-ed2fa3308e39', '', 'these mazduur next to my house make sexual noises every dupehr i can''t even sit with my family anymore', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601026865954816');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('56dd66c7-d98b-4e3a-9975-91a8bff66fbf', '', 'صرف میرے لیے نہیں رہنا
تم میرے بعد بھی حسیں رہنا

                 ⁦❤️⁩ pic.twitter.com/RmYERPaKPm', '2020-06-10 05:00:00+05', 0, 0, 0, 'ranjha_of2020', 'https://twitter.com/Ranjha_of2020/status/1270601024617709568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a54501ad-2cb9-4ebc-b936-6b99711ec9ca', '', 'بہت خوب تجزیہ کیا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'faisalsohailfa1', 'https://twitter.com/FaisalSohailFa1/status/1270601020792541184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1c87e92f-eeff-4f4c-bbda-6e7987903960', '', 'Mention not', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601017403547648');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('92aaaa68-4207-451c-b753-5b9e62606d22', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601015843328001');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('50896c77-c1ab-4286-b3fa-e068d07c34cd', '', 'How do people think they can get away with saying this kind of inane nonsense. I would say I’m numb to this but omg is this jarring .', '2020-06-10 05:00:00+05', 0, 0, 0, 'sophiasaifi', 'https://twitter.com/SophiaSaifi/status/1270600748376694785');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('39b272ca-b093-43e1-b10b-ae951390bc01', '', 'میرے گاؤں کا دس سال کا تمیور جو گاؤں تو نہیں ہوتا مگر اور نہ ہی مجھے جانتا تھا 

مگر یوٹیوب پر ویڈیوز دیکھ کر فین ہوگیا 😂♥️

کہتا ہے آپ ایبٹ آباد آئے اور ہمارے گھر کیوں نہیں آئے 

پاور آف یوٹیوب 

ایک سہی مگر مخلص ہو یہی بڑی بات ہوتی ہے pic.twitter.com/vbpazB1Oyq', '2020-06-10 05:00:00+05', 0, 0, 0, 'imammarofficial', 'https://twitter.com/ImAmmarOfficial/status/1270601015440617472');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d2a872f3-319f-4307-a07d-9a403e6bacae', '', 'Kash karachi plan k waqat b yahi bat kartay', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270601015365111808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7cedc852-9fc9-4c19-b589-cc93f2f35943', '', 'یہ ہے نالائق و نا اہل حکومت کا کار نامہ اب اس سے فورا”جان چھڑانا ہوگی', '2020-06-10 05:00:00+05', 0, 0, 0, 'khurshidaawan', 'https://twitter.com/khurshidAawan/status/1270600995555495937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0786304f-61f9-44bf-9cc1-50b388bb9d94', '', 'In sha allah janab....ap dua kary bs', '2020-06-10 05:00:00+05', 0, 0, 0, 'bangashwaji', 'https://twitter.com/BangashWaji/status/1270600978572750849');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('634f3028-f1e1-40b6-a321-f80fd8defa18', '', 'May Allah swt give her complete health..', '2020-06-10 05:00:00+05', 0, 0, 0, 'abbasmalik13', 'https://twitter.com/AbbasMalik13/status/1270600975657709570');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9489bef2-8a19-4157-93a5-afd8ad8ab991', '', 'Ok', '2020-06-10 05:00:00+05', 0, 0, 0, 'lacklustersays', 'https://twitter.com/lacklustersays/status/1270600972272877569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('aa903044-e234-40ad-aed6-c1d15931ec4b', '', '" جب پوری دنیا آپ کے خلاف کھڑی ہو جائے تو آپ دوسری طرف مُنہ کریں اور سیلفی لے لیں،پھر پوری دنیا آپ کے پیچھے کھڑی ہو گی ۔۔📸

Copy pic.twitter.com/nGkJw2Spjb', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamabad110', 'https://twitter.com/islamabad110/status/1270600941520277505');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('185a9827-5478-4ac5-8d4e-220f33ae8834', '', '44444', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600935094566912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f07fd526-0c9a-4b87-9d38-86303a7cc11a', '', 'Nope. You need recovered plasma?', '2020-06-10 05:00:00+05', 0, 0, 0, 'saarimmehdi', 'https://twitter.com/SaarimMehdi/status/1270600928203345920');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('76c4453c-548c-4b2f-b884-9cc4a5255033', '', 'Allah de rogh ka', '2020-06-10 05:00:00+05', 0, 0, 0, 'nijatmohmand', 'https://twitter.com/NijatMohmand/status/1270600927586762752');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a86796bd-93ee-4d70-a046-aa05c71cc3ab', '', '@shoaibi26', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600917767933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('cbf1bf56-f1e0-4585-b38e-1f97921d5c2b', '', 'رپورٹ دیکھنے کیلئے لنک پر کلک کریں
 https://youtu.be/okejBvTfUJg  pic.twitter.com/vIw4yiq3C1', '2020-06-10 05:00:00+05', 0, 0, 0, 'sportslinkpk92', 'https://twitter.com/sportslinkpk92/status/1270600903196884993');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c7656415-81bc-4ef6-8339-1c7051874536', '', 'Yaddd hai karchi plan crash p kesa jashan manaya tha.. Ham na just phcha knsa mulk ka ha.. Par apka pora mulk khush tha us din.', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600900130807808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f4a2f509-e4fd-4cbc-84b3-98ac4cf05a67', '', 'اتنے حجابوں پر تو یہ عالم ہے حسن کا 
کیا حال ہو جو دیکھ لیں پردہ اٹھا کے "ہم" https://twitter.com/RasoolAalia/status/1270210450047762432 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'highblunder', 'https://twitter.com/HighBlunder/status/1270600895705874435');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('443126a8-9a02-4047-894e-09481450d60e', '', ' pic.twitter.com/HZFkJ7lYmR', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270600887438839808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('88e8e75a-24a8-405f-b59f-6cfb0490e537', '', 'awfully demeaning comment -"poor lady knowing English" Its reflective of our societal malice of gender inequality

There are many women experts on all topics, look around. look at  @JinnahInstitute & @tabadlab policy briefs, roundtables, webinars and you would find them.', '2020-06-10 05:00:00+05', 0, 0, 0, 'yazdanifauzia', 'https://twitter.com/yazdanifauzia/status/1270600886662856704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('261cbd4d-7c36-4bb6-b260-5dc9846ccc61', '', 'Well love is always blind ❤️ if it''s pure and true love, appearances doesn''t matter', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600879750684673');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('eeb6ead1-8ce8-4923-878f-26b72dfba4f2', '', '@shoaibi26 

آگ  لگانے  والوں  کو  کہاں  خبر ،،،

🌹🌹🌹🌹👉👉👉👁

رخ  ہواؤں  نے  بدلا  تو  خاک  وہ  بھی ہونگے۔!!#', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600869160144897');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f8e82388-e4bd-4072-a616-215537fc5340', '', 'had me on strings ffs', '2020-06-10 05:00:00+05', 0, 0, 0, 'themohkum', 'https://twitter.com/TheMohkum/status/1270600861870424064');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('32829665-26b1-48a6-b564-edf70ab34cdc', '', 'آپ سے اتفاق ہے https://twitter.com/nasirshahoffice/status/1270368126069342208 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'rsabbasi2', 'https://twitter.com/RSabbasi2/status/1270600857202110464');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('17fc5357-cf69-4814-8a7c-fe1ab24dcdca', '', 'Good question 😂', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600855419523072');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3d7e7b1d-804d-4168-92bb-a074cab1d19c', '', 'چھتر مار کر نکالنا پڑے گا۔ تخم خنزیر میں غیرت کہاں۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamirkhan3288', 'https://twitter.com/aamirkhan3288/status/1270600853641101312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6dcabafc-6c17-4570-bfad-36e64ac600be', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600834737463298');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8f1d14ea-8658-409d-a03c-9ae81ab785e8', '', 'Haha Allah na kara, at least I am promoting their stories in Pak newspaper''s... Itna to mara ehsan ha in par😅😆', '2020-06-10 05:00:00+05', 0, 0, 0, 'furqanraja1122', 'https://twitter.com/furqanraja1122/status/1270600821546405893');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7b47d4c4-2015-4161-9792-b99f33619964', '', 'گوجرانوالہ: فائرنگ کے 2 زخمی چل بسے https://taazakhaber.com/urdu/%da%af%d9%88%d8%ac%d8%b1%d8%a7%d9%86%d9%88%d8%a7%d9%84%db%81-%d9%81%d8%a7%d8%a6%d8%b1%d9%86%da%af-%da%a9%db%92-2-%d8%b2%d8%ae%d9%85%db%8c-%da%86%d9%84-%d8%a8%d8%b3%db%92/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'khabertaaza', 'https://twitter.com/KhaberTaaza/status/1270600806052618241');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('12a4da9f-2897-409f-97b2-3d882841512c', '', 'Tora che warpase', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600789279617024');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('38778c60-72a7-4cab-b19a-eab44dec0250', '', 'Oo :(', '2020-06-10 05:00:00+05', 0, 0, 0, 'rizvihijjab', 'https://twitter.com/RizviHijjab/status/1270600784305152000');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('882afa2d-d67b-4c6f-af7b-195595180bda', '', 'Congo dusky', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600773785837569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('18136620-4404-4c4e-8a14-cb53baa33cd4', '', 'کورونا وبا کے باعث پاکستان کی معاشی ترقی کے سفر https://viralpakistan.com/archives/23086 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600771990704128');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0c4306bf-d9d6-4b3c-a82d-eda74aee8ca6', '', 'Thank you ahmed :)', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600754978586627');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('024ddd3c-d9c1-48f8-bf97-7b62d56d4ce7', '', 'لسٹ 653 B
لیگی جمعیتی فالو ریٹویٹ 
@Sh_Misbah
@MFAK_12
@Najamkhan175
@m_kashmiri79
@SheikhNoorMJav3
@Rsh628
@Saadull9
@MalikSh87
@Mik5642
@MehmoodAhmedqu2
@Mubashar_12
@idrees700
@ChHassnainAli3
@aftab261970
@AbdulHa20984338
@PmlBibi
@JadoonHazara1
@ab_zz1
@kalamkar7
@Z_R786 pic.twitter.com/KlVHrewKnJ', '2020-06-10 05:00:00+05', 0, 0, 0, 'sh_misbah', 'https://twitter.com/Sh_Misbah/status/1270600754848358401');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f3272a3a-c3d9-4bab-8ad2-52dbc1cf4a77', '', 'O Kuch Nahi Milta in Cheezo Sey🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'talhaijaz95', 'https://twitter.com/TalhaIjaz95/status/1270600754777202689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e01958ce-7b0a-4ac5-b085-50152b6a9e13', '', '🥵🥵🥵', '2020-06-10 05:00:00+05', 0, 0, 0, 'haadeap', 'https://twitter.com/HaadeaP/status/1270600754026381312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('fb507a1a-916f-4d42-92ab-675161827d7c', '', ' pic.twitter.com/5Bwc7JGxNC', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600740290080769');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1149ce48-abff-48c9-96c2-588de21948e2', '', 'phely my follow back', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270600721877086208');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('72d5c485-36a8-45e0-a970-5f7d8a3e0843', '', 'YOURE THE CUTEST 🤧🤧
you cant change my mind, period', '2020-06-10 05:00:00+05', 0, 0, 0, 'bekindplsandtks', 'https://twitter.com/bekindplsandtks/status/1270600721868771329');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7a1f7c85-510f-4ac8-9477-614607e03525', '', 'A friend did it and got 12 month og ultimate like that how does that work?', '2020-06-10 05:00:00+05', 0, 0, 0, 'sarimmuhammad', 'https://twitter.com/SarimMuhammad/status/1270600712628699136');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('45e2d61b-3ac3-4d33-8a1d-1aa2254252be', '', 'hii 🥺', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270600701664808960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('de3a8a3c-c8a9-4ef1-84f5-91af579a8fc6', '', 'MashaAllah great 🌸
Allah pak sb k parents ko khudh and salamt rakhen ameen
The only pure love 💕', '2020-06-10 05:00:00+05', 0, 0, 0, 'amar61955819', 'https://twitter.com/Amar61955819/status/1270600700771340288');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('edd8b2ba-a81e-4eb0-9271-aa5c842ac5ae', '', 'Ohhh acha 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600699433361408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('75b664ce-d27c-4b18-a14f-9e576e5125aa', '', 'Good morning arsalan.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600697000734720');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a6a6cf56-e0f8-4ba8-9d5e-436db9640d60', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600696434483201');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7fa56841-7bc3-407b-ac4b-547262b7862e', '', '🤓', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600693037096967');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a039ec45-138c-4e52-820d-f22221be477f', '', 'آپ کے پاس کتنے وسائل ہیں؟ 

سو میں سے پانچ کا مطلب ہے پانچ فیصد آبادی! 

ایک کروڑ لوگ؟ https://twitter.com/geonews_urdu/status/1270599191467896834 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'husnainjamal', 'https://twitter.com/HusnainJamal/status/1270600688763092992');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c18cadb3-b5c0-472f-abe7-6ef6b2e7f5a9', '', 'You look great honey, don''t let a couple of haters or trolls take that from you. Keep smiling💓', '2020-06-10 05:00:00+05', 0, 0, 0, 'sahar_ashfaq', 'https://twitter.com/sahar_ashfaq/status/1270600682534514689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('222be35b-d51d-4374-8e07-091f34a31c9c', '', 'When a Back Bencher Solves a Tough Problem in Front of Whole Class On White Board..

Other Back Benchers: pic.twitter.com/16PM0fRAIW', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600664138354689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a5b3a584-de65-4fff-b790-43cc0847dadf', '', 'یہ قرآن وہ رستہ دکھاتا ہے جو سب سے سیدھا ہے اور مومنوں کو جو نیک عمل کرتے ہیں بشارت دیتا ہے کہ اُن کے لئے اجر عظیم ہے"، سورة الإسراء ﴿۹﴾

#wednesdaymorning
#wednesdaymorning
#wednesdaymorning', '2020-06-10 05:00:00+05', 0, 0, 0, 'adv_shahfahad', 'https://twitter.com/Adv_ShahFahad/status/1270600662309580801');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e2161445-b965-4e44-b474-48a20765ddbb', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600660334100480');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bd6103b2-93b8-4154-ba5c-e4db1043ffa7', '', 'And we as a Muslim apologize on this pervert''s behavior towards you. 🙏', '2020-06-10 05:00:00+05', 0, 0, 0, 'khanmubeenahmad', 'https://twitter.com/KhanMubeenAhmad/status/1270600658178191361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('007657fb-223a-43a1-a5b9-129e4082de16', '', 'Dn', '2020-06-10 05:00:00+05', 0, 0, 0, 'itx_danny9', 'https://twitter.com/itx_Danny9/status/1270600654361427968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8a43b3f6-0aa3-4c99-8122-e1b5c380af1d', '', 'No one 😔 https://twitter.com/eshu_dead/status/1270471475930292225 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'sufijaann', 'https://twitter.com/sufijaann/status/1270600651840671744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('210a6d71-3d3b-4dbf-b5dc-eb263bfd7bd3', '', 'Ali 🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600648443256834');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5199258f-efa7-4e12-8383-83c8f90b7d51', '', 'This is good and wise decision to appointed @AmbassadorSadiq as special representative for Afghanistan because being an amb, he was widely respected in Afghanistan and still Afghan leaders respect him, thats why Afghan FM also warmly welcomed his appointment. https://twitter.com/miqazi/status/1270597229120753664 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamudinsajid', 'https://twitter.com/islamudinsajid/status/1270600640176291842');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('73352548-aab1-405d-94d8-a7611edaf10d', '', 'عشقِ کامل جس کو عزت بخش دے
ہم نہیں بخش سکتے🙏🏻', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270600637076639744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e12591c4-dd00-4c3a-8af7-c9ac08542fa9', '', 'Thank you Ik.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600630466490368');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a98d42c5-dec1-4fb4-851b-cc1bfe365638', '', 'Hahaha 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'aaab_e_hayat', 'https://twitter.com/Aaab_e_hayat/status/1270600620047831045');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1eba2573-66ee-48a6-aed7-1c6f03a0da68', '', '😂😑😂😑', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600616516206593');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ee40123f-7ae5-4e4d-971a-24f9f9175267', '', 'Searching really.', '2020-06-10 05:00:00+05', 0, 0, 0, 'sea_goat', 'https://twitter.com/sea_goat/status/1270600609662676994');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0238b419-25d3-4de9-854a-4b5345687229', '', 'Well said and thank you for your beautiful words. Good day.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600590712811520');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('baf90066-4d45-46b6-b5d2-515205b3d3ff', '', 'Turkey begins constructing modern warship for Pakistan. #pakistan https://www.dawn.com/news/1562426/turkey-begins-constructing-modern-warship-for-pakistan …', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistaninews', 'https://twitter.com/pakistaninews/status/1270600590607945728');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b1df140f-b70b-4b40-a1ef-9f918bef72b8', '', 'Great development Alhamdulilah ,From day one we are listening this but they thought to practise it now, anyhow der ayy durust ayy', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270600589781721088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b352287c-9841-451b-b67e-16d769e5fe48', '', 'خوف کا ختم ہونا عقل کے حصول کی نشانی ہے خوف میں مبتلا شخص کبھی بھی دانا نہیں ہوسکتا 
برٹنڈ رسل
شکریہ منظور پشتین pic.twitter.com/XE0VxSD8s6', '2020-06-10 05:00:00+05', 0, 0, 0, 'scorpion_junaid', 'https://twitter.com/scorpion_junaid/status/1270600583905521665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ddb3cdda-c32d-4cd1-b0eb-932e15ae373f', '', 'خان کو اپنا کہنے کا بہانہ چاہیے بس۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'sam18071991', 'https://twitter.com/Sam18071991/status/1270600578285142018');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('afac30f0-7a92-4b0d-b927-e4e3cc11a84b', '', 'Khty hain k awam pr hukmran un k bech m sy he chuny jaty hain 
Either you call him corrupt or public is corrupt k un m sy b corrupt e un pr muslt key jaty hain 
Whosoever is leader , is from nation. Or zalim hukmran qoum k lye saxa hoty hain', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270600556864778240');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('05c6d234-8ecc-4a85-8b1b-eceb65c35068', '', 'How merciful Allah is! #Reminders #socialdiarymagazine #QuranSayings #QuranicVerses  https://www.instagram.com/p/CBPoCe8gpex/?igshid=cdr1j3l1za76 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'socialdiarymagz', 'https://twitter.com/SocialDiaryMagz/status/1270600556722216960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3984e399-702d-4450-8789-534f44cdf530', '', 'Aurat ki izat karna aik izatdar mard ki nishani hai❤', '2020-06-10 05:00:00+05', 0, 0, 0, 'aseelmadani_', 'https://twitter.com/aseelmadani_/status/1270600554780246016');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a63721c7-8c24-4267-ab2a-e66a3b164c5f', '', 'G Sahi 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'mashriqi_hussan', 'https://twitter.com/Mashriqi_Hussan/status/1270600554235023361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e12680a9-6d6e-40db-baae-90f5fd0fee64', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600544957222912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('11474e90-2af0-4111-8956-2d2fd7be5278', '', 'Tum pr hi gaya hai na', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600544017625088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0c033e73-4289-4f47-8d76-7d1812e301f4', '', '@PTCLOfficial  Gatiya taeern internet pata nai kesy sunty hain yeh log k asar he nai hota in ko...complain karo to thori dair tek jasy he ap ne #1218 pr 1 press kia nai again wo he problem suru', '2020-06-10 05:00:00+05', 0, 0, 0, 'iam_raajput', 'https://twitter.com/iam_raajput/status/1270600539907260416');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('404cc35a-27f8-40f6-a194-4fc526b910b2', '', 'کشمیریوں کو بھارتی فوج نے نام نہاد سرچ آپریشن کی آڑ میں شہید کیا ، کشمیر میڈیا سروس', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600539378724864');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0dc8c8c7-80f6-4105-b67a-52683f03722b', '', 'مقبوضہ کشمیر میں بھارتی دہشت  گردی جاری،ضلع شوپیاں میں 3کشمیری شہید', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600537726160898');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('383e4e95-858c-4f61-a570-72348c35f24c', '', 'سرکاری گھروں پر قبضوں سے متعلق ازخودنوٹس کیس:چیف جسٹس https://viralpakistan.com/archives/23084 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600515399933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a573d1aa-2c1c-4a36-bfda-e07416c659fc', '', 'Same as our journalist and journalism claims that they are best in the world', '2020-06-10 05:00:00+05', 0, 0, 0, 'sherafzal2020', 'https://twitter.com/SherAfzal2020/status/1270600515001483265');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a2dc18a3-bc1e-485a-aeff-de0052d063f1', '', 'Good day Azb.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600486421397504');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ad766bf0-7dcb-4d9b-859b-0830233721db', '', 'My pleasure.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600455295586304');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6048cdf4-503b-4a20-b7ee-7b79398a262b', '', 'Hum sy murad main (only me)
Ik to ap alfaz daikhti hain 🤭
Emotions daikhyn ☹️', '2020-06-10 05:00:00+05', 0, 0, 0, 'l0wercase_guy', 'https://twitter.com/l0wercase_guy/status/1270600441840181254');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7e40372d-5d8b-4a03-aeef-24d5b11fba23', '', 'When your intentions are pure, you don''t lose anyone. People lose you.', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamnah_j', 'https://twitter.com/Aamnah_J/status/1270600424131833856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1bcb8c00-8ff1-4a69-9cae-fdb66fef0c00', '', 'Khair hai new lay laina 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600409598615553');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3d9fc5c8-1c78-42be-812b-d25fc9b6a3e2', '', 'i like all of u but :( idk', '2020-06-10 05:00:00+05', 0, 0, 0, 'youneverdid1', 'https://twitter.com/youneverdid1/status/1270600391412064256');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('220bbb71-5a72-44f0-b25e-0ed4ea003ba8', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600377554042880');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a1301204-2990-4e16-a457-2d2c6332babe', '', '"The Great Hack" is a documentary about how public opinion can be manufactured by vested interests. A must see who wants to know about malicious campaigns on social media agianst IK. https://www.youtube.com/watch?v=iX8GxLP1FHo …', '2020-06-10 05:00:00+05', 0, 0, 0, 'saeedbabar', 'https://twitter.com/saeedbabar/status/1270600377394749446');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8d176978-477e-4354-ac78-c1577d727464', '', 'YOUUUU ❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'sidrarare', 'https://twitter.com/sidrarare/status/1270600373930274817');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8b579dba-57b5-446e-a1d9-e04e69ffcc90', '', 'Exactly', '2020-06-10 05:00:00+05', 0, 0, 0, 'suhaib165', 'https://twitter.com/suhaib165/status/1270600372193824768');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('94ffbb12-c867-4c6b-b06b-8086af9db438', '', ' pic.twitter.com/ffnb4tNyQh', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600368263741440');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f1ab6b53-bb5c-4b4a-81de-a1d3d2d3f782', '', 'سعودی عرب اور ایران کی جس نے صلح کروائی تھی، 
پاکستان میں پیٹرول پمپ والے اس کی بات نہیں مان رہے۔
(منقول)', '2020-06-10 05:00:00+05', 0, 0, 0, 'jaabus2000', 'https://twitter.com/jaabus2000/status/1270600358658785283');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('21b80534-e8c7-4383-911b-0e5170f5b89b', '', 'Queeeeeeeeeeen😘😍♥️', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270600358054825986');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('85768436-69bb-485c-9555-b3c5379f5ac5', '', '@mubinasays  sooo meeee🥺🥺🥺💔', '2020-06-10 05:00:00+05', 0, 0, 0, 'awais09870301', 'https://twitter.com/Awais09870301/status/1270600355802382337');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('034e9d16-4516-48a6-8f4c-f9edd34674ca', '', 'JazakAllah.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600344968531969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7af893a0-f614-49f8-a26a-1dce032547d0', '', 'khota', '2020-06-10 05:00:00+05', 0, 0, 0, 'd_illusionist_', 'https://twitter.com/D_illusionist_/status/1270600341512429569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5f87b82d-0f42-42c7-8fbb-2ad5bea36e8e', '', 'Are you thinking to get #Rich? No problem. Learn the ways to get rich easily. Read Book “Ameer Baap Ghareeb Baap” by Robert Kiosaki #LUMS #NUST #UoG #SZABIST #NUML #IBA #Karachi #Pakistancricket #UET #PTI #PMLN #PPP #Lahore Order at Daraz:  https://ift.tt/2XQj1Lb ', '2020-06-10 05:00:00+05', 0, 0, 0, 'eastbookbank1', 'https://twitter.com/EastBookBank1/status/1270600335833300993');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('039a45d9-0293-495f-b8e6-fc7012c7cc16', '', 'Allah hidayat day Ameen 🤓✌️', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601225285885953');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a08d3623-fb53-4edd-942f-7574c9a368c3', '', '❣️❣️🔥👍🏻✨', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601220789604355');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e87b98c3-7813-4091-9633-92ae47b49bc8', '', '@RjAsifsaif', '2020-06-10 05:00:00+05', 0, 0, 0, 'rjasifsaif', 'https://twitter.com/RjAsifsaif/status/1270601215538343936');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('fad06a1b-9bd6-4eba-a37b-4a83f36eb4cc', '', '😔', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601209964093445');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('373e3f1e-973c-4214-929c-0c599c477d1f', '', '@NoorUlAin82 
I wish for you 
I pray for you https://twitter.com/Z_Bangash1/status/1270597984888270848 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramlla_', 'https://twitter.com/Ramlla_/status/1270601206105325568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('78e47ca8-0173-4a3b-8edf-f33a61aa9604', '', 'arrange', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270601203605540865');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5a1eeec4-f3f0-432a-aa44-ef1b6484dd34', '', 'سر فروشی کا مزا کُوچہِ اسرار میں ہے
 کَلمہِ حق سے جو پِھر جاۓ وہ مَنصُور نہیں', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistani_313', 'https://twitter.com/PAKISTANI_313/status/1270601197712551942');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('fbba73dd-af9c-4bb3-8e3f-ee8fec499af8', '', 'Want to know about history of one of the greatest heros of world, 
Here you have that champ to see, who destroyed 5 jets in 30 sec 😍
#PakistanAirForce pic.twitter.com/QQqTr2ZoGP', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270601196429094912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d470fcc9-62f9-477f-be7b-aeb5d9478f5d', '', 'To bhai ja k rok lo isko plz', '2020-06-10 05:00:00+05', 0, 0, 0, 'nasirmughalpk', 'https://twitter.com/NasirMughalPK/status/1270601196382883840');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d947df01-c23a-4bbd-9df2-a2bbd3b3138b', '', 'اے خدا! تیرا ہر فیصلا سر آنکھوں پر♥
لیکن مجھے دنیا اور آخرت میں وہ چاہیے😍', '2020-06-10 05:00:00+05', 0, 0, 0, 'skyscrapper_70', 'https://twitter.com/skyscrapper_70/status/1270601185041547264');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d648b2ae-6663-41a9-9984-edef863ed89a', '', 'GORGEOUS 🥺❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270601167282855937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('99305c2e-063c-4f75-8cb1-f2abd5c01e56', '', 'Nice click 👌👍', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601152892211200');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('accbbc73-9adb-4e22-aa0c-052d1ac35644', '', 'i will fall back asleep any minute dw ure good', '2020-06-10 05:00:00+05', 0, 0, 0, 'shesunreliable', 'https://twitter.com/shesunreliable/status/1270601152867024896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('351b5c94-a3c4-493d-85b0-8fd67a5a9312', '', ':) <33', '2020-06-10 05:00:00+05', 0, 0, 0, 'syyedzeeshan', 'https://twitter.com/SyyedZeeshan/status/1270601150639812608');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2dfb0278-2ac5-42ab-adb7-5c87d4678944', '', 'Qsm sy 
Kisi ko sui b chubhy gi na " kya m bach to jaunga/i k chkr k bus tweet pr tweet', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270601148286803968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('cb47ef5b-eb78-4315-bb70-067d7e788ec1', '', 'Ameen https://twitter.com/Aqsahshmi/status/1270504913207005186 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270601146000965632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c8754fb5-81f6-48e6-a321-a1690d498be1', '', 'Walikum salam', '2020-06-10 05:00:00+05', 0, 0, 0, 'mohsinamir10', 'https://twitter.com/Mohsinamir10/status/1270601143408889856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5a81b48a-9aa0-49eb-8e61-90c218bde6d9', '', 'I am big fan since watching #netflix Versailles as jt embodies the memory of the Sun King.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ameen_swati', 'https://twitter.com/Ameen_Swati/status/1270601141437509634');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('10e4d306-a987-4c5e-9bb6-d23493069b94', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601133975916545');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6e2de926-6737-4e27-a5bb-a887d5b18b9a', '', 'ICAP: Say something
Nobody: Mene Paper nai dene
ICAP: Then don''t give the Papers You F** Loser That''s the only thing You can Do. 😂😂
#icapExamsOnTime', '2020-06-10 05:00:00+05', 0, 0, 0, 'professornawab', 'https://twitter.com/ProfessorNawab/status/1270601133275439106');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4e63fe70-5b11-48e7-8ff4-e97b6261ddf8', '', '1. Every year on April fools someone lit firecrackers in class. 
2. On my first day in a new school, I got to know that a girl committed suicide. 
3. A girl was beaten to death and thrown behind café.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramsha_saghir', 'https://twitter.com/ramsha_saghir/status/1270601129915809792');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ca624f2d-bebe-4320-a294-c00c85068e41', '', 'I feel more at home in the outdoors. The streets, twilight, nature. The only part I hate about photographing in the wilderness is ke apna aap sambhalay banda ya camera😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'komallsalman', 'https://twitter.com/komallsalman/status/1270601123951345665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d29c8a34-2132-40a9-adbe-a4445ad4ac62', '', 'Done pic.twitter.com/EE9YCdAmNN', '2020-06-10 05:00:00+05', 0, 0, 0, 'raja_danish5', 'https://twitter.com/Raja_Danish5/status/1270601117672656896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a009a799-2b66-4834-87bd-05c5209d3c9e', '', ' https://twitter.com/messages/media/1270375516055445508 …
ye bhai ka insta ka page hy
@Anaskhan_0909 ka 
is ka page hy 
is ko follow kro insta py 
plzz follow', '2020-06-10 05:00:00+05', 0, 0, 0, 'm_saim467', 'https://twitter.com/m_saim467/status/1270601110756233219');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a5f8c0bf-534a-4b49-937b-6f38158d13d2', '', 'Kon narax?', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270601110127030273');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5ea9c8ab-912d-43f0-b093-7c971f35201f', '', 'یہاں انصاف صرف طاقتور لوگوں ملتا ہے ۔ غریب تو بے قصور ہو کر بھی قصوروار ٹھہرایا جاتا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'f_a7e', 'https://twitter.com/F_A7e/status/1270601109967720453');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4b705720-cafe-4cc0-8f60-c11d3b6c4d62', '', 'Khair Bakhsh Marri – Daily Balochistan Express thank you for sharing. I had many interesting conversations with Uncle KB. Unwavering in his beliefs. https://www.bexpress.com.pk/2020/06/khair-bakhsh-marri/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ninoqazi', 'https://twitter.com/ninoqazi/status/1270601102602440704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('21270979-86d4-4dbb-aab8-ecaa7e7aa4da', '', 'Amazing 😍😘👌', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601092712275969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e52c6cc3-6d20-49a3-af91-ddea3434d210', '', 'پاکستان اسٹاک مارکیٹ کا مثبت آغاز
مزید پڑھیں:  https://www.humnews.pk/latest/255600/ 
۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔
#HumNews #PSX #KSE #PakistanStockExchange pic.twitter.com/VBBGo6FiPt', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnewspakistan', 'https://twitter.com/humnewspakistan/status/1270601087364497408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('deeefc71-f582-4883-a496-b5904b8187c3', '', 'Hahaha it is useless to cry over split milk 😂😂😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'miarajput101', 'https://twitter.com/miarajput101/status/1270601087272325120');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ff65acf7-768f-40ca-a4d7-0515a4c5e6b7', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601083610693632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('50b11a14-8e42-4544-876d-f185849394c0', '', 'Okhay 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601067299037184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3533e66a-5f7c-4b87-ae8e-c2d455518608', '', 'Sure 👀', '2020-06-10 05:00:00+05', 0, 0, 0, 'ayrasair', 'https://twitter.com/AyraSair/status/1270601054535761922');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('10195a0c-dcbb-44a8-9469-ab94abee2c5b', '', 'Why india always lose land 2 enemy forces

1962 lost Aksai chin 37,244 Sq. km

2013 lost 640 Sq. km in eastern ladakh

2017 lost Doklam, china built the road, came within 60 meters of India’s outpost at Doka La

2020 lost Ladakh 60 Sq. Km

NOW ONCE AGAIN  PLEASE GO BACK
😀😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'ishaqkhan1967', 'https://twitter.com/ishaqkhan1967/status/1270601046767931393');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b2cc5bca-c810-40cd-af7a-4b4f44541dea', '', 'شُکر ہے بالآخر آپ کو بھی سمجھ آ گئی مان ہی گئے
اب اُسے بولیں انا کو چھوڑے اور پاکستان واپس آئے🤷🏻‍♀️', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270601044435836928');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8506a507-39f0-46a9-b5a8-dd81135fd4b0', '', 'these mazduur next to my house make sexual noises every dupehr i can''t even sit with my family anymore', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601026865954816');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c68be952-01e5-4b29-9433-9f4c97f86037', '', 'صرف میرے لیے نہیں رہنا
تم میرے بعد بھی حسیں رہنا

                 ⁦❤️⁩ pic.twitter.com/RmYERPaKPm', '2020-06-10 05:00:00+05', 0, 0, 0, 'ranjha_of2020', 'https://twitter.com/Ranjha_of2020/status/1270601024617709568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5ad8f0e5-1b39-481a-894f-5292b1d74324', '', 'بہت خوب تجزیہ کیا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'faisalsohailfa1', 'https://twitter.com/FaisalSohailFa1/status/1270601020792541184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7e1e7434-ea23-47aa-b894-d17ce5d2c536', '', 'Mention not', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601017403547648');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('38acbe20-3c44-4c0e-bde1-9f341d5f9c9c', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601015843328001');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4a9692c3-2a7c-4b0c-9bf1-225dc95083b0', '', 'میرے گاؤں کا دس سال کا تمیور جو گاؤں تو نہیں ہوتا مگر اور نہ ہی مجھے جانتا تھا 

مگر یوٹیوب پر ویڈیوز دیکھ کر فین ہوگیا 😂♥️

کہتا ہے آپ ایبٹ آباد آئے اور ہمارے گھر کیوں نہیں آئے 

پاور آف یوٹیوب 

ایک سہی مگر مخلص ہو یہی بڑی بات ہوتی ہے pic.twitter.com/vbpazB1Oyq', '2020-06-10 05:00:00+05', 0, 0, 0, 'imammarofficial', 'https://twitter.com/ImAmmarOfficial/status/1270601015440617472');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8135b505-585b-4a3c-9d79-ec9af576679c', '', 'Kash karachi plan k waqat b yahi bat kartay', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270601015365111808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2932bac7-d94e-4cb3-80c6-744c0246b373', '', 'یہ ہے نالائق و نا اہل حکومت کا کار نامہ اب اس سے فورا”جان چھڑانا ہوگی', '2020-06-10 05:00:00+05', 0, 0, 0, 'khurshidaawan', 'https://twitter.com/khurshidAawan/status/1270600995555495937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('56270271-15b9-47a3-9894-daa1ba86c96b', '', 'In sha allah janab....ap dua kary bs', '2020-06-10 05:00:00+05', 0, 0, 0, 'bangashwaji', 'https://twitter.com/BangashWaji/status/1270600978572750849');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('87935b5f-9a5a-4d4f-847a-cb4f662591ea', '', 'May Allah swt give her complete health..', '2020-06-10 05:00:00+05', 0, 0, 0, 'abbasmalik13', 'https://twitter.com/AbbasMalik13/status/1270600975657709570');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b737e427-e20b-4a9a-b73f-92887954225b', '', 'Ok', '2020-06-10 05:00:00+05', 0, 0, 0, 'lacklustersays', 'https://twitter.com/lacklustersays/status/1270600972272877569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5e9a0d56-20d0-4cbe-87a1-5c89b396fa28', '', '" جب پوری دنیا آپ کے خلاف کھڑی ہو جائے تو آپ دوسری طرف مُنہ کریں اور سیلفی لے لیں،پھر پوری دنیا آپ کے پیچھے کھڑی ہو گی ۔۔📸

Copy pic.twitter.com/nGkJw2Spjb', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamabad110', 'https://twitter.com/islamabad110/status/1270600941520277505');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('24cb0c77-ca1a-4b77-b333-0c22e7286344', '', 'Nope. You need recovered plasma?', '2020-06-10 05:00:00+05', 0, 0, 0, 'saarimmehdi', 'https://twitter.com/SaarimMehdi/status/1270600928203345920');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('46c87e24-f872-42d1-8cac-4bc1588ee5c2', '', 'Allah de rogh ka', '2020-06-10 05:00:00+05', 0, 0, 0, 'nijatmohmand', 'https://twitter.com/NijatMohmand/status/1270600927586762752');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b99e228a-d6dd-4597-9c93-a2cbbf1ecd68', '', '@shoaibi26', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600917767933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a378ea98-548d-4cfd-8401-d6c374fd345b', '', 'رپورٹ دیکھنے کیلئے لنک پر کلک کریں
 https://youtu.be/okejBvTfUJg  pic.twitter.com/vIw4yiq3C1', '2020-06-10 05:00:00+05', 0, 0, 0, 'sportslinkpk92', 'https://twitter.com/sportslinkpk92/status/1270600903196884993');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d3a0dc03-e408-4344-a81f-d90e1ed54fd9', '', 'Yaddd hai karchi plan crash p kesa jashan manaya tha.. Ham na just phcha knsa mulk ka ha.. Par apka pora mulk khush tha us din.', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600900130807808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('689eb0b6-7840-4433-ab56-ad01563c1333', '', 'اتنے حجابوں پر تو یہ عالم ہے حسن کا 
کیا حال ہو جو دیکھ لیں پردہ اٹھا کے "ہم" https://twitter.com/RasoolAalia/status/1270210450047762432 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'highblunder', 'https://twitter.com/HighBlunder/status/1270600895705874435');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2bef8368-4ff6-43d3-89f7-e60d4a11eab4', '', ' pic.twitter.com/HZFkJ7lYmR', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270600887438839808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ef9bba55-d997-4e8d-b7db-d7936c027765', '', 'awfully demeaning comment -"poor lady knowing English" Its reflective of our societal malice of gender inequality

There are many women experts on all topics, look around. look at  @JinnahInstitute & @tabadlab policy briefs, roundtables, webinars and you would find them.', '2020-06-10 05:00:00+05', 0, 0, 0, 'yazdanifauzia', 'https://twitter.com/yazdanifauzia/status/1270600886662856704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0c7fe022-dbde-42ab-ad7d-fcb0167008a6', '', 'Well love is always blind ❤️ if it''s pure and true love, appearances doesn''t matter', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600879750684673');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6931deb0-a082-453f-89e2-b0aa8c0c9978', '', '@shoaibi26 

آگ  لگانے  والوں  کو  کہاں  خبر ،،،

🌹🌹🌹🌹👉👉👉👁

رخ  ہواؤں  نے  بدلا  تو  خاک  وہ  بھی ہونگے۔!!#', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600869160144897');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a09f6744-51a7-4cc1-8c2e-221e75384c54', '', 'had me on strings ffs', '2020-06-10 05:00:00+05', 0, 0, 0, 'themohkum', 'https://twitter.com/TheMohkum/status/1270600861870424064');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6e360700-6cb4-41e7-8991-c4b1d6643d15', '', 'آپ سے اتفاق ہے https://twitter.com/nasirshahoffice/status/1270368126069342208 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'rsabbasi2', 'https://twitter.com/RSabbasi2/status/1270600857202110464');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('35277415-1425-44eb-b952-c6bf3f673a0f', '', 'Good question 😂', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600855419523072');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('24a40684-c508-4665-8fc6-7a68d8399063', '', 'چھتر مار کر نکالنا پڑے گا۔ تخم خنزیر میں غیرت کہاں۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamirkhan3288', 'https://twitter.com/aamirkhan3288/status/1270600853641101312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d874e3b8-3d00-428a-bd55-5be2c0219b78', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600834737463298');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('669a3a82-548c-47ce-87c0-c0572b2940a1', '', 'Haha Allah na kara, at least I am promoting their stories in Pak newspaper''s... Itna to mara ehsan ha in par😅😆', '2020-06-10 05:00:00+05', 0, 0, 0, 'furqanraja1122', 'https://twitter.com/furqanraja1122/status/1270600821546405893');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('248d416c-a9de-486e-a67e-6306f1291ba0', '', 'گوجرانوالہ: فائرنگ کے 2 زخمی چل بسے https://taazakhaber.com/urdu/%da%af%d9%88%d8%ac%d8%b1%d8%a7%d9%86%d9%88%d8%a7%d9%84%db%81-%d9%81%d8%a7%d8%a6%d8%b1%d9%86%da%af-%da%a9%db%92-2-%d8%b2%d8%ae%d9%85%db%8c-%da%86%d9%84-%d8%a8%d8%b3%db%92/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'khabertaaza', 'https://twitter.com/KhaberTaaza/status/1270600806052618241');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0016d051-27ea-4d3f-a8ad-5e13c1a61e53', '', 'Tora che warpase', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600789279617024');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a20a8f4a-40e1-4f7a-8530-2f32e34902a6', '', 'Oo :(', '2020-06-10 05:00:00+05', 0, 0, 0, 'rizvihijjab', 'https://twitter.com/RizviHijjab/status/1270600784305152000');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6e37aa9c-e0f1-4d69-b86f-4bd631f1e58d', '', 'Congo dusky', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600773785837569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b26e1c58-f53f-4be8-bb33-fb4535c7600f', '', 'کورونا وبا کے باعث پاکستان کی معاشی ترقی کے سفر https://viralpakistan.com/archives/23086 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600771990704128');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c8265559-3094-4b76-a672-e09ff3a717b5', '', 'Thank you ahmed :)', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600754978586627');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('23d201f8-ff32-4bf7-a05f-378357ea4424', '', 'لسٹ 653 B
لیگی جمعیتی فالو ریٹویٹ 
@Sh_Misbah
@MFAK_12
@Najamkhan175
@m_kashmiri79
@SheikhNoorMJav3
@Rsh628
@Saadull9
@MalikSh87
@Mik5642
@MehmoodAhmedqu2
@Mubashar_12
@idrees700
@ChHassnainAli3
@aftab261970
@AbdulHa20984338
@PmlBibi
@JadoonHazara1
@ab_zz1
@kalamkar7
@Z_R786 pic.twitter.com/KlVHrewKnJ', '2020-06-10 05:00:00+05', 0, 0, 0, 'sh_misbah', 'https://twitter.com/Sh_Misbah/status/1270600754848358401');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5fc40b19-6eb8-4e33-8e54-129e04279e06', '', 'O Kuch Nahi Milta in Cheezo Sey🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'talhaijaz95', 'https://twitter.com/TalhaIjaz95/status/1270600754777202689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7faedd8b-7447-4cf2-abfb-b95871c49e5d', '', '🥵🥵🥵', '2020-06-10 05:00:00+05', 0, 0, 0, 'haadeap', 'https://twitter.com/HaadeaP/status/1270600754026381312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b0c392f3-9921-4483-bfdb-45b5b8545005', '', 'How do people think they can get away with saying this kind of inane nonsense. I would say I’m numb to this but omg is this jarring .', '2020-06-10 05:00:00+05', 0, 0, 0, 'sophiasaifi', 'https://twitter.com/SophiaSaifi/status/1270600748376694785');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5916ad83-c6d5-450e-bb41-118b2d143f23', '', ' pic.twitter.com/LebjX1avbW', '2020-06-10 05:00:00+05', 0, 0, 0, 'samia_firdous', 'https://twitter.com/samia_firdous/status/1270600742303399937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e42e5b8d-f204-41b7-985e-d85c7952773e', '', ' pic.twitter.com/5Bwc7JGxNC', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600740290080769');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('87e1a8e5-1f80-4823-9096-b9d2d62b4f11', '', 'phely my follow back', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270600721877086208');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3c2950f6-e299-4882-8d56-e75494ac720a', '', 'YOURE THE CUTEST 🤧🤧
you cant change my mind, period', '2020-06-10 05:00:00+05', 0, 0, 0, 'bekindplsandtks', 'https://twitter.com/bekindplsandtks/status/1270600721868771329');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('63e2d64e-6f0f-4064-a88a-22c203cae473', '', 'A friend did it and got 12 month og ultimate like that how does that work?', '2020-06-10 05:00:00+05', 0, 0, 0, 'sarimmuhammad', 'https://twitter.com/SarimMuhammad/status/1270600712628699136');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a902566c-aa18-4082-8861-d4f8027ce238', '', 'hii 🥺', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270600701664808960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9b8f8eab-3cb0-406c-86ed-14c917095d4b', '', 'MashaAllah great 🌸
Allah pak sb k parents ko khudh and salamt rakhen ameen
The only pure love 💕', '2020-06-10 05:00:00+05', 0, 0, 0, 'amar61955819', 'https://twitter.com/Amar61955819/status/1270600700771340288');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('aef73f34-30f5-44b5-a9de-9f024a57fb7c', '', 'Ohhh acha 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600699433361408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3a8a68e9-b006-47cc-9268-9845ae621f18', '', 'Good morning arsalan.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600697000734720');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8741961c-8aca-44ea-83c0-fca212dec69e', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600696434483201');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5d2eeb6f-0603-4704-8146-6a513d2068a1', '', '🤓', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600693037096967');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('70bc1eae-eff3-4c44-81da-24f0b9660a4f', '', 'آپ کے پاس کتنے وسائل ہیں؟ 

سو میں سے پانچ کا مطلب ہے پانچ فیصد آبادی! 

ایک کروڑ لوگ؟ https://twitter.com/geonews_urdu/status/1270599191467896834 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'husnainjamal', 'https://twitter.com/HusnainJamal/status/1270600688763092992');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c8a1c92c-d410-4de0-8034-e5852c6776c1', '', 'You look great honey, don''t let a couple of haters or trolls take that from you. Keep smiling💓', '2020-06-10 05:00:00+05', 0, 0, 0, 'sahar_ashfaq', 'https://twitter.com/sahar_ashfaq/status/1270600682534514689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a404eafc-9d23-4155-a10d-9729e37f29d9', '', 'When a Back Bencher Solves a Tough Problem in Front of Whole Class On White Board..

Other Back Benchers: pic.twitter.com/16PM0fRAIW', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600664138354689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('874a59dd-5bad-4e5f-9c44-100ab04f3ff4', '', 'یہ قرآن وہ رستہ دکھاتا ہے جو سب سے سیدھا ہے اور مومنوں کو جو نیک عمل کرتے ہیں بشارت دیتا ہے کہ اُن کے لئے اجر عظیم ہے"، سورة الإسراء ﴿۹﴾

#wednesdaymorning
#wednesdaymorning
#wednesdaymorning', '2020-06-10 05:00:00+05', 0, 0, 0, 'adv_shahfahad', 'https://twitter.com/Adv_ShahFahad/status/1270600662309580801');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('75a5c9aa-2900-47cc-bf99-4d2ca37e85c9', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600660334100480');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('040a0ed7-b207-4950-96a0-c8629ba0c3fc', '', 'And we as a Muslim apologize on this pervert''s behavior towards you. 🙏', '2020-06-10 05:00:00+05', 0, 0, 0, 'khanmubeenahmad', 'https://twitter.com/KhanMubeenAhmad/status/1270600658178191361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8eea53f7-987f-40d9-8a81-6897b38d359d', '', 'Dn', '2020-06-10 05:00:00+05', 0, 0, 0, 'itx_danny9', 'https://twitter.com/itx_Danny9/status/1270600654361427968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('63c2838b-1ffd-49c2-96c8-742c61eead20', '', 'No one 😔 https://twitter.com/eshu_dead/status/1270471475930292225 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'sufijaann', 'https://twitter.com/sufijaann/status/1270600651840671744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f0bcff40-f412-4c3a-93e5-b5a29f57cf6c', '', 'Ali 🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600648443256834');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4bafa252-c99f-4d8e-8965-6911e6299da4', '', 'This is good and wise decision to appointed @AmbassadorSadiq as special representative for Afghanistan because being an amb, he was widely respected in Afghanistan and still Afghan leaders respect him, thats why Afghan FM also warmly welcomed his appointment. https://twitter.com/miqazi/status/1270597229120753664 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamudinsajid', 'https://twitter.com/islamudinsajid/status/1270600640176291842');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('aef6af2b-dcb1-47bc-be5c-153fa8d9ee88', '', 'عشقِ کامل جس کو عزت بخش دے
ہم نہیں بخش سکتے🙏🏻', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270600637076639744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e3b553dd-57fe-4f4d-aad4-659d83b47c27', '', 'Thank you Ik.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600630466490368');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('74f94348-81da-4a76-b3e9-d9b642132624', '', 'Hahaha 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'aaab_e_hayat', 'https://twitter.com/Aaab_e_hayat/status/1270600620047831045');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d7193026-c9b5-4550-b3aa-8697aaaf1a6a', '', '😂😑😂😑', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600616516206593');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4eea5653-62b4-4299-9b32-37c850613e5e', '', 'Searching really.', '2020-06-10 05:00:00+05', 0, 0, 0, 'sea_goat', 'https://twitter.com/sea_goat/status/1270600609662676994');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bc668ee1-7a67-401a-a561-01c939706bec', '', 'Well said and thank you for your beautiful words. Good day.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600590712811520');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ca013233-18a9-490b-9bab-d2ddcf91fad3', '', 'Turkey begins constructing modern warship for Pakistan. #pakistan https://www.dawn.com/news/1562426/turkey-begins-constructing-modern-warship-for-pakistan …', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistaninews', 'https://twitter.com/pakistaninews/status/1270600590607945728');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2d00362e-7eb7-4ac6-82ed-f517ba0e0dca', '', 'Great development Alhamdulilah ,From day one we are listening this but they thought to practise it now, anyhow der ayy durust ayy', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270600589781721088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('22147989-12b1-4aa1-b944-a35cc5bb9aed', '', 'خوف کا ختم ہونا عقل کے حصول کی نشانی ہے خوف میں مبتلا شخص کبھی بھی دانا نہیں ہوسکتا 
برٹنڈ رسل
شکریہ منظور پشتین pic.twitter.com/XE0VxSD8s6', '2020-06-10 05:00:00+05', 0, 0, 0, 'scorpion_junaid', 'https://twitter.com/scorpion_junaid/status/1270600583905521665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a4832360-c0d7-4c3f-a399-a43825eb6f60', '', 'خان کو اپنا کہنے کا بہانہ چاہیے بس۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'sam18071991', 'https://twitter.com/Sam18071991/status/1270600578285142018');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d9177402-84b2-4c11-bd70-337c7658bbab', '', 'Khty hain k awam pr hukmran un k bech m sy he chuny jaty hain 
Either you call him corrupt or public is corrupt k un m sy b corrupt e un pr muslt key jaty hain 
Whosoever is leader , is from nation. Or zalim hukmran qoum k lye saxa hoty hain', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270600556864778240');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('16b3ff02-5a51-46af-ba26-ff31f8283d55', '', 'How merciful Allah is! #Reminders #socialdiarymagazine #QuranSayings #QuranicVerses  https://www.instagram.com/p/CBPoCe8gpex/?igshid=cdr1j3l1za76 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'socialdiarymagz', 'https://twitter.com/SocialDiaryMagz/status/1270600556722216960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('34fb00c4-c66d-49e4-a26f-5c1acae4d7f9', '', 'Aurat ki izat karna aik izatdar mard ki nishani hai❤', '2020-06-10 05:00:00+05', 0, 0, 0, 'aseelmadani_', 'https://twitter.com/aseelmadani_/status/1270600554780246016');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f0ba7bcb-3e5a-40ae-8a4f-7cb59465799f', '', 'G Sahi 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'mashriqi_hussan', 'https://twitter.com/Mashriqi_Hussan/status/1270600554235023361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ae260c23-855d-44f3-930c-6e52b02c99c1', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600544957222912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2cca7ef6-5f30-46a1-a31f-bf5e8525c46e', '', 'Tum pr hi gaya hai na', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600544017625088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('63931754-c154-4188-a14d-0da9042e5420', '', '@PTCLOfficial  Gatiya taeern internet pata nai kesy sunty hain yeh log k asar he nai hota in ko...complain karo to thori dair tek jasy he ap ne #1218 pr 1 press kia nai again wo he problem suru', '2020-06-10 05:00:00+05', 0, 0, 0, 'iam_raajput', 'https://twitter.com/iam_raajput/status/1270600539907260416');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('13e6df2a-405b-4725-8d97-b09e3886be56', '', 'کشمیریوں کو بھارتی فوج نے نام نہاد سرچ آپریشن کی آڑ میں شہید کیا ، کشمیر میڈیا سروس', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600539378724864');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('de6fbb5a-e097-4224-8a41-170b7f6ccbfd', '', 'مقبوضہ کشمیر میں بھارتی دہشت  گردی جاری،ضلع شوپیاں میں 3کشمیری شہید', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600537726160898');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('00b8f847-d963-4814-9546-974c384e5ce3', '', 'سرکاری گھروں پر قبضوں سے متعلق ازخودنوٹس کیس:چیف جسٹس https://viralpakistan.com/archives/23084 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600515399933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2f6b2356-86f7-41a0-8865-fdb43bcefaf6', '', 'Same as our journalist and journalism claims that they are best in the world', '2020-06-10 05:00:00+05', 0, 0, 0, 'sherafzal2020', 'https://twitter.com/SherAfzal2020/status/1270600515001483265');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('584e57f3-2811-46b8-9ebe-320d42f7db44', '', 'Good day Azb.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600486421397504');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6a416679-637b-442c-a30f-b7b2c9b87362', '', 'My pleasure.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600455295586304');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('88909271-9e2a-4df1-b5ba-4f16ed465441', '', 'Hum sy murad main (only me)
Ik to ap alfaz daikhti hain 🤭
Emotions daikhyn ☹️', '2020-06-10 05:00:00+05', 0, 0, 0, 'l0wercase_guy', 'https://twitter.com/l0wercase_guy/status/1270600441840181254');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5db5cc12-0578-4ca1-9529-8b5f4704904f', '', 'When your intentions are pure, you don''t lose anyone. People lose you.', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamnah_j', 'https://twitter.com/Aamnah_J/status/1270600424131833856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f4205336-056e-4b77-9ddf-70001f4cefb9', '', 'Khair hai new lay laina 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600409598615553');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bbf6f010-50b7-4a60-8a17-9d8117630a4f', '', 'i like all of u but :( idk', '2020-06-10 05:00:00+05', 0, 0, 0, 'youneverdid1', 'https://twitter.com/youneverdid1/status/1270600391412064256');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a3d2bada-2d52-43f9-ba58-040685e7aa81', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600377554042880');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e5bfb483-ffda-4101-8c4a-007f02f664e2', '', '"The Great Hack" is a documentary about how public opinion can be manufactured by vested interests. A must see who wants to know about malicious campaigns on social media agianst IK. https://www.youtube.com/watch?v=iX8GxLP1FHo …', '2020-06-10 05:00:00+05', 0, 0, 0, 'saeedbabar', 'https://twitter.com/saeedbabar/status/1270600377394749446');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d04df9fa-2df2-49a8-9bf0-4bc67881254f', '', 'YOUUUU ❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'sidrarare', 'https://twitter.com/sidrarare/status/1270600373930274817');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('13f22df8-2eb2-491c-90b1-27429af2ab63', '', 'Exactly', '2020-06-10 05:00:00+05', 0, 0, 0, 'suhaib165', 'https://twitter.com/suhaib165/status/1270600372193824768');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1cffb30e-2686-41cd-a499-e957cadb5d2d', '', ' pic.twitter.com/ffnb4tNyQh', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600368263741440');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2ee873e5-996a-4d91-b127-44e1ec8c0df9', '', 'سعودی عرب اور ایران کی جس نے صلح کروائی تھی، 
پاکستان میں پیٹرول پمپ والے اس کی بات نہیں مان رہے۔
(منقول)', '2020-06-10 05:00:00+05', 0, 0, 0, 'jaabus2000', 'https://twitter.com/jaabus2000/status/1270600358658785283');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5936dab3-0495-4cb9-aac0-d2238a88982e', '', 'Queeeeeeeeeeen😘😍♥️', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270600358054825986');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('149a6d8b-bec3-408d-b022-58940dbe4e3c', '', '@mubinasays  sooo meeee🥺🥺🥺💔', '2020-06-10 05:00:00+05', 0, 0, 0, 'awais09870301', 'https://twitter.com/Awais09870301/status/1270600355802382337');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1f61e018-d1af-4f71-962b-14246bc8507d', '', 'JazakAllah.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600344968531969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3745c031-4c25-423a-96cb-da30eb92fd17', '', 'khota', '2020-06-10 05:00:00+05', 0, 0, 0, 'd_illusionist_', 'https://twitter.com/D_illusionist_/status/1270600341512429569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b17593cd-17a4-491b-94af-97a00e8ddccc', '', 'Are you thinking to get #Rich? No problem. Learn the ways to get rich easily. Read Book “Ameer Baap Ghareeb Baap” by Robert Kiosaki #LUMS #NUST #UoG #SZABIST #NUML #IBA #Karachi #Pakistancricket #UET #PTI #PMLN #PPP #Lahore Order at Daraz:  https://ift.tt/2XQj1Lb ', '2020-06-10 05:00:00+05', 0, 0, 0, 'eastbookbank1', 'https://twitter.com/EastBookBank1/status/1270600335833300993');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('cb9e1181-7177-48ec-ba27-cb70a2f3fed5', '', 'Allah hidayat day Ameen 🤓✌️', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601225285885953');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e9d830d7-c909-4b5d-b46e-8665244359b5', '', '❣️❣️🔥👍🏻✨', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601220789604355');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1019f105-e19c-4d3c-affd-a8a244f6436e', '', '@RjAsifsaif', '2020-06-10 05:00:00+05', 0, 0, 0, 'rjasifsaif', 'https://twitter.com/RjAsifsaif/status/1270601215538343936');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c021b474-982a-4549-aa22-6e0de66a85fb', '', '😔', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601209964093445');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('05db9914-e5ba-4565-aaf7-5a15f2684e79', '', '@NoorUlAin82 
I wish for you 
I pray for you https://twitter.com/Z_Bangash1/status/1270597984888270848 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramlla_', 'https://twitter.com/Ramlla_/status/1270601206105325568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8940779d-5017-4982-84c7-4a641e97be95', '', 'arrange', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270601203605540865');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3f323d83-fddd-40e6-b9bd-66276ee9ee41', '', 'سر فروشی کا مزا کُوچہِ اسرار میں ہے
 کَلمہِ حق سے جو پِھر جاۓ وہ مَنصُور نہیں', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistani_313', 'https://twitter.com/PAKISTANI_313/status/1270601197712551942');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f5449323-3677-42f4-8766-3f67ab5fe7a6', '', 'Want to know about history of one of the greatest heros of world, 
Here you have that champ to see, who destroyed 5 jets in 30 sec 😍
#PakistanAirForce pic.twitter.com/QQqTr2ZoGP', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270601196429094912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('08896156-d1fa-4876-aaab-553b42aa359b', '', 'To bhai ja k rok lo isko plz', '2020-06-10 05:00:00+05', 0, 0, 0, 'nasirmughalpk', 'https://twitter.com/NasirMughalPK/status/1270601196382883840');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e8da2827-5015-4c83-b51d-5b42018c4d0b', '', 'اے خدا! تیرا ہر فیصلا سر آنکھوں پر♥
لیکن مجھے دنیا اور آخرت میں وہ چاہیے😍', '2020-06-10 05:00:00+05', 0, 0, 0, 'skyscrapper_70', 'https://twitter.com/skyscrapper_70/status/1270601185041547264');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('06518343-ef26-43dc-9262-12f12be43e22', '', 'GORGEOUS 🥺❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270601167282855937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7ed2ecb5-43ff-4c61-8ab8-328456b25177', '', 'Nice click 👌👍', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601152892211200');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ea490988-e816-4ff2-a2ca-43d5bce20865', '', 'i will fall back asleep any minute dw ure good', '2020-06-10 05:00:00+05', 0, 0, 0, 'shesunreliable', 'https://twitter.com/shesunreliable/status/1270601152867024896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1e6bd8e3-a0a4-459b-962f-77af8d0605e3', '', ':) <33', '2020-06-10 05:00:00+05', 0, 0, 0, 'syyedzeeshan', 'https://twitter.com/SyyedZeeshan/status/1270601150639812608');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('32f666b8-5180-49c0-9d5c-abbea198c5b8', '', 'Qsm sy 
Kisi ko sui b chubhy gi na " kya m bach to jaunga/i k chkr k bus tweet pr tweet', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270601148286803968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('74d0cc6e-3f17-4291-9387-ff544c970960', '', 'Ameen https://twitter.com/Aqsahshmi/status/1270504913207005186 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270601146000965632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('726ac01b-8919-4a3b-9205-12ee0beb08c2', '', 'Walikum salam', '2020-06-10 05:00:00+05', 0, 0, 0, 'mohsinamir10', 'https://twitter.com/Mohsinamir10/status/1270601143408889856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0b5f29be-1028-4761-ae32-48f8639e2a5d', '', 'I am big fan since watching #netflix Versailles as jt embodies the memory of the Sun King.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ameen_swati', 'https://twitter.com/Ameen_Swati/status/1270601141437509634');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b354ba72-737b-4936-8f2e-9e538ba25aff', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601133975916545');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b3460b6a-fad6-4b27-bb75-d0ec5eda9312', '', 'ICAP: Say something
Nobody: Mene Paper nai dene
ICAP: Then don''t give the Papers You F** Loser That''s the only thing You can Do. 😂😂
#icapExamsOnTime', '2020-06-10 05:00:00+05', 0, 0, 0, 'professornawab', 'https://twitter.com/ProfessorNawab/status/1270601133275439106');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bc207350-bdd7-4e90-a4aa-c2f5680bbb0f', '', '1. Every year on April fools someone lit firecrackers in class. 
2. On my first day in a new school, I got to know that a girl committed suicide. 
3. A girl was beaten to death and thrown behind café.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramsha_saghir', 'https://twitter.com/ramsha_saghir/status/1270601129915809792');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('23eb5dc2-2652-4607-8693-38939f77318a', '', 'I feel more at home in the outdoors. The streets, twilight, nature. The only part I hate about photographing in the wilderness is ke apna aap sambhalay banda ya camera😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'komallsalman', 'https://twitter.com/komallsalman/status/1270601123951345665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('178a31a1-0593-4d33-9263-046121d82236', '', 'Done pic.twitter.com/EE9YCdAmNN', '2020-06-10 05:00:00+05', 0, 0, 0, 'raja_danish5', 'https://twitter.com/Raja_Danish5/status/1270601117672656896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8c0a14a9-265c-41f2-b1f7-851056a82c19', '', ' https://twitter.com/messages/media/1270375516055445508 …
ye bhai ka insta ka page hy
@Anaskhan_0909 ka 
is ka page hy 
is ko follow kro insta py 
plzz follow', '2020-06-10 05:00:00+05', 0, 0, 0, 'm_saim467', 'https://twitter.com/m_saim467/status/1270601110756233219');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e97ed90b-ca21-476d-bc07-81e9411d73a1', '', 'Kon narax?', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270601110127030273');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e749ad2b-04fb-462d-9f99-efb6f9a438b3', '', 'یہاں انصاف صرف طاقتور لوگوں ملتا ہے ۔ غریب تو بے قصور ہو کر بھی قصوروار ٹھہرایا جاتا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'f_a7e', 'https://twitter.com/F_A7e/status/1270601109967720453');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ddae4342-90af-4838-b7f5-e0f1f1f3872f', '', 'Khair Bakhsh Marri – Daily Balochistan Express thank you for sharing. I had many interesting conversations with Uncle KB. Unwavering in his beliefs. https://www.bexpress.com.pk/2020/06/khair-bakhsh-marri/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ninoqazi', 'https://twitter.com/ninoqazi/status/1270601102602440704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9d8913b6-9b8e-4e11-ba70-333c28ac8431', '', 'Amazing 😍😘👌', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601092712275969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('19e0785f-335d-43e2-917d-6ff332cd30e0', '', 'پاکستان اسٹاک مارکیٹ کا مثبت آغاز
مزید پڑھیں:  https://www.humnews.pk/latest/255600/ 
۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔
#HumNews #PSX #KSE #PakistanStockExchange pic.twitter.com/VBBGo6FiPt', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnewspakistan', 'https://twitter.com/humnewspakistan/status/1270601087364497408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ddeb454d-74d5-4e17-a2e0-0454174a0768', '', 'Hahaha it is useless to cry over split milk 😂😂😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'miarajput101', 'https://twitter.com/miarajput101/status/1270601087272325120');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c13cd9df-3d6e-429e-8072-85cbde720065', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601083610693632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('019a100d-a2ad-485e-8cb7-0b0f7151addd', '', 'Okhay 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601067299037184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0bd14f58-7116-4e4c-9a73-244940fdce6e', '', 'Sure 👀', '2020-06-10 05:00:00+05', 0, 0, 0, 'ayrasair', 'https://twitter.com/AyraSair/status/1270601054535761922');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b7b971ae-7d25-45ca-bda5-46d2c051876c', '', 'Why india always lose land 2 enemy forces

1962 lost Aksai chin 37,244 Sq. km

2013 lost 640 Sq. km in eastern ladakh

2017 lost Doklam, china built the road, came within 60 meters of India’s outpost at Doka La

2020 lost Ladakh 60 Sq. Km

NOW ONCE AGAIN  PLEASE GO BACK
😀😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'ishaqkhan1967', 'https://twitter.com/ishaqkhan1967/status/1270601046767931393');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('58cc400e-d52c-4dba-a899-5bdd21957b0b', '', 'شُکر ہے بالآخر آپ کو بھی سمجھ آ گئی مان ہی گئے
اب اُسے بولیں انا کو چھوڑے اور پاکستان واپس آئے🤷🏻‍♀️', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270601044435836928');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4d17aa74-ff99-414b-865c-d8946e2e6bf9', '', 'these mazduur next to my house make sexual noises every dupehr i can''t even sit with my family anymore', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601026865954816');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('89f5f8b8-866c-46e4-a483-f7055a8fac68', '', 'صرف میرے لیے نہیں رہنا
تم میرے بعد بھی حسیں رہنا

                 ⁦❤️⁩ pic.twitter.com/RmYERPaKPm', '2020-06-10 05:00:00+05', 0, 0, 0, 'ranjha_of2020', 'https://twitter.com/Ranjha_of2020/status/1270601024617709568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1226b640-1d13-4c6b-9986-03c6b3acaba7', '', 'بہت خوب تجزیہ کیا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'faisalsohailfa1', 'https://twitter.com/FaisalSohailFa1/status/1270601020792541184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a5e9a643-069a-4140-90c4-e6d548778054', '', 'Mention not', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601017403547648');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('78faf9c7-4a33-476d-93a1-d34c88a248ef', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601015843328001');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7a7db540-f828-493e-9072-c6f199ee776f', '', 'میرے گاؤں کا دس سال کا تمیور جو گاؤں تو نہیں ہوتا مگر اور نہ ہی مجھے جانتا تھا 

مگر یوٹیوب پر ویڈیوز دیکھ کر فین ہوگیا 😂♥️

کہتا ہے آپ ایبٹ آباد آئے اور ہمارے گھر کیوں نہیں آئے 

پاور آف یوٹیوب 

ایک سہی مگر مخلص ہو یہی بڑی بات ہوتی ہے pic.twitter.com/vbpazB1Oyq', '2020-06-10 05:00:00+05', 0, 0, 0, 'imammarofficial', 'https://twitter.com/ImAmmarOfficial/status/1270601015440617472');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4a048e6e-dc06-48bb-80f5-639961e43168', '', 'Kash karachi plan k waqat b yahi bat kartay', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270601015365111808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1205f1d9-5db3-45d7-a0f9-0cf92ea566b8', '', 'یہ ہے نالائق و نا اہل حکومت کا کار نامہ اب اس سے فورا”جان چھڑانا ہوگی', '2020-06-10 05:00:00+05', 0, 0, 0, 'khurshidaawan', 'https://twitter.com/khurshidAawan/status/1270600995555495937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ef63984c-7286-4a56-97ef-b1beb125078c', '', 'In sha allah janab....ap dua kary bs', '2020-06-10 05:00:00+05', 0, 0, 0, 'bangashwaji', 'https://twitter.com/BangashWaji/status/1270600978572750849');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e3e9beec-98d5-4baa-aeee-50811f0ee2e5', '', 'May Allah swt give her complete health..', '2020-06-10 05:00:00+05', 0, 0, 0, 'abbasmalik13', 'https://twitter.com/AbbasMalik13/status/1270600975657709570');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('abf322ff-3c3e-4e4f-afe3-606c36f60080', '', 'Ok', '2020-06-10 05:00:00+05', 0, 0, 0, 'lacklustersays', 'https://twitter.com/lacklustersays/status/1270600972272877569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6c677b9c-8527-4fcf-9432-9c8cb45d9377', '', '" جب پوری دنیا آپ کے خلاف کھڑی ہو جائے تو آپ دوسری طرف مُنہ کریں اور سیلفی لے لیں،پھر پوری دنیا آپ کے پیچھے کھڑی ہو گی ۔۔📸

Copy pic.twitter.com/nGkJw2Spjb', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamabad110', 'https://twitter.com/islamabad110/status/1270600941520277505');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b2ef0aad-9089-4422-a682-c9b3706b7c7a', '', '44444', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600935094566912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0c5800df-4c96-4fc6-a620-99a09b4c0e1f', '', 'Nope. You need recovered plasma?', '2020-06-10 05:00:00+05', 0, 0, 0, 'saarimmehdi', 'https://twitter.com/SaarimMehdi/status/1270600928203345920');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4a9d203a-fdf2-4480-9a2b-357d1369678f', '', 'Allah de rogh ka', '2020-06-10 05:00:00+05', 0, 0, 0, 'nijatmohmand', 'https://twitter.com/NijatMohmand/status/1270600927586762752');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7c1a44d5-127b-4dfe-bd5e-cb74947a10b1', '', '@shoaibi26', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600917767933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a24228b4-1050-4391-b365-b62e844d7d7e', '', 'رپورٹ دیکھنے کیلئے لنک پر کلک کریں
 https://youtu.be/okejBvTfUJg  pic.twitter.com/vIw4yiq3C1', '2020-06-10 05:00:00+05', 0, 0, 0, 'sportslinkpk92', 'https://twitter.com/sportslinkpk92/status/1270600903196884993');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('48da6453-f791-4651-a6c9-5064ea6a6611', '', 'Yaddd hai karchi plan crash p kesa jashan manaya tha.. Ham na just phcha knsa mulk ka ha.. Par apka pora mulk khush tha us din.', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600900130807808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('335d170b-d11a-49af-a791-7bdaef3512d5', '', 'اتنے حجابوں پر تو یہ عالم ہے حسن کا 
کیا حال ہو جو دیکھ لیں پردہ اٹھا کے "ہم" https://twitter.com/RasoolAalia/status/1270210450047762432 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'highblunder', 'https://twitter.com/HighBlunder/status/1270600895705874435');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d95f94fe-ab46-411a-aded-73d9f686521e', '', ' pic.twitter.com/HZFkJ7lYmR', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270600887438839808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('15ecd171-60b2-4e88-8387-80d5a1d04e7d', '', 'awfully demeaning comment -"poor lady knowing English" Its reflective of our societal malice of gender inequality

There are many women experts on all topics, look around. look at  @JinnahInstitute & @tabadlab policy briefs, roundtables, webinars and you would find them.', '2020-06-10 05:00:00+05', 0, 0, 0, 'yazdanifauzia', 'https://twitter.com/yazdanifauzia/status/1270600886662856704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7791fd38-980c-4719-b7aa-36d3e781e255', '', 'Well love is always blind ❤️ if it''s pure and true love, appearances doesn''t matter', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600879750684673');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('de913fcc-2a5b-41d3-8021-890cf4301ea4', '', '@shoaibi26 

آگ  لگانے  والوں  کو  کہاں  خبر ،،،

🌹🌹🌹🌹👉👉👉👁

رخ  ہواؤں  نے  بدلا  تو  خاک  وہ  بھی ہونگے۔!!#', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600869160144897');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9a0d186b-d999-4486-bf2b-f53cea4f880f', '', 'had me on strings ffs', '2020-06-10 05:00:00+05', 0, 0, 0, 'themohkum', 'https://twitter.com/TheMohkum/status/1270600861870424064');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a203fa2a-8170-4dc5-9f7d-1a0dfe2406c5', '', 'آپ سے اتفاق ہے https://twitter.com/nasirshahoffice/status/1270368126069342208 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'rsabbasi2', 'https://twitter.com/RSabbasi2/status/1270600857202110464');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('00a61212-ec8f-4c1e-a6fd-e9c62135c8ec', '', 'Good question 😂', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600855419523072');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ddbf6596-5f7b-427f-ae51-df9e59ef0a8f', '', 'چھتر مار کر نکالنا پڑے گا۔ تخم خنزیر میں غیرت کہاں۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamirkhan3288', 'https://twitter.com/aamirkhan3288/status/1270600853641101312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b39e276c-d62f-4b76-aa28-edf61efc2e7b', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600834737463298');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('cafce616-f37f-46e4-b22b-ea6184e94f17', '', 'Haha Allah na kara, at least I am promoting their stories in Pak newspaper''s... Itna to mara ehsan ha in par😅😆', '2020-06-10 05:00:00+05', 0, 0, 0, 'furqanraja1122', 'https://twitter.com/furqanraja1122/status/1270600821546405893');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7c5fe31b-8039-49fd-b47e-9de26e6a50a1', '', 'گوجرانوالہ: فائرنگ کے 2 زخمی چل بسے https://taazakhaber.com/urdu/%da%af%d9%88%d8%ac%d8%b1%d8%a7%d9%86%d9%88%d8%a7%d9%84%db%81-%d9%81%d8%a7%d8%a6%d8%b1%d9%86%da%af-%da%a9%db%92-2-%d8%b2%d8%ae%d9%85%db%8c-%da%86%d9%84-%d8%a8%d8%b3%db%92/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'khabertaaza', 'https://twitter.com/KhaberTaaza/status/1270600806052618241');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6897f4c1-d9d5-4866-aac7-00fd7f5bed6b', '', 'Tora che warpase', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600789279617024');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e1181c2f-7bb5-4b05-99f7-84a6fe345e9a', '', 'Oo :(', '2020-06-10 05:00:00+05', 0, 0, 0, 'rizvihijjab', 'https://twitter.com/RizviHijjab/status/1270600784305152000');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a93847d6-d8bd-4cd9-aec5-907a023038f5', '', 'Congo dusky', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600773785837569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0af55c63-9e40-4161-aab8-168b957bc18d', '', 'کورونا وبا کے باعث پاکستان کی معاشی ترقی کے سفر https://viralpakistan.com/archives/23086 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600771990704128');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ccdfc5b7-c7da-4ca9-88fa-2285aa9108b9', '', 'Thank you ahmed :)', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600754978586627');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2f0b43f8-6716-4188-ada6-28d100dacc68', '', 'لسٹ 653 B
لیگی جمعیتی فالو ریٹویٹ 
@Sh_Misbah
@MFAK_12
@Najamkhan175
@m_kashmiri79
@SheikhNoorMJav3
@Rsh628
@Saadull9
@MalikSh87
@Mik5642
@MehmoodAhmedqu2
@Mubashar_12
@idrees700
@ChHassnainAli3
@aftab261970
@AbdulHa20984338
@PmlBibi
@JadoonHazara1
@ab_zz1
@kalamkar7
@Z_R786 pic.twitter.com/KlVHrewKnJ', '2020-06-10 05:00:00+05', 0, 0, 0, 'sh_misbah', 'https://twitter.com/Sh_Misbah/status/1270600754848358401');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('742b70fb-2e75-4a5d-8612-e277576d66b3', '', 'O Kuch Nahi Milta in Cheezo Sey🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'talhaijaz95', 'https://twitter.com/TalhaIjaz95/status/1270600754777202689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ae732668-9fb8-45a0-b90c-1d0c5b9940cd', '', '🥵🥵🥵', '2020-06-10 05:00:00+05', 0, 0, 0, 'haadeap', 'https://twitter.com/HaadeaP/status/1270600754026381312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('068e9af2-3e0a-46d5-acd3-9650b2395ba7', '', 'How do people think they can get away with saying this kind of inane nonsense. I would say I’m numb to this but omg is this jarring .', '2020-06-10 05:00:00+05', 0, 0, 0, 'sophiasaifi', 'https://twitter.com/SophiaSaifi/status/1270600748376694785');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('06824ceb-dab4-4c01-a10a-0c4029d848c2', '', ' pic.twitter.com/LebjX1avbW', '2020-06-10 05:00:00+05', 0, 0, 0, 'samia_firdous', 'https://twitter.com/samia_firdous/status/1270600742303399937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('07ae8d80-d650-4a8a-95b2-e8fc2b561590', '', ' pic.twitter.com/5Bwc7JGxNC', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600740290080769');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f5dad02f-5b2f-49b2-ba00-905e22d691ba', '', 'phely my follow back', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270600721877086208');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('73231fc2-de8e-483c-bb18-79d2ca53af68', '', 'YOURE THE CUTEST 🤧🤧
you cant change my mind, period', '2020-06-10 05:00:00+05', 0, 0, 0, 'bekindplsandtks', 'https://twitter.com/bekindplsandtks/status/1270600721868771329');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f70a0a30-b2d5-45b5-b81e-5c9058627249', '', 'A friend did it and got 12 month og ultimate like that how does that work?', '2020-06-10 05:00:00+05', 0, 0, 0, 'sarimmuhammad', 'https://twitter.com/SarimMuhammad/status/1270600712628699136');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('44fc9870-944c-4d2a-8685-39ac0edf3740', '', 'hii 🥺', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270600701664808960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('dd04c2ca-2f3d-4502-96fd-99b6dc52e1ee', '', 'MashaAllah great 🌸
Allah pak sb k parents ko khudh and salamt rakhen ameen
The only pure love 💕', '2020-06-10 05:00:00+05', 0, 0, 0, 'amar61955819', 'https://twitter.com/Amar61955819/status/1270600700771340288');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1fae6aa7-f379-4c3c-a235-8cd079632274', '', 'Ohhh acha 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600699433361408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a00459e7-aff2-434e-8e25-125b6d796ab8', '', 'Good morning arsalan.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600697000734720');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0fb13c4f-f715-4f12-9197-96d1a359a387', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600696434483201');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5fe90cab-7a94-4c13-afd5-219c6cb95ae0', '', '🤓', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600693037096967');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('339788b7-6089-4737-93ca-4202023fae2f', '', 'آپ کے پاس کتنے وسائل ہیں؟ 

سو میں سے پانچ کا مطلب ہے پانچ فیصد آبادی! 

ایک کروڑ لوگ؟ https://twitter.com/geonews_urdu/status/1270599191467896834 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'husnainjamal', 'https://twitter.com/HusnainJamal/status/1270600688763092992');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('903ce605-c574-41f9-b9b0-1e30601e5adf', '', 'You look great honey, don''t let a couple of haters or trolls take that from you. Keep smiling💓', '2020-06-10 05:00:00+05', 0, 0, 0, 'sahar_ashfaq', 'https://twitter.com/sahar_ashfaq/status/1270600682534514689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c1c3b873-e58d-4f14-8ea2-8c924be565db', '', 'When a Back Bencher Solves a Tough Problem in Front of Whole Class On White Board..

Other Back Benchers: pic.twitter.com/16PM0fRAIW', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600664138354689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1e908904-2e33-45f2-8bf7-3cc463d23801', '', 'یہ قرآن وہ رستہ دکھاتا ہے جو سب سے سیدھا ہے اور مومنوں کو جو نیک عمل کرتے ہیں بشارت دیتا ہے کہ اُن کے لئے اجر عظیم ہے"، سورة الإسراء ﴿۹﴾

#wednesdaymorning
#wednesdaymorning
#wednesdaymorning', '2020-06-10 05:00:00+05', 0, 0, 0, 'adv_shahfahad', 'https://twitter.com/Adv_ShahFahad/status/1270600662309580801');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('cc818961-d739-403e-af19-c91bba644ebd', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600660334100480');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e3948dcd-3e41-4008-8496-7c9ead30c1b1', '', 'And we as a Muslim apologize on this pervert''s behavior towards you. 🙏', '2020-06-10 05:00:00+05', 0, 0, 0, 'khanmubeenahmad', 'https://twitter.com/KhanMubeenAhmad/status/1270600658178191361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('807baedf-5703-46d1-8c5c-309c9247378c', '', 'Dn', '2020-06-10 05:00:00+05', 0, 0, 0, 'itx_danny9', 'https://twitter.com/itx_Danny9/status/1270600654361427968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('16da6002-cd55-4aa8-b395-88886782d565', '', 'No one 😔 https://twitter.com/eshu_dead/status/1270471475930292225 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'sufijaann', 'https://twitter.com/sufijaann/status/1270600651840671744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ce5592eb-9aa1-497f-8f0e-5018563e6497', '', 'Ali 🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600648443256834');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c6eacddd-0d07-4bef-b20a-2d069ea2122b', '', 'This is good and wise decision to appointed @AmbassadorSadiq as special representative for Afghanistan because being an amb, he was widely respected in Afghanistan and still Afghan leaders respect him, thats why Afghan FM also warmly welcomed his appointment. https://twitter.com/miqazi/status/1270597229120753664 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamudinsajid', 'https://twitter.com/islamudinsajid/status/1270600640176291842');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5c820701-0a82-456a-a135-d5e5009ba525', '', 'عشقِ کامل جس کو عزت بخش دے
ہم نہیں بخش سکتے🙏🏻', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270600637076639744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('492a2238-a53e-42b2-9c97-d2aed2a0bd07', '', 'Thank you Ik.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600630466490368');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4b928b01-63a4-47c1-8f97-07e519c52e49', '', 'Hahaha 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'aaab_e_hayat', 'https://twitter.com/Aaab_e_hayat/status/1270600620047831045');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ffe32425-80e1-4c9a-bcf2-bcad3f6bc71d', '', '😂😑😂😑', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600616516206593');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('371a367e-b45b-4620-93c2-9b010dc75766', '', 'Searching really.', '2020-06-10 05:00:00+05', 0, 0, 0, 'sea_goat', 'https://twitter.com/sea_goat/status/1270600609662676994');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('378772df-6117-4951-b5b5-4648cafb40f0', '', 'Well said and thank you for your beautiful words. Good day.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600590712811520');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('310c45af-a601-4378-8b16-5350099504cb', '', 'Turkey begins constructing modern warship for Pakistan. #pakistan https://www.dawn.com/news/1562426/turkey-begins-constructing-modern-warship-for-pakistan …', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistaninews', 'https://twitter.com/pakistaninews/status/1270600590607945728');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1722c559-3338-4068-86c4-bf914a588340', '', 'Great development Alhamdulilah ,From day one we are listening this but they thought to practise it now, anyhow der ayy durust ayy', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270600589781721088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a170badc-1e61-4e88-a079-1d0dff884363', '', 'خوف کا ختم ہونا عقل کے حصول کی نشانی ہے خوف میں مبتلا شخص کبھی بھی دانا نہیں ہوسکتا 
برٹنڈ رسل
شکریہ منظور پشتین pic.twitter.com/XE0VxSD8s6', '2020-06-10 05:00:00+05', 0, 0, 0, 'scorpion_junaid', 'https://twitter.com/scorpion_junaid/status/1270600583905521665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f06e4f35-24b3-40da-a0e8-888d7f92d9e4', '', 'خان کو اپنا کہنے کا بہانہ چاہیے بس۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'sam18071991', 'https://twitter.com/Sam18071991/status/1270600578285142018');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('83f596a6-984d-4e0a-bda9-9d75b4494382', '', 'Khty hain k awam pr hukmran un k bech m sy he chuny jaty hain 
Either you call him corrupt or public is corrupt k un m sy b corrupt e un pr muslt key jaty hain 
Whosoever is leader , is from nation. Or zalim hukmran qoum k lye saxa hoty hain', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270600556864778240');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c601f8bb-785f-45e1-b89b-fa519abe5e72', '', 'How merciful Allah is! #Reminders #socialdiarymagazine #QuranSayings #QuranicVerses  https://www.instagram.com/p/CBPoCe8gpex/?igshid=cdr1j3l1za76 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'socialdiarymagz', 'https://twitter.com/SocialDiaryMagz/status/1270600556722216960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7646138a-24fb-4b80-ad29-fcbf36295c57', '', 'Aurat ki izat karna aik izatdar mard ki nishani hai❤', '2020-06-10 05:00:00+05', 0, 0, 0, 'aseelmadani_', 'https://twitter.com/aseelmadani_/status/1270600554780246016');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a28ca42d-ed8c-4e4e-bfd0-29acdcfff607', '', 'G Sahi 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'mashriqi_hussan', 'https://twitter.com/Mashriqi_Hussan/status/1270600554235023361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('832c0352-aca4-46cb-a0aa-5eb3197100c6', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600544957222912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('14d9a2fd-0e0a-435c-844a-93c9f20084e2', '', 'Tum pr hi gaya hai na', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600544017625088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('231e6698-294c-479e-a676-60a2f683e22f', '', '@PTCLOfficial  Gatiya taeern internet pata nai kesy sunty hain yeh log k asar he nai hota in ko...complain karo to thori dair tek jasy he ap ne #1218 pr 1 press kia nai again wo he problem suru', '2020-06-10 05:00:00+05', 0, 0, 0, 'iam_raajput', 'https://twitter.com/iam_raajput/status/1270600539907260416');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5d4b6f42-0897-47b0-81e9-c290c4460615', '', 'کشمیریوں کو بھارتی فوج نے نام نہاد سرچ آپریشن کی آڑ میں شہید کیا ، کشمیر میڈیا سروس', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600539378724864');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f4a21944-fea4-486d-b798-e00ce9a2822d', '', 'مقبوضہ کشمیر میں بھارتی دہشت  گردی جاری،ضلع شوپیاں میں 3کشمیری شہید', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600537726160898');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('cd6a0c3d-6804-4da5-b7de-151fb3a3fd93', '', 'سرکاری گھروں پر قبضوں سے متعلق ازخودنوٹس کیس:چیف جسٹس https://viralpakistan.com/archives/23084 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600515399933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0dc0615c-7c37-4575-9445-23251c0ba403', '', 'Same as our journalist and journalism claims that they are best in the world', '2020-06-10 05:00:00+05', 0, 0, 0, 'sherafzal2020', 'https://twitter.com/SherAfzal2020/status/1270600515001483265');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1d68a7da-cdaf-4155-b972-79026f677124', '', 'Good day Azb.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600486421397504');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3fbddcdb-acab-4a48-b949-f31626951c1a', '', 'My pleasure.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600455295586304');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d5908155-066d-463f-8b14-b0e1c811988f', '', 'Hum sy murad main (only me)
Ik to ap alfaz daikhti hain 🤭
Emotions daikhyn ☹️', '2020-06-10 05:00:00+05', 0, 0, 0, 'l0wercase_guy', 'https://twitter.com/l0wercase_guy/status/1270600441840181254');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ac0f51c3-eee1-4d02-82eb-65dad89994a6', '', 'When your intentions are pure, you don''t lose anyone. People lose you.', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamnah_j', 'https://twitter.com/Aamnah_J/status/1270600424131833856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3bbbed6c-9f8e-4b97-9a2c-89c15d800e52', '', 'Khair hai new lay laina 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600409598615553');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d7f87504-3d43-4e50-92ef-da2ee1243cd1', '', 'i like all of u but :( idk', '2020-06-10 05:00:00+05', 0, 0, 0, 'youneverdid1', 'https://twitter.com/youneverdid1/status/1270600391412064256');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('786cb83c-d053-4bde-a6bf-7d5c215dc0d1', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600377554042880');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('26bb3c8d-2e4d-4cfc-9f54-f703d718e2a2', '', '"The Great Hack" is a documentary about how public opinion can be manufactured by vested interests. A must see who wants to know about malicious campaigns on social media agianst IK. https://www.youtube.com/watch?v=iX8GxLP1FHo …', '2020-06-10 05:00:00+05', 0, 0, 0, 'saeedbabar', 'https://twitter.com/saeedbabar/status/1270600377394749446');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('25a9afb0-7d6e-4852-b950-71d56b666003', '', 'YOUUUU ❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'sidrarare', 'https://twitter.com/sidrarare/status/1270600373930274817');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d9389d67-8f35-4be2-96eb-966c64477c03', '', 'Exactly', '2020-06-10 05:00:00+05', 0, 0, 0, 'suhaib165', 'https://twitter.com/suhaib165/status/1270600372193824768');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('556d3a8e-7d4a-46b7-9980-83ea6bf2aeb7', '', ' pic.twitter.com/ffnb4tNyQh', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600368263741440');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('127fdd84-fb6e-4dd1-90c5-035129cdfc39', '', 'سعودی عرب اور ایران کی جس نے صلح کروائی تھی، 
پاکستان میں پیٹرول پمپ والے اس کی بات نہیں مان رہے۔
(منقول)', '2020-06-10 05:00:00+05', 0, 0, 0, 'jaabus2000', 'https://twitter.com/jaabus2000/status/1270600358658785283');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('cb6e2969-71e3-4997-ba96-070c2e2a003a', '', 'Queeeeeeeeeeen😘😍♥️', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270600358054825986');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('573552e8-6406-4095-b046-528c02b53f4e', '', '@mubinasays  sooo meeee🥺🥺🥺💔', '2020-06-10 05:00:00+05', 0, 0, 0, 'awais09870301', 'https://twitter.com/Awais09870301/status/1270600355802382337');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d033ba5b-1100-4f16-a260-89e481942757', '', 'JazakAllah.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600344968531969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1e9ec94d-5b76-4efd-9af7-388c998ef4da', '', 'khota', '2020-06-10 05:00:00+05', 0, 0, 0, 'd_illusionist_', 'https://twitter.com/D_illusionist_/status/1270600341512429569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8de15a6e-fcec-4a2a-8df6-459a110fbf2c', '', 'Are you thinking to get #Rich? No problem. Learn the ways to get rich easily. Read Book “Ameer Baap Ghareeb Baap” by Robert Kiosaki #LUMS #NUST #UoG #SZABIST #NUML #IBA #Karachi #Pakistancricket #UET #PTI #PMLN #PPP #Lahore Order at Daraz:  https://ift.tt/2XQj1Lb ', '2020-06-10 05:00:00+05', 0, 0, 0, 'eastbookbank1', 'https://twitter.com/EastBookBank1/status/1270600335833300993');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('31ac2fa9-5193-41cc-8096-281273ce2afd', '', 'Allah hidayat day Ameen 🤓✌️', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601225285885953');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f08c2e6b-835e-4d28-afdc-77230eb70515', '', '❣️❣️🔥👍🏻✨', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601220789604355');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('694eb244-33f6-4974-86d9-846980b4af8a', '', '@RjAsifsaif', '2020-06-10 05:00:00+05', 0, 0, 0, 'rjasifsaif', 'https://twitter.com/RjAsifsaif/status/1270601215538343936');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('33f49f33-ceb4-4b2e-bfc0-e33342deecc6', '', '😔', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601209964093445');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8956669e-fba2-4cc3-ac3f-3441bae19bc8', '', '@NoorUlAin82 
I wish for you 
I pray for you https://twitter.com/Z_Bangash1/status/1270597984888270848 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramlla_', 'https://twitter.com/Ramlla_/status/1270601206105325568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a6ddff31-8cd3-4352-ba9b-038987bc4da9', '', 'arrange', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270601203605540865');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4bf012fd-ba64-43ca-8296-e2aa36d96834', '', 'سر فروشی کا مزا کُوچہِ اسرار میں ہے
 کَلمہِ حق سے جو پِھر جاۓ وہ مَنصُور نہیں', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistani_313', 'https://twitter.com/PAKISTANI_313/status/1270601197712551942');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('794d5dab-8627-43ae-9f59-febebac24cd1', '', 'Want to know about history of one of the greatest heros of world, 
Here you have that champ to see, who destroyed 5 jets in 30 sec 😍
#PakistanAirForce pic.twitter.com/QQqTr2ZoGP', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270601196429094912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6cffde00-0dbc-4aa3-8683-73c78f3e86ce', '', 'To bhai ja k rok lo isko plz', '2020-06-10 05:00:00+05', 0, 0, 0, 'nasirmughalpk', 'https://twitter.com/NasirMughalPK/status/1270601196382883840');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0311ee2b-ca96-4362-b0a9-5f03814096c2', '', 'اے خدا! تیرا ہر فیصلا سر آنکھوں پر♥
لیکن مجھے دنیا اور آخرت میں وہ چاہیے😍', '2020-06-10 05:00:00+05', 0, 0, 0, 'skyscrapper_70', 'https://twitter.com/skyscrapper_70/status/1270601185041547264');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ed732b3f-a0e7-4907-a71a-eae9ef312342', '', 'GORGEOUS 🥺❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270601167282855937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2c7bd472-0219-4b01-8f82-15405e3d788d', '', 'Nice click 👌👍', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601152892211200');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('29d9e1e0-ddb1-40af-b4a6-802255004450', '', 'i will fall back asleep any minute dw ure good', '2020-06-10 05:00:00+05', 0, 0, 0, 'shesunreliable', 'https://twitter.com/shesunreliable/status/1270601152867024896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e2706b26-e7fd-4607-bba8-d6629db51777', '', ':) <33', '2020-06-10 05:00:00+05', 0, 0, 0, 'syyedzeeshan', 'https://twitter.com/SyyedZeeshan/status/1270601150639812608');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('edcb3f76-db20-4752-89f9-ffc9b8ec47ce', '', 'Qsm sy 
Kisi ko sui b chubhy gi na " kya m bach to jaunga/i k chkr k bus tweet pr tweet', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270601148286803968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('06662226-b37b-4e42-bd1e-9b9e6aa45a5b', '', 'Ameen https://twitter.com/Aqsahshmi/status/1270504913207005186 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270601146000965632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6ef43ab2-b99a-490e-b0e0-5908998a1aef', '', 'Walikum salam', '2020-06-10 05:00:00+05', 0, 0, 0, 'mohsinamir10', 'https://twitter.com/Mohsinamir10/status/1270601143408889856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('64be45bc-1616-4635-9859-05f3c502c816', '', 'I am big fan since watching #netflix Versailles as jt embodies the memory of the Sun King.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ameen_swati', 'https://twitter.com/Ameen_Swati/status/1270601141437509634');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f5a2a528-758b-4f20-9bbd-472ea9f3453f', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601133975916545');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6ed31d6c-b512-412e-a1f5-9ff1e92bdbc4', '', 'ICAP: Say something
Nobody: Mene Paper nai dene
ICAP: Then don''t give the Papers You F** Loser That''s the only thing You can Do. 😂😂
#icapExamsOnTime', '2020-06-10 05:00:00+05', 0, 0, 0, 'professornawab', 'https://twitter.com/ProfessorNawab/status/1270601133275439106');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2ad94fcb-9d53-4665-b2d3-ff1420a0727a', '', '1. Every year on April fools someone lit firecrackers in class. 
2. On my first day in a new school, I got to know that a girl committed suicide. 
3. A girl was beaten to death and thrown behind café.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramsha_saghir', 'https://twitter.com/ramsha_saghir/status/1270601129915809792');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('259c8a72-d2e1-408d-8cc9-5774a4f0edce', '', 'I feel more at home in the outdoors. The streets, twilight, nature. The only part I hate about photographing in the wilderness is ke apna aap sambhalay banda ya camera😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'komallsalman', 'https://twitter.com/komallsalman/status/1270601123951345665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('338e6fa9-424f-4fe0-b7d2-87d77fd3a0ec', '', 'Done pic.twitter.com/EE9YCdAmNN', '2020-06-10 05:00:00+05', 0, 0, 0, 'raja_danish5', 'https://twitter.com/Raja_Danish5/status/1270601117672656896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('89969f87-1512-4364-84d0-bc771d73f8c2', '', ' https://twitter.com/messages/media/1270375516055445508 …
ye bhai ka insta ka page hy
@Anaskhan_0909 ka 
is ka page hy 
is ko follow kro insta py 
plzz follow', '2020-06-10 05:00:00+05', 0, 0, 0, 'm_saim467', 'https://twitter.com/m_saim467/status/1270601110756233219');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('094e60a1-d238-4c55-a441-31e02558d6fb', '', 'Kon narax?', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270601110127030273');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('59a566e5-97f5-44aa-b250-58cf18a34d9b', '', 'یہاں انصاف صرف طاقتور لوگوں ملتا ہے ۔ غریب تو بے قصور ہو کر بھی قصوروار ٹھہرایا جاتا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'f_a7e', 'https://twitter.com/F_A7e/status/1270601109967720453');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a4b6e760-8033-4e8c-9595-5638138813a0', '', 'Khair Bakhsh Marri – Daily Balochistan Express thank you for sharing. I had many interesting conversations with Uncle KB. Unwavering in his beliefs. https://www.bexpress.com.pk/2020/06/khair-bakhsh-marri/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ninoqazi', 'https://twitter.com/ninoqazi/status/1270601102602440704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('30508def-690c-45e7-a845-142625dbd48a', '', 'Amazing 😍😘👌', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601092712275969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c172c6ed-bd9f-4c7b-a93f-707485829c81', '', 'پاکستان اسٹاک مارکیٹ کا مثبت آغاز
مزید پڑھیں:  https://www.humnews.pk/latest/255600/ 
۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔
#HumNews #PSX #KSE #PakistanStockExchange pic.twitter.com/VBBGo6FiPt', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnewspakistan', 'https://twitter.com/humnewspakistan/status/1270601087364497408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d0414979-be61-4ec1-82b4-ba68f64be080', '', 'Hahaha it is useless to cry over split milk 😂😂😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'miarajput101', 'https://twitter.com/miarajput101/status/1270601087272325120');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('378780e7-f75e-430c-9698-133652a8ca46', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601083610693632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('44d443c1-d259-423c-8935-5f0f22a94b2a', '', 'Okhay 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601067299037184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('69e32b97-6b43-47a3-b866-db682c7aad04', '', 'Sure 👀', '2020-06-10 05:00:00+05', 0, 0, 0, 'ayrasair', 'https://twitter.com/AyraSair/status/1270601054535761922');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('636f49a5-bf08-4fb8-a1ea-34781475d1df', '', 'Why india always lose land 2 enemy forces

1962 lost Aksai chin 37,244 Sq. km

2013 lost 640 Sq. km in eastern ladakh

2017 lost Doklam, china built the road, came within 60 meters of India’s outpost at Doka La

2020 lost Ladakh 60 Sq. Km

NOW ONCE AGAIN  PLEASE GO BACK
😀😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'ishaqkhan1967', 'https://twitter.com/ishaqkhan1967/status/1270601046767931393');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7bcf647a-8441-489c-9b4a-885321f5395c', '', 'شُکر ہے بالآخر آپ کو بھی سمجھ آ گئی مان ہی گئے
اب اُسے بولیں انا کو چھوڑے اور پاکستان واپس آئے🤷🏻‍♀️', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270601044435836928');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ff671ae2-dd28-4dac-8210-a48a3b81d822', '', 'these mazduur next to my house make sexual noises every dupehr i can''t even sit with my family anymore', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601026865954816');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('838577f0-f6bf-4506-a205-bcf72c2cc8bf', '', 'صرف میرے لیے نہیں رہنا
تم میرے بعد بھی حسیں رہنا

                 ⁦❤️⁩ pic.twitter.com/RmYERPaKPm', '2020-06-10 05:00:00+05', 0, 0, 0, 'ranjha_of2020', 'https://twitter.com/Ranjha_of2020/status/1270601024617709568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1b377023-e1b4-434a-b1b9-1421bf7999a4', '', 'بہت خوب تجزیہ کیا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'faisalsohailfa1', 'https://twitter.com/FaisalSohailFa1/status/1270601020792541184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0e50c41b-b089-4994-88e3-cbf9f859fd80', '', 'Mention not', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601017403547648');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c6838e6a-33ea-4995-b045-a12acd495975', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601015843328001');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3d07bab0-92e7-4393-87fe-dca622efc243', '', 'میرے گاؤں کا دس سال کا تمیور جو گاؤں تو نہیں ہوتا مگر اور نہ ہی مجھے جانتا تھا 

مگر یوٹیوب پر ویڈیوز دیکھ کر فین ہوگیا 😂♥️

کہتا ہے آپ ایبٹ آباد آئے اور ہمارے گھر کیوں نہیں آئے 

پاور آف یوٹیوب 

ایک سہی مگر مخلص ہو یہی بڑی بات ہوتی ہے pic.twitter.com/vbpazB1Oyq', '2020-06-10 05:00:00+05', 0, 0, 0, 'imammarofficial', 'https://twitter.com/ImAmmarOfficial/status/1270601015440617472');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e291da4b-80ca-4506-af02-afd03df666cb', '', 'Kash karachi plan k waqat b yahi bat kartay', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270601015365111808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('fa1f6d6d-1702-43df-900e-85051a4f20f7', '', 'یہ ہے نالائق و نا اہل حکومت کا کار نامہ اب اس سے فورا”جان چھڑانا ہوگی', '2020-06-10 05:00:00+05', 0, 0, 0, 'khurshidaawan', 'https://twitter.com/khurshidAawan/status/1270600995555495937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('38f342e8-0e0f-43b0-ad85-43dc4df4a958', '', 'In sha allah janab....ap dua kary bs', '2020-06-10 05:00:00+05', 0, 0, 0, 'bangashwaji', 'https://twitter.com/BangashWaji/status/1270600978572750849');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1abf3e26-87d5-4682-a35d-d56832cbdae0', '', 'May Allah swt give her complete health..', '2020-06-10 05:00:00+05', 0, 0, 0, 'abbasmalik13', 'https://twitter.com/AbbasMalik13/status/1270600975657709570');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('785abb97-7061-4979-8efb-f3e70a839c2b', '', 'Ok', '2020-06-10 05:00:00+05', 0, 0, 0, 'lacklustersays', 'https://twitter.com/lacklustersays/status/1270600972272877569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('232d1f51-0f27-473e-be1b-cda09c0a4c54', '', '" جب پوری دنیا آپ کے خلاف کھڑی ہو جائے تو آپ دوسری طرف مُنہ کریں اور سیلفی لے لیں،پھر پوری دنیا آپ کے پیچھے کھڑی ہو گی ۔۔📸

Copy pic.twitter.com/nGkJw2Spjb', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamabad110', 'https://twitter.com/islamabad110/status/1270600941520277505');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1e31017a-3096-4ade-9cb9-30b7383ed263', '', '44444', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600935094566912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9f97fd59-14e0-485c-a3aa-0d8b9b0209ea', '', 'Nope. You need recovered plasma?', '2020-06-10 05:00:00+05', 0, 0, 0, 'saarimmehdi', 'https://twitter.com/SaarimMehdi/status/1270600928203345920');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b88a94fe-13db-44a9-ab4d-20d70bd6750e', '', 'Allah de rogh ka', '2020-06-10 05:00:00+05', 0, 0, 0, 'nijatmohmand', 'https://twitter.com/NijatMohmand/status/1270600927586762752');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6de124d7-7be2-4265-b73a-0ac5cc17ee07', '', '@shoaibi26', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600917767933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2cee2705-576b-4868-9f48-dd8426c08ed8', '', 'رپورٹ دیکھنے کیلئے لنک پر کلک کریں
 https://youtu.be/okejBvTfUJg  pic.twitter.com/vIw4yiq3C1', '2020-06-10 05:00:00+05', 0, 0, 0, 'sportslinkpk92', 'https://twitter.com/sportslinkpk92/status/1270600903196884993');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('983a476c-619e-4c1c-8cb5-415781125cfe', '', 'Yaddd hai karchi plan crash p kesa jashan manaya tha.. Ham na just phcha knsa mulk ka ha.. Par apka pora mulk khush tha us din.', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600900130807808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('12b139fd-38ab-4bf6-860c-1a120d462ec6', '', 'اتنے حجابوں پر تو یہ عالم ہے حسن کا 
کیا حال ہو جو دیکھ لیں پردہ اٹھا کے "ہم" https://twitter.com/RasoolAalia/status/1270210450047762432 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'highblunder', 'https://twitter.com/HighBlunder/status/1270600895705874435');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7871ecd0-ccbf-4fc0-9631-095ef5cacef1', '', ' pic.twitter.com/HZFkJ7lYmR', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270600887438839808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b24a8d69-15f6-4332-b450-cb0dbe1aa70b', '', 'awfully demeaning comment -"poor lady knowing English" Its reflective of our societal malice of gender inequality

There are many women experts on all topics, look around. look at  @JinnahInstitute & @tabadlab policy briefs, roundtables, webinars and you would find them.', '2020-06-10 05:00:00+05', 0, 0, 0, 'yazdanifauzia', 'https://twitter.com/yazdanifauzia/status/1270600886662856704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('af6d02e0-a393-4694-ab47-19339b721210', '', 'Well love is always blind ❤️ if it''s pure and true love, appearances doesn''t matter', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600879750684673');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e2c2bf98-4caa-4666-bbfb-01ea7ddac69d', '', '@shoaibi26 

آگ  لگانے  والوں  کو  کہاں  خبر ،،،

🌹🌹🌹🌹👉👉👉👁

رخ  ہواؤں  نے  بدلا  تو  خاک  وہ  بھی ہونگے۔!!#', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600869160144897');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c6201e59-0e90-407b-8860-b030117f9889', '', 'had me on strings ffs', '2020-06-10 05:00:00+05', 0, 0, 0, 'themohkum', 'https://twitter.com/TheMohkum/status/1270600861870424064');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9c41d12c-9b64-4bd6-a491-dc10f1d721ca', '', 'آپ سے اتفاق ہے https://twitter.com/nasirshahoffice/status/1270368126069342208 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'rsabbasi2', 'https://twitter.com/RSabbasi2/status/1270600857202110464');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bc445b9c-75ce-4d25-95d3-23d0185ce973', '', 'Good question 😂', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600855419523072');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1b465d22-c307-4961-9e19-c16eb6c48c15', '', 'چھتر مار کر نکالنا پڑے گا۔ تخم خنزیر میں غیرت کہاں۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamirkhan3288', 'https://twitter.com/aamirkhan3288/status/1270600853641101312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d2bfd304-31fa-45e7-8d16-df4188f743a7', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600834737463298');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c61ed052-2564-4e96-8f28-5dc78e25f12c', '', 'Haha Allah na kara, at least I am promoting their stories in Pak newspaper''s... Itna to mara ehsan ha in par😅😆', '2020-06-10 05:00:00+05', 0, 0, 0, 'furqanraja1122', 'https://twitter.com/furqanraja1122/status/1270600821546405893');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('151887ff-aeec-42d2-ac46-b797d7dcd80c', '', 'گوجرانوالہ: فائرنگ کے 2 زخمی چل بسے https://taazakhaber.com/urdu/%da%af%d9%88%d8%ac%d8%b1%d8%a7%d9%86%d9%88%d8%a7%d9%84%db%81-%d9%81%d8%a7%d8%a6%d8%b1%d9%86%da%af-%da%a9%db%92-2-%d8%b2%d8%ae%d9%85%db%8c-%da%86%d9%84-%d8%a8%d8%b3%db%92/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'khabertaaza', 'https://twitter.com/KhaberTaaza/status/1270600806052618241');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9c8da643-cad8-4cee-9da1-0998788b6eea', '', 'Tora che warpase', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600789279617024');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2d7b70f7-512a-4ccc-9257-7e25c6393be0', '', 'Oo :(', '2020-06-10 05:00:00+05', 0, 0, 0, 'rizvihijjab', 'https://twitter.com/RizviHijjab/status/1270600784305152000');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6f901ce5-4e2e-4a2c-ba4a-8ece01072f2f', '', 'Congo dusky', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600773785837569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1c2c0da0-fb1c-42b3-941a-ba11c50756bd', '', 'کورونا وبا کے باعث پاکستان کی معاشی ترقی کے سفر https://viralpakistan.com/archives/23086 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600771990704128');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bbb56440-d670-4ed4-bf72-57aefd039aea', '', 'Thank you ahmed :)', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600754978586627');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('65fbfa4e-7613-4c83-bda7-d177702c15e9', '', 'لسٹ 653 B
لیگی جمعیتی فالو ریٹویٹ 
@Sh_Misbah
@MFAK_12
@Najamkhan175
@m_kashmiri79
@SheikhNoorMJav3
@Rsh628
@Saadull9
@MalikSh87
@Mik5642
@MehmoodAhmedqu2
@Mubashar_12
@idrees700
@ChHassnainAli3
@aftab261970
@AbdulHa20984338
@PmlBibi
@JadoonHazara1
@ab_zz1
@kalamkar7
@Z_R786 pic.twitter.com/KlVHrewKnJ', '2020-06-10 05:00:00+05', 0, 0, 0, 'sh_misbah', 'https://twitter.com/Sh_Misbah/status/1270600754848358401');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('04658632-b5fb-4ac9-ace1-6a8e0d3fde3b', '', 'O Kuch Nahi Milta in Cheezo Sey🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'talhaijaz95', 'https://twitter.com/TalhaIjaz95/status/1270600754777202689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5bc08e33-758a-4f75-8bce-c1a7438c3676', '', '🥵🥵🥵', '2020-06-10 05:00:00+05', 0, 0, 0, 'haadeap', 'https://twitter.com/HaadeaP/status/1270600754026381312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0fbd336f-3db7-4fe3-a7a7-7a8768f0e753', '', 'How do people think they can get away with saying this kind of inane nonsense. I would say I’m numb to this but omg is this jarring .', '2020-06-10 05:00:00+05', 0, 0, 0, 'sophiasaifi', 'https://twitter.com/SophiaSaifi/status/1270600748376694785');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e52c19f6-9509-4bcb-9348-30b9b449da51', '', ' pic.twitter.com/LebjX1avbW', '2020-06-10 05:00:00+05', 0, 0, 0, 'samia_firdous', 'https://twitter.com/samia_firdous/status/1270600742303399937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('33ee34a2-51fd-4dba-9945-f3e40ba3cbe5', '', ' pic.twitter.com/5Bwc7JGxNC', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600740290080769');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0673fef3-6503-4aab-86b8-e96b2f5e8057', '', 'phely my follow back', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270600721877086208');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('705e5857-879e-4e01-ae92-84c3d9d7d007', '', 'YOURE THE CUTEST 🤧🤧
you cant change my mind, period', '2020-06-10 05:00:00+05', 0, 0, 0, 'bekindplsandtks', 'https://twitter.com/bekindplsandtks/status/1270600721868771329');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9eac0ec2-f49a-44b1-9f14-538f8976c2fa', '', 'A friend did it and got 12 month og ultimate like that how does that work?', '2020-06-10 05:00:00+05', 0, 0, 0, 'sarimmuhammad', 'https://twitter.com/SarimMuhammad/status/1270600712628699136');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a1be9498-b7b3-4682-b5ed-f8881ff7e302', '', 'hii 🥺', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270600701664808960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('666e1b68-cfd8-423b-b4d7-56bc12252c7f', '', 'MashaAllah great 🌸
Allah pak sb k parents ko khudh and salamt rakhen ameen
The only pure love 💕', '2020-06-10 05:00:00+05', 0, 0, 0, 'amar61955819', 'https://twitter.com/Amar61955819/status/1270600700771340288');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b8b4f1b8-5136-412d-94cb-5ce5d92c309f', '', 'Ohhh acha 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600699433361408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('30329cd1-abaa-4c47-b142-23bfea01cd7e', '', 'Good morning arsalan.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600697000734720');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('410bcbd2-7806-4cf0-99fd-2311ab93d3e6', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600696434483201');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0e4b2584-3d3c-4fc4-80ab-8ffbe1a84063', '', '🤓', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600693037096967');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('790941c2-2421-440c-ac08-12f6d7536235', '', 'آپ کے پاس کتنے وسائل ہیں؟ 

سو میں سے پانچ کا مطلب ہے پانچ فیصد آبادی! 

ایک کروڑ لوگ؟ https://twitter.com/geonews_urdu/status/1270599191467896834 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'husnainjamal', 'https://twitter.com/HusnainJamal/status/1270600688763092992');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('77167d3b-1361-47b4-bc7d-38dfd74aea21', '', 'You look great honey, don''t let a couple of haters or trolls take that from you. Keep smiling💓', '2020-06-10 05:00:00+05', 0, 0, 0, 'sahar_ashfaq', 'https://twitter.com/sahar_ashfaq/status/1270600682534514689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6f02a147-5543-44c4-a564-0e63f6e12066', '', 'When a Back Bencher Solves a Tough Problem in Front of Whole Class On White Board..

Other Back Benchers: pic.twitter.com/16PM0fRAIW', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600664138354689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1bcbb3e8-98b8-4c9d-b1ed-e2fb353cbd01', '', 'یہ قرآن وہ رستہ دکھاتا ہے جو سب سے سیدھا ہے اور مومنوں کو جو نیک عمل کرتے ہیں بشارت دیتا ہے کہ اُن کے لئے اجر عظیم ہے"، سورة الإسراء ﴿۹﴾

#wednesdaymorning
#wednesdaymorning
#wednesdaymorning', '2020-06-10 05:00:00+05', 0, 0, 0, 'adv_shahfahad', 'https://twitter.com/Adv_ShahFahad/status/1270600662309580801');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('48a21a7b-d1a6-4c37-8181-74b81bd4e23e', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600660334100480');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('65035c47-e3ae-41cf-899a-c5ce39e6125e', '', 'And we as a Muslim apologize on this pervert''s behavior towards you. 🙏', '2020-06-10 05:00:00+05', 0, 0, 0, 'khanmubeenahmad', 'https://twitter.com/KhanMubeenAhmad/status/1270600658178191361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c4ed4e34-e9fa-4026-834b-06bafef3b490', '', 'Dn', '2020-06-10 05:00:00+05', 0, 0, 0, 'itx_danny9', 'https://twitter.com/itx_Danny9/status/1270600654361427968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a2dd25d7-8682-42b3-8d71-2d484a6d64a0', '', 'No one 😔 https://twitter.com/eshu_dead/status/1270471475930292225 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'sufijaann', 'https://twitter.com/sufijaann/status/1270600651840671744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5474a01f-4bd8-4b20-aaae-6a0c208cd7d8', '', 'Ali 🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600648443256834');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('edd6e67a-7d9d-406d-ad7e-73278c9ef9d5', '', 'This is good and wise decision to appointed @AmbassadorSadiq as special representative for Afghanistan because being an amb, he was widely respected in Afghanistan and still Afghan leaders respect him, thats why Afghan FM also warmly welcomed his appointment. https://twitter.com/miqazi/status/1270597229120753664 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamudinsajid', 'https://twitter.com/islamudinsajid/status/1270600640176291842');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('32465d98-d338-4af8-b9c2-7fe5d3e34674', '', 'عشقِ کامل جس کو عزت بخش دے
ہم نہیں بخش سکتے🙏🏻', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270600637076639744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bea07c71-dd5b-4440-84d2-5bba36711127', '', 'Thank you Ik.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600630466490368');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3d96cee5-bfc9-4913-aece-24bd9ac367c5', '', 'Hahaha 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'aaab_e_hayat', 'https://twitter.com/Aaab_e_hayat/status/1270600620047831045');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('44856379-7df2-4323-ae28-dbfb15312597', '', '😂😑😂😑', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600616516206593');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a410569c-1972-408c-8039-99e6a2616a8e', '', 'Searching really.', '2020-06-10 05:00:00+05', 0, 0, 0, 'sea_goat', 'https://twitter.com/sea_goat/status/1270600609662676994');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5438ef93-0650-4a27-86d7-5f5b7613b4ac', '', 'Well said and thank you for your beautiful words. Good day.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600590712811520');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('01c5f3cb-da2e-40e7-a9d3-740090adcb54', '', 'Turkey begins constructing modern warship for Pakistan. #pakistan https://www.dawn.com/news/1562426/turkey-begins-constructing-modern-warship-for-pakistan …', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistaninews', 'https://twitter.com/pakistaninews/status/1270600590607945728');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3eac8bf0-f443-43ab-acfb-807239de14f0', '', 'Great development Alhamdulilah ,From day one we are listening this but they thought to practise it now, anyhow der ayy durust ayy', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270600589781721088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3dfdc9ec-0293-40ad-bb49-58fb88f50221', '', 'خوف کا ختم ہونا عقل کے حصول کی نشانی ہے خوف میں مبتلا شخص کبھی بھی دانا نہیں ہوسکتا 
برٹنڈ رسل
شکریہ منظور پشتین pic.twitter.com/XE0VxSD8s6', '2020-06-10 05:00:00+05', 0, 0, 0, 'scorpion_junaid', 'https://twitter.com/scorpion_junaid/status/1270600583905521665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('05380491-0d2c-4711-a5f4-f8db7c0f35ca', '', 'خان کو اپنا کہنے کا بہانہ چاہیے بس۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'sam18071991', 'https://twitter.com/Sam18071991/status/1270600578285142018');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ca51105e-8203-43c6-b8bd-0040ae1afc29', '', 'Khty hain k awam pr hukmran un k bech m sy he chuny jaty hain 
Either you call him corrupt or public is corrupt k un m sy b corrupt e un pr muslt key jaty hain 
Whosoever is leader , is from nation. Or zalim hukmran qoum k lye saxa hoty hain', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270600556864778240');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3dd23664-43b3-4248-9bd8-5be67955a871', '', 'How merciful Allah is! #Reminders #socialdiarymagazine #QuranSayings #QuranicVerses  https://www.instagram.com/p/CBPoCe8gpex/?igshid=cdr1j3l1za76 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'socialdiarymagz', 'https://twitter.com/SocialDiaryMagz/status/1270600556722216960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8fd6477e-2cb9-4ba5-9640-04a00fef26a0', '', 'Aurat ki izat karna aik izatdar mard ki nishani hai❤', '2020-06-10 05:00:00+05', 0, 0, 0, 'aseelmadani_', 'https://twitter.com/aseelmadani_/status/1270600554780246016');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('07b6d0bf-c540-464e-bdba-c89815107ced', '', 'G Sahi 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'mashriqi_hussan', 'https://twitter.com/Mashriqi_Hussan/status/1270600554235023361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0a587f5f-dd7d-481e-a0aa-656575062ee5', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600544957222912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f3c72c15-a785-4eec-a48c-3b398f679ca0', '', 'Tum pr hi gaya hai na', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600544017625088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0feaf531-3ccb-42a1-9d3c-c7eb5090c2e9', '', '@PTCLOfficial  Gatiya taeern internet pata nai kesy sunty hain yeh log k asar he nai hota in ko...complain karo to thori dair tek jasy he ap ne #1218 pr 1 press kia nai again wo he problem suru', '2020-06-10 05:00:00+05', 0, 0, 0, 'iam_raajput', 'https://twitter.com/iam_raajput/status/1270600539907260416');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0d61c342-513c-4f65-9164-f4529a52fe75', '', 'کشمیریوں کو بھارتی فوج نے نام نہاد سرچ آپریشن کی آڑ میں شہید کیا ، کشمیر میڈیا سروس', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600539378724864');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('04e0d074-cfc1-4d2a-a326-dbdd69e36c75', '', 'مقبوضہ کشمیر میں بھارتی دہشت  گردی جاری،ضلع شوپیاں میں 3کشمیری شہید', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600537726160898');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d7690718-527d-44da-b3b1-17f77f5abd03', '', 'سرکاری گھروں پر قبضوں سے متعلق ازخودنوٹس کیس:چیف جسٹس https://viralpakistan.com/archives/23084 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600515399933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e6747e63-fb00-46be-8032-0fb17f9ab625', '', 'Same as our journalist and journalism claims that they are best in the world', '2020-06-10 05:00:00+05', 0, 0, 0, 'sherafzal2020', 'https://twitter.com/SherAfzal2020/status/1270600515001483265');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d60667fe-4264-4e53-9115-19a7538d57c2', '', 'Good day Azb.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600486421397504');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2abf4b39-e45e-4592-a06b-cdc9ee14e3b4', '', 'My pleasure.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600455295586304');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7fb9bff8-8bf0-4c90-8fd5-86a0acdffa6d', '', 'Hum sy murad main (only me)
Ik to ap alfaz daikhti hain 🤭
Emotions daikhyn ☹️', '2020-06-10 05:00:00+05', 0, 0, 0, 'l0wercase_guy', 'https://twitter.com/l0wercase_guy/status/1270600441840181254');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a628a6fe-e650-4df4-8360-005fc50c0ade', '', 'When your intentions are pure, you don''t lose anyone. People lose you.', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamnah_j', 'https://twitter.com/Aamnah_J/status/1270600424131833856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('54dc3023-ab71-48d2-8932-b3149f3e5224', '', 'Khair hai new lay laina 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600409598615553');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6744d977-a7e7-4976-ba85-7cfc7411f338', '', 'i like all of u but :( idk', '2020-06-10 05:00:00+05', 0, 0, 0, 'youneverdid1', 'https://twitter.com/youneverdid1/status/1270600391412064256');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c1dc675a-30c9-4c94-9053-05dbf9d4da0b', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600377554042880');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('265fbfb7-0de5-4c36-b82e-e9fb266ac737', '', '"The Great Hack" is a documentary about how public opinion can be manufactured by vested interests. A must see who wants to know about malicious campaigns on social media agianst IK. https://www.youtube.com/watch?v=iX8GxLP1FHo …', '2020-06-10 05:00:00+05', 0, 0, 0, 'saeedbabar', 'https://twitter.com/saeedbabar/status/1270600377394749446');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('584864e2-7e42-4659-b0d5-5770732914b6', '', 'YOUUUU ❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'sidrarare', 'https://twitter.com/sidrarare/status/1270600373930274817');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4f343af2-fd7f-46f1-a099-1ac93b85ae63', '', 'Exactly', '2020-06-10 05:00:00+05', 0, 0, 0, 'suhaib165', 'https://twitter.com/suhaib165/status/1270600372193824768');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bf66d13d-05c5-4d6c-a7bb-1fcc5236c357', '', ' pic.twitter.com/ffnb4tNyQh', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600368263741440');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4611215a-5faa-4eea-aef2-db682364f089', '', 'سعودی عرب اور ایران کی جس نے صلح کروائی تھی، 
پاکستان میں پیٹرول پمپ والے اس کی بات نہیں مان رہے۔
(منقول)', '2020-06-10 05:00:00+05', 0, 0, 0, 'jaabus2000', 'https://twitter.com/jaabus2000/status/1270600358658785283');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4481f726-b431-486b-886f-2079a8e965b2', '', 'Queeeeeeeeeeen😘😍♥️', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270600358054825986');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d30d1f40-2113-4dcb-b88d-2e39589e86c3', '', '@mubinasays  sooo meeee🥺🥺🥺💔', '2020-06-10 05:00:00+05', 0, 0, 0, 'awais09870301', 'https://twitter.com/Awais09870301/status/1270600355802382337');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7e9d3cd2-8a57-4f04-8130-9aff62ed64a2', '', 'JazakAllah.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600344968531969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('50a8f8b9-bd28-4872-8439-1584dba4354e', '', 'khota', '2020-06-10 05:00:00+05', 0, 0, 0, 'd_illusionist_', 'https://twitter.com/D_illusionist_/status/1270600341512429569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('acef88ac-9acb-44e7-b9e6-bccc789daa44', '', 'Tora che warpase', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600789279617024');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d7100c5c-db6a-4cfa-90f8-677c64d59d74', '', 'Oo :(', '2020-06-10 05:00:00+05', 0, 0, 0, 'rizvihijjab', 'https://twitter.com/RizviHijjab/status/1270600784305152000');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a77779fc-6e97-4c9c-9c47-968195386dbc', '', 'Are you thinking to get #Rich? No problem. Learn the ways to get rich easily. Read Book “Ameer Baap Ghareeb Baap” by Robert Kiosaki #LUMS #NUST #UoG #SZABIST #NUML #IBA #Karachi #Pakistancricket #UET #PTI #PMLN #PPP #Lahore Order at Daraz:  https://ift.tt/2XQj1Lb ', '2020-06-10 05:00:00+05', 0, 0, 0, 'eastbookbank1', 'https://twitter.com/EastBookBank1/status/1270600335833300993');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d6083bbb-2286-43b8-8520-86dc1c1c2844', '', 'Allah hidayat day Ameen 🤓✌️', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601225285885953');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a547ae18-3c31-4cfa-88a9-cf001bb69ee2', '', '❣️❣️🔥👍🏻✨', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601220789604355');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('507604b9-1202-4800-9251-4546be52dbc7', '', '@RjAsifsaif', '2020-06-10 05:00:00+05', 0, 0, 0, 'rjasifsaif', 'https://twitter.com/RjAsifsaif/status/1270601215538343936');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f36428f2-8e89-4ab1-b092-6f0c25ffdf97', '', '😔', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601209964093445');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9176605c-2285-4032-b46e-59f8262b45c9', '', '@NoorUlAin82 
I wish for you 
I pray for you https://twitter.com/Z_Bangash1/status/1270597984888270848 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramlla_', 'https://twitter.com/Ramlla_/status/1270601206105325568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d190d695-3120-4a81-b614-15a61ba42f49', '', 'arrange', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270601203605540865');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('72c867e3-8f93-4691-8e84-88121055debb', '', 'سر فروشی کا مزا کُوچہِ اسرار میں ہے
 کَلمہِ حق سے جو پِھر جاۓ وہ مَنصُور نہیں', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistani_313', 'https://twitter.com/PAKISTANI_313/status/1270601197712551942');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5513c8f0-32d4-4c99-a880-8a7ef824bc5c', '', 'Want to know about history of one of the greatest heros of world, 
Here you have that champ to see, who destroyed 5 jets in 30 sec 😍
#PakistanAirForce pic.twitter.com/QQqTr2ZoGP', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270601196429094912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('302ad9b1-34e6-4c16-95a8-e4fc90b21af0', '', 'To bhai ja k rok lo isko plz', '2020-06-10 05:00:00+05', 0, 0, 0, 'nasirmughalpk', 'https://twitter.com/NasirMughalPK/status/1270601196382883840');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('cf8e6bd1-ce12-490f-a30b-da35335c1821', '', 'اے خدا! تیرا ہر فیصلا سر آنکھوں پر♥
لیکن مجھے دنیا اور آخرت میں وہ چاہیے😍', '2020-06-10 05:00:00+05', 0, 0, 0, 'skyscrapper_70', 'https://twitter.com/skyscrapper_70/status/1270601185041547264');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('51a04012-316b-4e1a-837a-d7a56d35cd04', '', 'GORGEOUS 🥺❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270601167282855937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4cf124e9-30ba-4863-8bc1-49b27b94db48', '', 'Nice click 👌👍', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601152892211200');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b6d98393-7a36-4589-b4d1-e66d76a92656', '', 'i will fall back asleep any minute dw ure good', '2020-06-10 05:00:00+05', 0, 0, 0, 'shesunreliable', 'https://twitter.com/shesunreliable/status/1270601152867024896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('85c98aca-7553-4d9a-a620-1bd87707a3fc', '', ':) <33', '2020-06-10 05:00:00+05', 0, 0, 0, 'syyedzeeshan', 'https://twitter.com/SyyedZeeshan/status/1270601150639812608');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ed7b7291-4b59-48ba-8120-bc0b3150a0e8', '', 'Qsm sy 
Kisi ko sui b chubhy gi na " kya m bach to jaunga/i k chkr k bus tweet pr tweet', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270601148286803968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b1a617eb-3884-4632-bed1-05b1f632f802', '', 'Ameen https://twitter.com/Aqsahshmi/status/1270504913207005186 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270601146000965632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6e50010c-7b60-4fc8-93bf-f0d36d8d988b', '', 'Walikum salam', '2020-06-10 05:00:00+05', 0, 0, 0, 'mohsinamir10', 'https://twitter.com/Mohsinamir10/status/1270601143408889856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4538223a-94fe-4364-9e55-9a3292cfd1ca', '', 'I am big fan since watching #netflix Versailles as jt embodies the memory of the Sun King.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ameen_swati', 'https://twitter.com/Ameen_Swati/status/1270601141437509634');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8a0d861a-90c9-49f7-a4da-0c5cc242bf63', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601133975916545');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3a26a806-7eb4-4b12-a162-93301fe7f051', '', 'ICAP: Say something
Nobody: Mene Paper nai dene
ICAP: Then don''t give the Papers You F** Loser That''s the only thing You can Do. 😂😂
#icapExamsOnTime', '2020-06-10 05:00:00+05', 0, 0, 0, 'professornawab', 'https://twitter.com/ProfessorNawab/status/1270601133275439106');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bbbbc9d8-0c7b-41c4-a7e3-01c809e7db33', '', '1. Every year on April fools someone lit firecrackers in class. 
2. On my first day in a new school, I got to know that a girl committed suicide. 
3. A girl was beaten to death and thrown behind café.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramsha_saghir', 'https://twitter.com/ramsha_saghir/status/1270601129915809792');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2e7ddf4f-3965-435e-aa74-eeb2610bc1d4', '', 'I feel more at home in the outdoors. The streets, twilight, nature. The only part I hate about photographing in the wilderness is ke apna aap sambhalay banda ya camera😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'komallsalman', 'https://twitter.com/komallsalman/status/1270601123951345665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4f8d4d39-a068-469f-b1a2-5715af4cbbc7', '', 'Done pic.twitter.com/EE9YCdAmNN', '2020-06-10 05:00:00+05', 0, 0, 0, 'raja_danish5', 'https://twitter.com/Raja_Danish5/status/1270601117672656896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f61b5f14-63b7-4d64-a0cd-4d0787a17221', '', ' https://twitter.com/messages/media/1270375516055445508 …
ye bhai ka insta ka page hy
@Anaskhan_0909 ka 
is ka page hy 
is ko follow kro insta py 
plzz follow', '2020-06-10 05:00:00+05', 0, 0, 0, 'm_saim467', 'https://twitter.com/m_saim467/status/1270601110756233219');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3fe91ec4-2430-4366-883b-35d3aaa2f938', '', 'Kon narax?', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270601110127030273');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('29547b35-0a8d-419d-aaca-e8d37c6ae087', '', 'یہاں انصاف صرف طاقتور لوگوں ملتا ہے ۔ غریب تو بے قصور ہو کر بھی قصوروار ٹھہرایا جاتا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'f_a7e', 'https://twitter.com/F_A7e/status/1270601109967720453');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('fc906737-8d91-4bd7-9734-05afce9230b5', '', 'Khair Bakhsh Marri – Daily Balochistan Express thank you for sharing. I had many interesting conversations with Uncle KB. Unwavering in his beliefs. https://www.bexpress.com.pk/2020/06/khair-bakhsh-marri/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ninoqazi', 'https://twitter.com/ninoqazi/status/1270601102602440704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('be65a266-1917-4a2f-8dd6-555ac5380197', '', 'Amazing 😍😘👌', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601092712275969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('dd171da2-d1d1-4207-b328-ceffc67c107a', '', 'پاکستان اسٹاک مارکیٹ کا مثبت آغاز
مزید پڑھیں:  https://www.humnews.pk/latest/255600/ 
۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔
#HumNews #PSX #KSE #PakistanStockExchange pic.twitter.com/VBBGo6FiPt', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnewspakistan', 'https://twitter.com/humnewspakistan/status/1270601087364497408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c31520b8-7ea0-4d4c-992a-420697e797b9', '', 'Hahaha it is useless to cry over split milk 😂😂😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'miarajput101', 'https://twitter.com/miarajput101/status/1270601087272325120');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('37e8878a-1a11-4f29-b23b-00063a2429dd', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601083610693632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9071549b-3490-4dfb-b9e8-598e1bd4d0c7', '', 'Okhay 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601067299037184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('67639adc-2f5c-44d3-85ea-d1887fa7b6b6', '', 'Sure 👀', '2020-06-10 05:00:00+05', 0, 0, 0, 'ayrasair', 'https://twitter.com/AyraSair/status/1270601054535761922');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f643fdef-8b1c-41f6-ae53-e4bced5d3ffe', '', 'Congo dusky', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600773785837569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ef4bb847-7f37-449e-822e-724651b3613f', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600544957222912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d02f7476-c445-4727-a979-4fa46a8e077b', '', 'Why india always lose land 2 enemy forces

1962 lost Aksai chin 37,244 Sq. km

2013 lost 640 Sq. km in eastern ladakh

2017 lost Doklam, china built the road, came within 60 meters of India’s outpost at Doka La

2020 lost Ladakh 60 Sq. Km

NOW ONCE AGAIN  PLEASE GO BACK
😀😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'ishaqkhan1967', 'https://twitter.com/ishaqkhan1967/status/1270601046767931393');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('dacf6ad5-e7bb-4682-80b5-78ca368fad84', '', 'شُکر ہے بالآخر آپ کو بھی سمجھ آ گئی مان ہی گئے
اب اُسے بولیں انا کو چھوڑے اور پاکستان واپس آئے🤷🏻‍♀️', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270601044435836928');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('24a526b0-ec2b-485e-9a4d-15605a28dac7', '', 'these mazduur next to my house make sexual noises every dupehr i can''t even sit with my family anymore', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601026865954816');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('73ca72e9-fc1c-466b-aee1-43e0bff8492e', '', 'صرف میرے لیے نہیں رہنا
تم میرے بعد بھی حسیں رہنا

                 ⁦❤️⁩ pic.twitter.com/RmYERPaKPm', '2020-06-10 05:00:00+05', 0, 0, 0, 'ranjha_of2020', 'https://twitter.com/Ranjha_of2020/status/1270601024617709568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('567c7ac3-62d9-4194-bd84-880b4a6e4099', '', 'بہت خوب تجزیہ کیا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'faisalsohailfa1', 'https://twitter.com/FaisalSohailFa1/status/1270601020792541184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ef7fdceb-6b15-4989-a25c-d495cc56750a', '', 'Mention not', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601017403547648');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a21d57a1-7b81-44bb-bd4d-994892cdad98', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601015843328001');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0cb00ad7-7998-419a-b1a8-5bb737014a16', '', 'میرے گاؤں کا دس سال کا تمیور جو گاؤں تو نہیں ہوتا مگر اور نہ ہی مجھے جانتا تھا 

مگر یوٹیوب پر ویڈیوز دیکھ کر فین ہوگیا 😂♥️

کہتا ہے آپ ایبٹ آباد آئے اور ہمارے گھر کیوں نہیں آئے 

پاور آف یوٹیوب 

ایک سہی مگر مخلص ہو یہی بڑی بات ہوتی ہے pic.twitter.com/vbpazB1Oyq', '2020-06-10 05:00:00+05', 0, 0, 0, 'imammarofficial', 'https://twitter.com/ImAmmarOfficial/status/1270601015440617472');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4028649f-61a2-4fb8-bf18-f4558b3e3af7', '', 'Kash karachi plan k waqat b yahi bat kartay', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270601015365111808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8e0740ed-c6b3-4151-aab5-c2ae2a1ec15c', '', 'یہ ہے نالائق و نا اہل حکومت کا کار نامہ اب اس سے فورا”جان چھڑانا ہوگی', '2020-06-10 05:00:00+05', 0, 0, 0, 'khurshidaawan', 'https://twitter.com/khurshidAawan/status/1270600995555495937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7e860477-7696-4838-bd0a-941858c1f61b', '', 'In sha allah janab....ap dua kary bs', '2020-06-10 05:00:00+05', 0, 0, 0, 'bangashwaji', 'https://twitter.com/BangashWaji/status/1270600978572750849');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('47a77991-9524-4e20-8918-d6a9b564e808', '', 'May Allah swt give her complete health..', '2020-06-10 05:00:00+05', 0, 0, 0, 'abbasmalik13', 'https://twitter.com/AbbasMalik13/status/1270600975657709570');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5188e674-0c1b-484a-a193-e72e80199b6a', '', 'Ok', '2020-06-10 05:00:00+05', 0, 0, 0, 'lacklustersays', 'https://twitter.com/lacklustersays/status/1270600972272877569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f2ac85ba-5bfa-4584-8824-24513d181680', '', '" جب پوری دنیا آپ کے خلاف کھڑی ہو جائے تو آپ دوسری طرف مُنہ کریں اور سیلفی لے لیں،پھر پوری دنیا آپ کے پیچھے کھڑی ہو گی ۔۔📸

Copy pic.twitter.com/nGkJw2Spjb', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamabad110', 'https://twitter.com/islamabad110/status/1270600941520277505');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f192e6dc-3588-4a2c-a1f6-3d772d63e9cd', '', '44444', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600935094566912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1be3b420-8371-4daa-822a-4f032014bf0a', '', 'Nope. You need recovered plasma?', '2020-06-10 05:00:00+05', 0, 0, 0, 'saarimmehdi', 'https://twitter.com/SaarimMehdi/status/1270600928203345920');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f607598a-2386-4642-9268-6820b1f8aa51', '', 'Allah de rogh ka', '2020-06-10 05:00:00+05', 0, 0, 0, 'nijatmohmand', 'https://twitter.com/NijatMohmand/status/1270600927586762752');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f0e71afe-bce4-40e5-879b-ba5a4cd25e22', '', '@shoaibi26', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600917767933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('70ba9b4e-9a30-44c8-8541-8c7e2550d261', '', 'رپورٹ دیکھنے کیلئے لنک پر کلک کریں
 https://youtu.be/okejBvTfUJg  pic.twitter.com/vIw4yiq3C1', '2020-06-10 05:00:00+05', 0, 0, 0, 'sportslinkpk92', 'https://twitter.com/sportslinkpk92/status/1270600903196884993');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0af6d1e3-866d-49a4-bd3f-316786a10d95', '', 'Yaddd hai karchi plan crash p kesa jashan manaya tha.. Ham na just phcha knsa mulk ka ha.. Par apka pora mulk khush tha us din.', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600900130807808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2e8506de-5bdd-4d66-aa47-72114f964985', '', 'اتنے حجابوں پر تو یہ عالم ہے حسن کا 
کیا حال ہو جو دیکھ لیں پردہ اٹھا کے "ہم" https://twitter.com/RasoolAalia/status/1270210450047762432 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'highblunder', 'https://twitter.com/HighBlunder/status/1270600895705874435');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2f4abde3-f865-4ee0-bf71-798fb3812eea', '', ' pic.twitter.com/HZFkJ7lYmR', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270600887438839808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d8624469-b723-473c-85e6-26eac75d806a', '', 'awfully demeaning comment -"poor lady knowing English" Its reflective of our societal malice of gender inequality

There are many women experts on all topics, look around. look at  @JinnahInstitute & @tabadlab policy briefs, roundtables, webinars and you would find them.', '2020-06-10 05:00:00+05', 0, 0, 0, 'yazdanifauzia', 'https://twitter.com/yazdanifauzia/status/1270600886662856704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('dcdaa613-11dc-4608-9c9d-c85a57db6c7d', '', 'Well love is always blind ❤️ if it''s pure and true love, appearances doesn''t matter', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600879750684673');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d7c7694a-16fc-4781-a8f7-fc372c821a67', '', '@shoaibi26 

آگ  لگانے  والوں  کو  کہاں  خبر ،،،

🌹🌹🌹🌹👉👉👉👁

رخ  ہواؤں  نے  بدلا  تو  خاک  وہ  بھی ہونگے۔!!#', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600869160144897');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('eabb79c5-b646-46e9-aa9c-de5a0c5e66a5', '', 'had me on strings ffs', '2020-06-10 05:00:00+05', 0, 0, 0, 'themohkum', 'https://twitter.com/TheMohkum/status/1270600861870424064');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('54b0e74f-f0bc-49c4-a697-fb977cbba38b', '', 'آپ سے اتفاق ہے https://twitter.com/nasirshahoffice/status/1270368126069342208 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'rsabbasi2', 'https://twitter.com/RSabbasi2/status/1270600857202110464');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5898d4ee-3848-41fd-8fb8-1923d3ec3596', '', 'Good question 😂', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600855419523072');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ecde1822-cc27-4252-bbaf-4338698d0715', '', 'چھتر مار کر نکالنا پڑے گا۔ تخم خنزیر میں غیرت کہاں۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamirkhan3288', 'https://twitter.com/aamirkhan3288/status/1270600853641101312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9b70e971-08e5-49b3-b768-dd1a77632955', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600834737463298');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6a180a3b-d09f-47a5-a00e-8d19c1a91870', '', 'Haha Allah na kara, at least I am promoting their stories in Pak newspaper''s... Itna to mara ehsan ha in par😅😆', '2020-06-10 05:00:00+05', 0, 0, 0, 'furqanraja1122', 'https://twitter.com/furqanraja1122/status/1270600821546405893');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('607715c5-6fa8-4c8f-9098-5f2f7b469cca', '', 'گوجرانوالہ: فائرنگ کے 2 زخمی چل بسے https://taazakhaber.com/urdu/%da%af%d9%88%d8%ac%d8%b1%d8%a7%d9%86%d9%88%d8%a7%d9%84%db%81-%d9%81%d8%a7%d8%a6%d8%b1%d9%86%da%af-%da%a9%db%92-2-%d8%b2%d8%ae%d9%85%db%8c-%da%86%d9%84-%d8%a8%d8%b3%db%92/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'khabertaaza', 'https://twitter.com/KhaberTaaza/status/1270600806052618241');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6dbfb628-93a2-44ab-b816-354312d8870c', '', 'کورونا وبا کے باعث پاکستان کی معاشی ترقی کے سفر https://viralpakistan.com/archives/23086 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600771990704128');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8758a9bc-b17c-4062-977e-706e012f2ffd', '', 'Thank you ahmed :)', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600754978586627');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ccb083d6-da49-4023-b2e4-3f9491f9d688', '', 'لسٹ 653 B
لیگی جمعیتی فالو ریٹویٹ 
@Sh_Misbah
@MFAK_12
@Najamkhan175
@m_kashmiri79
@SheikhNoorMJav3
@Rsh628
@Saadull9
@MalikSh87
@Mik5642
@MehmoodAhmedqu2
@Mubashar_12
@idrees700
@ChHassnainAli3
@aftab261970
@AbdulHa20984338
@PmlBibi
@JadoonHazara1
@ab_zz1
@kalamkar7
@Z_R786 pic.twitter.com/KlVHrewKnJ', '2020-06-10 05:00:00+05', 0, 0, 0, 'sh_misbah', 'https://twitter.com/Sh_Misbah/status/1270600754848358401');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a05d119b-cade-460e-be13-6b668d339c61', '', 'O Kuch Nahi Milta in Cheezo Sey🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'talhaijaz95', 'https://twitter.com/TalhaIjaz95/status/1270600754777202689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('31b12eaf-1d66-4308-b2cd-119f999b9d00', '', '🥵🥵🥵', '2020-06-10 05:00:00+05', 0, 0, 0, 'haadeap', 'https://twitter.com/HaadeaP/status/1270600754026381312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7be60848-5a9c-48af-abd8-4fa6ff1b1330', '', 'How do people think they can get away with saying this kind of inane nonsense. I would say I’m numb to this but omg is this jarring .', '2020-06-10 05:00:00+05', 0, 0, 0, 'sophiasaifi', 'https://twitter.com/SophiaSaifi/status/1270600748376694785');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c115b497-9120-4b7c-bc5d-6989b08d07a1', '', ' pic.twitter.com/LebjX1avbW', '2020-06-10 05:00:00+05', 0, 0, 0, 'samia_firdous', 'https://twitter.com/samia_firdous/status/1270600742303399937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('12ccf61c-49b8-45bb-83cd-81e7ccfdba13', '', ' pic.twitter.com/5Bwc7JGxNC', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600740290080769');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e6684066-afa1-4340-9892-c0f6e43d362a', '', 'phely my follow back', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270600721877086208');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2936c004-4c0f-4cab-8c46-97e4d62e5d79', '', 'YOURE THE CUTEST 🤧🤧
you cant change my mind, period', '2020-06-10 05:00:00+05', 0, 0, 0, 'bekindplsandtks', 'https://twitter.com/bekindplsandtks/status/1270600721868771329');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e239ea2a-f581-4e01-8206-e116decabb4e', '', 'A friend did it and got 12 month og ultimate like that how does that work?', '2020-06-10 05:00:00+05', 0, 0, 0, 'sarimmuhammad', 'https://twitter.com/SarimMuhammad/status/1270600712628699136');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2b5786e8-c79b-4f4a-8fa2-34a36e1d754f', '', 'hii 🥺', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270600701664808960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3d7c007f-d54b-46e1-9914-38666337c6cc', '', 'MashaAllah great 🌸
Allah pak sb k parents ko khudh and salamt rakhen ameen
The only pure love 💕', '2020-06-10 05:00:00+05', 0, 0, 0, 'amar61955819', 'https://twitter.com/Amar61955819/status/1270600700771340288');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('44011b1b-121a-4123-8b95-80fcab4d23e3', '', 'Ohhh acha 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600699433361408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ebdca06a-b15d-40ad-a3e7-710d1020250a', '', 'Good morning arsalan.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600697000734720');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6c5415dc-40d5-425b-815e-08d34c51e09e', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600696434483201');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8e126fe1-47c3-4e20-8d8d-9918c5ab2f51', '', '🤓', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600693037096967');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e052dd3a-5140-45c0-8dab-89de1e25ab41', '', 'آپ کے پاس کتنے وسائل ہیں؟ 

سو میں سے پانچ کا مطلب ہے پانچ فیصد آبادی! 

ایک کروڑ لوگ؟ https://twitter.com/geonews_urdu/status/1270599191467896834 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'husnainjamal', 'https://twitter.com/HusnainJamal/status/1270600688763092992');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('08c7a648-e0a5-4a45-a4a6-82acaa8b35e3', '', 'You look great honey, don''t let a couple of haters or trolls take that from you. Keep smiling💓', '2020-06-10 05:00:00+05', 0, 0, 0, 'sahar_ashfaq', 'https://twitter.com/sahar_ashfaq/status/1270600682534514689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9a57768e-49ce-485f-a223-8cdc7bf59d06', '', 'When a Back Bencher Solves a Tough Problem in Front of Whole Class On White Board..

Other Back Benchers: pic.twitter.com/16PM0fRAIW', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600664138354689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('60995283-9990-4470-80b6-fb38a7573c05', '', 'یہ قرآن وہ رستہ دکھاتا ہے جو سب سے سیدھا ہے اور مومنوں کو جو نیک عمل کرتے ہیں بشارت دیتا ہے کہ اُن کے لئے اجر عظیم ہے"، سورة الإسراء ﴿۹﴾

#wednesdaymorning
#wednesdaymorning
#wednesdaymorning', '2020-06-10 05:00:00+05', 0, 0, 0, 'adv_shahfahad', 'https://twitter.com/Adv_ShahFahad/status/1270600662309580801');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('10d734d0-7cda-4202-b885-ab2c29502276', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600660334100480');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('75f2ab33-8817-4876-acfa-a76e0d08fa67', '', 'And we as a Muslim apologize on this pervert''s behavior towards you. 🙏', '2020-06-10 05:00:00+05', 0, 0, 0, 'khanmubeenahmad', 'https://twitter.com/KhanMubeenAhmad/status/1270600658178191361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('79bfb4d1-ce5b-4211-bf9e-da3da13cf539', '', 'Dn', '2020-06-10 05:00:00+05', 0, 0, 0, 'itx_danny9', 'https://twitter.com/itx_Danny9/status/1270600654361427968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f5f81165-9014-45b3-961b-3b0cb5e3698a', '', 'No one 😔 https://twitter.com/eshu_dead/status/1270471475930292225 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'sufijaann', 'https://twitter.com/sufijaann/status/1270600651840671744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0a723d50-f5e4-41b0-b18a-edd8b65727e4', '', 'Ali 🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600648443256834');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6239a67c-a3ef-402a-9fc6-0b225aa32787', '', 'This is good and wise decision to appointed @AmbassadorSadiq as special representative for Afghanistan because being an amb, he was widely respected in Afghanistan and still Afghan leaders respect him, thats why Afghan FM also warmly welcomed his appointment. https://twitter.com/miqazi/status/1270597229120753664 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamudinsajid', 'https://twitter.com/islamudinsajid/status/1270600640176291842');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6e5b16f3-2cf0-409c-956d-ddd5ab7f2806', '', 'عشقِ کامل جس کو عزت بخش دے
ہم نہیں بخش سکتے🙏🏻', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270600637076639744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b09d4521-0872-41f0-8d67-bd064cb39919', '', 'Thank you Ik.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600630466490368');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9a7f085c-cf7f-4e96-bdf6-0cf2e7091cfe', '', 'Hahaha 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'aaab_e_hayat', 'https://twitter.com/Aaab_e_hayat/status/1270600620047831045');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9e05b073-47ea-4e52-85e6-e1f55d3fca60', '', '😂😑😂😑', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600616516206593');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('201b9c6c-dd6c-44b8-9cde-0f8d8872750e', '', 'Searching really.', '2020-06-10 05:00:00+05', 0, 0, 0, 'sea_goat', 'https://twitter.com/sea_goat/status/1270600609662676994');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a2575ded-daf1-429d-9b0c-3231a8237747', '', 'Well said and thank you for your beautiful words. Good day.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600590712811520');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5f365596-a85b-44b5-a9a1-a19cfff9ee0f', '', 'Turkey begins constructing modern warship for Pakistan. #pakistan https://www.dawn.com/news/1562426/turkey-begins-constructing-modern-warship-for-pakistan …', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistaninews', 'https://twitter.com/pakistaninews/status/1270600590607945728');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4f8c71b7-91d1-4342-865e-7aba2f1e2d98', '', 'Great development Alhamdulilah ,From day one we are listening this but they thought to practise it now, anyhow der ayy durust ayy', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270600589781721088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ca1c51c6-0a8e-40b5-aa46-8a9796431d21', '', 'G Sahi 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'mashriqi_hussan', 'https://twitter.com/Mashriqi_Hussan/status/1270600554235023361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9db3886e-78c0-40ed-99cb-588dc2723b45', '', 'خوف کا ختم ہونا عقل کے حصول کی نشانی ہے خوف میں مبتلا شخص کبھی بھی دانا نہیں ہوسکتا 
برٹنڈ رسل
شکریہ منظور پشتین pic.twitter.com/XE0VxSD8s6', '2020-06-10 05:00:00+05', 0, 0, 0, 'scorpion_junaid', 'https://twitter.com/scorpion_junaid/status/1270600583905521665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e3f04114-ffd0-42b5-a69d-9acf17b088a1', '', 'خان کو اپنا کہنے کا بہانہ چاہیے بس۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'sam18071991', 'https://twitter.com/Sam18071991/status/1270600578285142018');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('74beb057-1c68-491a-a7a1-6716a397ed12', '', 'Khty hain k awam pr hukmran un k bech m sy he chuny jaty hain 
Either you call him corrupt or public is corrupt k un m sy b corrupt e un pr muslt key jaty hain 
Whosoever is leader , is from nation. Or zalim hukmran qoum k lye saxa hoty hain', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270600556864778240');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3f58966f-a7c3-4584-8d82-8c1b124fb2bf', '', 'How merciful Allah is! #Reminders #socialdiarymagazine #QuranSayings #QuranicVerses  https://www.instagram.com/p/CBPoCe8gpex/?igshid=cdr1j3l1za76 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'socialdiarymagz', 'https://twitter.com/SocialDiaryMagz/status/1270600556722216960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('74e018e4-a1ae-42ca-8e40-5d1d0ab3eae9', '', 'Aurat ki izat karna aik izatdar mard ki nishani hai❤', '2020-06-10 05:00:00+05', 0, 0, 0, 'aseelmadani_', 'https://twitter.com/aseelmadani_/status/1270600554780246016');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b5f94ec6-4ead-4ff7-84c6-7a5cf7ebf837', '', 'G Sahi 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'mashriqi_hussan', 'https://twitter.com/Mashriqi_Hussan/status/1270600554235023361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5f710b39-f43b-4259-b91c-9a7829b6040b', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600544957222912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('734c6aa5-8519-4f8a-a9c0-3639448d118a', '', 'Tum pr hi gaya hai na', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600544017625088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('71d7752c-8e03-4096-a3e4-eb1b58ac0985', '', '@PTCLOfficial  Gatiya taeern internet pata nai kesy sunty hain yeh log k asar he nai hota in ko...complain karo to thori dair tek jasy he ap ne #1218 pr 1 press kia nai again wo he problem suru', '2020-06-10 05:00:00+05', 0, 0, 0, 'iam_raajput', 'https://twitter.com/iam_raajput/status/1270600539907260416');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e522f4b2-8fac-4064-be23-d9e2b837f73b', '', 'کشمیریوں کو بھارتی فوج نے نام نہاد سرچ آپریشن کی آڑ میں شہید کیا ، کشمیر میڈیا سروس', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600539378724864');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ce86a975-f226-46a9-8f11-b9d95c1cd678', '', 'مقبوضہ کشمیر میں بھارتی دہشت  گردی جاری،ضلع شوپیاں میں 3کشمیری شہید', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600537726160898');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('90c8be35-d445-4d6f-9fc0-ad0a60361c39', '', 'سرکاری گھروں پر قبضوں سے متعلق ازخودنوٹس کیس:چیف جسٹس https://viralpakistan.com/archives/23084 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600515399933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bc65102e-cadf-4dbd-a21c-1e09e6552d4a', '', 'Same as our journalist and journalism claims that they are best in the world', '2020-06-10 05:00:00+05', 0, 0, 0, 'sherafzal2020', 'https://twitter.com/SherAfzal2020/status/1270600515001483265');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('34ae8ea3-da46-4fbb-a631-0238b9fffd1b', '', 'Good day Azb.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600486421397504');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('14a720d0-9fe3-4bac-b3cd-64910352832a', '', 'My pleasure.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600455295586304');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f625e64b-aca0-4be4-8b8b-2efbae2953a8', '', 'Hum sy murad main (only me)
Ik to ap alfaz daikhti hain 🤭
Emotions daikhyn ☹️', '2020-06-10 05:00:00+05', 0, 0, 0, 'l0wercase_guy', 'https://twitter.com/l0wercase_guy/status/1270600441840181254');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bc01255f-bae1-4fb5-a990-2e95a01e6dcb', '', 'When your intentions are pure, you don''t lose anyone. People lose you.', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamnah_j', 'https://twitter.com/Aamnah_J/status/1270600424131833856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5bde93aa-d409-4c01-9fd1-3dd5a137f451', '', 'Khair hai new lay laina 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600409598615553');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('fc2786c0-7a7c-4e61-9892-e4cc6e990b83', '', 'i like all of u but :( idk', '2020-06-10 05:00:00+05', 0, 0, 0, 'youneverdid1', 'https://twitter.com/youneverdid1/status/1270600391412064256');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6a9b6ee9-91d6-482d-9ca5-993e5b66808b', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600377554042880');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('fdfc1601-3d03-461b-97e6-b01b024e3ed6', '', '"The Great Hack" is a documentary about how public opinion can be manufactured by vested interests. A must see who wants to know about malicious campaigns on social media agianst IK. https://www.youtube.com/watch?v=iX8GxLP1FHo …', '2020-06-10 05:00:00+05', 0, 0, 0, 'saeedbabar', 'https://twitter.com/saeedbabar/status/1270600377394749446');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1d33b596-95b3-49ca-88eb-32d2fd49c49e', '', 'YOUUUU ❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'sidrarare', 'https://twitter.com/sidrarare/status/1270600373930274817');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7c878e28-0fef-4ead-af5c-11dbd3c9ad4c', '', 'Exactly', '2020-06-10 05:00:00+05', 0, 0, 0, 'suhaib165', 'https://twitter.com/suhaib165/status/1270600372193824768');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1336b5d5-842c-490c-a653-d4bba2258d67', '', ' pic.twitter.com/ffnb4tNyQh', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600368263741440');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5ee3448b-5dd3-4eec-ace9-a2d4e05dd83a', '', 'سعودی عرب اور ایران کی جس نے صلح کروائی تھی، 
پاکستان میں پیٹرول پمپ والے اس کی بات نہیں مان رہے۔
(منقول)', '2020-06-10 05:00:00+05', 0, 0, 0, 'jaabus2000', 'https://twitter.com/jaabus2000/status/1270600358658785283');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b20046c7-9d1f-4282-a274-dddb306f0583', '', 'Queeeeeeeeeeen😘😍♥️', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270600358054825986');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('74e6a0c0-0864-4296-ae72-7b7e7cf3ec4e', '', '@mubinasays  sooo meeee🥺🥺🥺💔', '2020-06-10 05:00:00+05', 0, 0, 0, 'awais09870301', 'https://twitter.com/Awais09870301/status/1270600355802382337');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ea31da5d-5419-4d00-83fd-4764faf48227', '', 'JazakAllah.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600344968531969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3520f191-fb3c-4a7d-88f7-275ca747fb4e', '', 'khota', '2020-06-10 05:00:00+05', 0, 0, 0, 'd_illusionist_', 'https://twitter.com/D_illusionist_/status/1270600341512429569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('fa7a0df4-7032-40f7-94b4-e53c2fd66efc', '', 'Are you thinking to get #Rich? No problem. Learn the ways to get rich easily. Read Book “Ameer Baap Ghareeb Baap” by Robert Kiosaki #LUMS #NUST #UoG #SZABIST #NUML #IBA #Karachi #Pakistancricket #UET #PTI #PMLN #PPP #Lahore Order at Daraz:  https://ift.tt/2XQj1Lb ', '2020-06-10 05:00:00+05', 0, 0, 0, 'eastbookbank1', 'https://twitter.com/EastBookBank1/status/1270600335833300993');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('04b69a9d-9bd5-408a-97bf-d5efe7cbea15', '', 'Allah hidayat day Ameen 🤓✌️', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601225285885953');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c6547160-f0b4-4d5f-b5d5-99432edd8729', '', '❣️❣️🔥👍🏻✨', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601220789604355');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7c86309d-cada-45d4-9779-379b6f693416', '', '@RjAsifsaif', '2020-06-10 05:00:00+05', 0, 0, 0, 'rjasifsaif', 'https://twitter.com/RjAsifsaif/status/1270601215538343936');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('328b3f05-ad46-41ed-be18-a5e4ea9161de', '', '😔', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601209964093445');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9bb08db4-c82c-4058-9d0e-233d11aa779b', '', '@NoorUlAin82 
I wish for you 
I pray for you https://twitter.com/Z_Bangash1/status/1270597984888270848 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramlla_', 'https://twitter.com/Ramlla_/status/1270601206105325568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('496f4736-af8f-4f4d-81c0-b2d928328435', '', 'arrange', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270601203605540865');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('29b7651e-14cd-49c3-b5eb-b01b94285b74', '', 'سر فروشی کا مزا کُوچہِ اسرار میں ہے
 کَلمہِ حق سے جو پِھر جاۓ وہ مَنصُور نہیں', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistani_313', 'https://twitter.com/PAKISTANI_313/status/1270601197712551942');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6b802643-a23f-4edc-b1f4-a777a12860af', '', 'Want to know about history of one of the greatest heros of world, 
Here you have that champ to see, who destroyed 5 jets in 30 sec 😍
#PakistanAirForce pic.twitter.com/QQqTr2ZoGP', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270601196429094912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6b789662-c02a-4781-9b36-3fc87687b545', '', 'To bhai ja k rok lo isko plz', '2020-06-10 05:00:00+05', 0, 0, 0, 'nasirmughalpk', 'https://twitter.com/NasirMughalPK/status/1270601196382883840');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e69d8eed-5d39-40d5-b93d-33286e457d4c', '', 'اے خدا! تیرا ہر فیصلا سر آنکھوں پر♥
لیکن مجھے دنیا اور آخرت میں وہ چاہیے😍', '2020-06-10 05:00:00+05', 0, 0, 0, 'skyscrapper_70', 'https://twitter.com/skyscrapper_70/status/1270601185041547264');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('40f81183-f456-4df8-a633-62e0e8a68fe4', '', 'GORGEOUS 🥺❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270601167282855937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f2b12f46-22b7-4613-951a-5fc7bb4244dc', '', 'Nice click 👌👍', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601152892211200');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('dfc98246-15b2-473a-929d-a00577a4f954', '', 'i will fall back asleep any minute dw ure good', '2020-06-10 05:00:00+05', 0, 0, 0, 'shesunreliable', 'https://twitter.com/shesunreliable/status/1270601152867024896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('041c6e45-a6de-4908-b570-92497ba7e0fb', '', ':) <33', '2020-06-10 05:00:00+05', 0, 0, 0, 'syyedzeeshan', 'https://twitter.com/SyyedZeeshan/status/1270601150639812608');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('36ca993d-befc-4adf-a9c4-8fe8cc5443a8', '', 'Qsm sy 
Kisi ko sui b chubhy gi na " kya m bach to jaunga/i k chkr k bus tweet pr tweet', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270601148286803968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ffb035ec-1f2a-4568-ac02-5a058d31e290', '', 'Ameen https://twitter.com/Aqsahshmi/status/1270504913207005186 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270601146000965632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('fef55831-eb04-4694-9f97-edb8503dccb5', '', 'Walikum salam', '2020-06-10 05:00:00+05', 0, 0, 0, 'mohsinamir10', 'https://twitter.com/Mohsinamir10/status/1270601143408889856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8a821b26-7c3a-4e65-9fe1-fc3e72bb8184', '', 'I am big fan since watching #netflix Versailles as jt embodies the memory of the Sun King.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ameen_swati', 'https://twitter.com/Ameen_Swati/status/1270601141437509634');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7f8f5977-494b-48f2-84c5-61847b60b175', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601133975916545');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('89570f9f-0955-4916-8f19-632450af51e1', '', 'ICAP: Say something
Nobody: Mene Paper nai dene
ICAP: Then don''t give the Papers You F** Loser That''s the only thing You can Do. 😂😂
#icapExamsOnTime', '2020-06-10 05:00:00+05', 0, 0, 0, 'professornawab', 'https://twitter.com/ProfessorNawab/status/1270601133275439106');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ccb5757c-91d8-4cdc-b466-a8e8f04919de', '', '1. Every year on April fools someone lit firecrackers in class. 
2. On my first day in a new school, I got to know that a girl committed suicide. 
3. A girl was beaten to death and thrown behind café.', '2020-06-10 05:00:00+05', 0, 0, 0, 'ramsha_saghir', 'https://twitter.com/ramsha_saghir/status/1270601129915809792');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0344e884-a84d-420a-8777-083bb331e883', '', 'I feel more at home in the outdoors. The streets, twilight, nature. The only part I hate about photographing in the wilderness is ke apna aap sambhalay banda ya camera😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'komallsalman', 'https://twitter.com/komallsalman/status/1270601123951345665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c4c241de-a7cb-4836-9c1a-fb9ebe2efd6a', '', 'Done pic.twitter.com/EE9YCdAmNN', '2020-06-10 05:00:00+05', 0, 0, 0, 'raja_danish5', 'https://twitter.com/Raja_Danish5/status/1270601117672656896');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4c1b60d1-45a4-471b-84e6-8751c4e596b0', '', ' https://twitter.com/messages/media/1270375516055445508 …
ye bhai ka insta ka page hy
@Anaskhan_0909 ka 
is ka page hy 
is ko follow kro insta py 
plzz follow', '2020-06-10 05:00:00+05', 0, 0, 0, 'm_saim467', 'https://twitter.com/m_saim467/status/1270601110756233219');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bdecfb28-121f-48fe-8fa8-7c29c70a3623', '', 'Kon narax?', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270601110127030273');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('209284f2-2909-4013-8c07-e1b795e163ed', '', 'یہاں انصاف صرف طاقتور لوگوں ملتا ہے ۔ غریب تو بے قصور ہو کر بھی قصوروار ٹھہرایا جاتا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'f_a7e', 'https://twitter.com/F_A7e/status/1270601109967720453');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('aeeb5533-ab62-403d-a48a-abe87cc4b0fc', '', 'Khair Bakhsh Marri – Daily Balochistan Express thank you for sharing. I had many interesting conversations with Uncle KB. Unwavering in his beliefs. https://www.bexpress.com.pk/2020/06/khair-bakhsh-marri/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'ninoqazi', 'https://twitter.com/ninoqazi/status/1270601102602440704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9652c19b-b476-490f-a49f-16860df83508', '', 'Amazing 😍😘👌', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601092712275969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9f0c97e5-1ae9-4aa6-bbb4-e5f8348840f4', '', 'پاکستان اسٹاک مارکیٹ کا مثبت آغاز
مزید پڑھیں:  https://www.humnews.pk/latest/255600/ 
۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔
#HumNews #PSX #KSE #PakistanStockExchange pic.twitter.com/VBBGo6FiPt', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnewspakistan', 'https://twitter.com/humnewspakistan/status/1270601087364497408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bb07f87d-d9f0-47dc-bb4e-4d129555711f', '', 'Hahaha it is useless to cry over split milk 😂😂😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'miarajput101', 'https://twitter.com/miarajput101/status/1270601087272325120');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('efca5dbb-8823-47b4-9305-24a7a2b4ae16', '', 'Ifb', '2020-06-10 05:00:00+05', 0, 0, 0, 'aatifmahmood8', 'https://twitter.com/AatifMahmood8/status/1270601083610693632');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8fc94d96-6c70-4da9-8df8-2e31bdc4ad68', '', 'Okhay 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601067299037184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('217c7f91-48ad-4e1b-8c2f-9aeefac0bf84', '', 'Sure 👀', '2020-06-10 05:00:00+05', 0, 0, 0, 'ayrasair', 'https://twitter.com/AyraSair/status/1270601054535761922');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('351ae345-b741-4a68-9df6-71c04d96c7f0', '', 'Why india always lose land 2 enemy forces

1962 lost Aksai chin 37,244 Sq. km

2013 lost 640 Sq. km in eastern ladakh

2017 lost Doklam, china built the road, came within 60 meters of India’s outpost at Doka La

2020 lost Ladakh 60 Sq. Km

NOW ONCE AGAIN  PLEASE GO BACK
😀😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'ishaqkhan1967', 'https://twitter.com/ishaqkhan1967/status/1270601046767931393');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a4db5a21-7e11-4998-9d20-84a5dc27eed3', '', 'شُکر ہے بالآخر آپ کو بھی سمجھ آ گئی مان ہی گئے
اب اُسے بولیں انا کو چھوڑے اور پاکستان واپس آئے🤷🏻‍♀️', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270601044435836928');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d28c52bc-76da-4fac-a383-eeec8c6289ae', '', 'these mazduur next to my house make sexual noises every dupehr i can''t even sit with my family anymore', '2020-06-10 05:00:00+05', 0, 0, 0, 'localgirlintown', 'https://twitter.com/localgirlintown/status/1270601026865954816');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4b354223-ef53-4243-9d32-49e214968ee7', '', 'صرف میرے لیے نہیں رہنا
تم میرے بعد بھی حسیں رہنا

                 ⁦❤️⁩ pic.twitter.com/RmYERPaKPm', '2020-06-10 05:00:00+05', 0, 0, 0, 'ranjha_of2020', 'https://twitter.com/Ranjha_of2020/status/1270601024617709568');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('61134732-31a6-433e-ad75-452d32ae2902', '', 'بہت خوب تجزیہ کیا ہے', '2020-06-10 05:00:00+05', 0, 0, 0, 'faisalsohailfa1', 'https://twitter.com/FaisalSohailFa1/status/1270601020792541184');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d665ec98-747d-4c51-8759-d49448c67f90', '', 'Mention not', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270601017403547648');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b1b75010-faab-4e07-90ad-77dcfd61cdcc', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270601015843328001');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c9ee4496-dd0c-42ce-beb7-40ff2744dccd', '', 'میرے گاؤں کا دس سال کا تمیور جو گاؤں تو نہیں ہوتا مگر اور نہ ہی مجھے جانتا تھا 

مگر یوٹیوب پر ویڈیوز دیکھ کر فین ہوگیا 😂♥️

کہتا ہے آپ ایبٹ آباد آئے اور ہمارے گھر کیوں نہیں آئے 

پاور آف یوٹیوب 

ایک سہی مگر مخلص ہو یہی بڑی بات ہوتی ہے pic.twitter.com/vbpazB1Oyq', '2020-06-10 05:00:00+05', 0, 0, 0, 'imammarofficial', 'https://twitter.com/ImAmmarOfficial/status/1270601015440617472');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8ae1e9cd-5cc6-49d2-ad24-a0c438891909', '', 'Kash karachi plan k waqat b yahi bat kartay', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270601015365111808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('be2a4e91-80c9-4674-b910-964ce2b1d86b', '', 'یہ ہے نالائق و نا اہل حکومت کا کار نامہ اب اس سے فورا”جان چھڑانا ہوگی', '2020-06-10 05:00:00+05', 0, 0, 0, 'khurshidaawan', 'https://twitter.com/khurshidAawan/status/1270600995555495937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('d0f176f9-da2a-432e-a258-c99a147b22c2', '', 'In sha allah janab....ap dua kary bs', '2020-06-10 05:00:00+05', 0, 0, 0, 'bangashwaji', 'https://twitter.com/BangashWaji/status/1270600978572750849');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b903ddc5-abdb-40dd-82a6-00f03699eafa', '', 'May Allah swt give her complete health..', '2020-06-10 05:00:00+05', 0, 0, 0, 'abbasmalik13', 'https://twitter.com/AbbasMalik13/status/1270600975657709570');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('8ad14bc8-0120-4941-aee3-449f43db0301', '', 'Ok', '2020-06-10 05:00:00+05', 0, 0, 0, 'lacklustersays', 'https://twitter.com/lacklustersays/status/1270600972272877569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('29c06a7b-681d-4491-aa89-04001f350f8a', '', '" جب پوری دنیا آپ کے خلاف کھڑی ہو جائے تو آپ دوسری طرف مُنہ کریں اور سیلفی لے لیں،پھر پوری دنیا آپ کے پیچھے کھڑی ہو گی ۔۔📸

Copy pic.twitter.com/nGkJw2Spjb', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamabad110', 'https://twitter.com/islamabad110/status/1270600941520277505');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7e8adc13-2d1f-4dad-adc6-141ea7b7e749', '', '44444', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600935094566912');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2f514058-29ec-4d98-b21e-5039e850bdd8', '', 'Nope. You need recovered plasma?', '2020-06-10 05:00:00+05', 0, 0, 0, 'saarimmehdi', 'https://twitter.com/SaarimMehdi/status/1270600928203345920');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a5fc482b-4c7e-420b-be66-2464ed9fd220', '', 'Allah de rogh ka', '2020-06-10 05:00:00+05', 0, 0, 0, 'nijatmohmand', 'https://twitter.com/NijatMohmand/status/1270600927586762752');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('677d6110-14a3-42d7-8fe9-77ea9a720bbb', '', '@shoaibi26', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600917767933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('847ae8e6-1d6a-4a48-9f66-96ed2fb39ad5', '', 'رپورٹ دیکھنے کیلئے لنک پر کلک کریں
 https://youtu.be/okejBvTfUJg  pic.twitter.com/vIw4yiq3C1', '2020-06-10 05:00:00+05', 0, 0, 0, 'sportslinkpk92', 'https://twitter.com/sportslinkpk92/status/1270600903196884993');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7d263f3b-5f1a-4254-b990-869d30408409', '', 'Yaddd hai karchi plan crash p kesa jashan manaya tha.. Ham na just phcha knsa mulk ka ha.. Par apka pora mulk khush tha us din.', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600900130807808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f4cfdc63-8d3b-4ef3-aa3e-dbc176848034', '', 'اتنے حجابوں پر تو یہ عالم ہے حسن کا 
کیا حال ہو جو دیکھ لیں پردہ اٹھا کے "ہم" https://twitter.com/RasoolAalia/status/1270210450047762432 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'highblunder', 'https://twitter.com/HighBlunder/status/1270600895705874435');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('57826293-d068-4c88-9b9d-53a1822d6a52', '', ' pic.twitter.com/HZFkJ7lYmR', '2020-06-10 05:00:00+05', 0, 0, 0, 'alibutt25640571', 'https://twitter.com/AliButt25640571/status/1270600887438839808');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f0ab6a4d-d294-4896-b611-7806995f07d7', '', 'awfully demeaning comment -"poor lady knowing English" Its reflective of our societal malice of gender inequality

There are many women experts on all topics, look around. look at  @JinnahInstitute & @tabadlab policy briefs, roundtables, webinars and you would find them.', '2020-06-10 05:00:00+05', 0, 0, 0, 'yazdanifauzia', 'https://twitter.com/yazdanifauzia/status/1270600886662856704');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('703df3c7-9c55-4e2c-b901-24dae652e2c1', '', 'Well love is always blind ❤️ if it''s pure and true love, appearances doesn''t matter', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600879750684673');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0eb25187-6bfc-4628-bbb7-9f9a6029769a', '', '@shoaibi26 

آگ  لگانے  والوں  کو  کہاں  خبر ،،،

🌹🌹🌹🌹👉👉👉👁

رخ  ہواؤں  نے  بدلا  تو  خاک  وہ  بھی ہونگے۔!!#', '2020-06-10 05:00:00+05', 0, 0, 0, 'shoaibi26', 'https://twitter.com/shoaibi26/status/1270600869160144897');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ebf44a7b-7f85-472c-b6d4-4a623614873e', '', 'had me on strings ffs', '2020-06-10 05:00:00+05', 0, 0, 0, 'themohkum', 'https://twitter.com/TheMohkum/status/1270600861870424064');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('daecb983-fbf0-4009-9559-7ccc14de01dd', '', 'آپ سے اتفاق ہے https://twitter.com/nasirshahoffice/status/1270368126069342208 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'rsabbasi2', 'https://twitter.com/RSabbasi2/status/1270600857202110464');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ebda2f12-7f3a-4bad-91a4-c3966d31d5de', '', 'Good question 😂', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600855419523072');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('105944b4-9736-495b-b2fc-cbeb7cbdd6fa', '', 'چھتر مار کر نکالنا پڑے گا۔ تخم خنزیر میں غیرت کہاں۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamirkhan3288', 'https://twitter.com/aamirkhan3288/status/1270600853641101312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('3130e871-5c0b-48df-ad69-0e1c09a1cf00', '', '❣️❣️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600834737463298');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('021eff67-f77e-4de2-83f7-2fce726f2457', '', 'Haha Allah na kara, at least I am promoting their stories in Pak newspaper''s... Itna to mara ehsan ha in par😅😆', '2020-06-10 05:00:00+05', 0, 0, 0, 'furqanraja1122', 'https://twitter.com/furqanraja1122/status/1270600821546405893');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('262c24fe-b89b-42ac-80ac-bff7bdadfff9', '', 'گوجرانوالہ: فائرنگ کے 2 زخمی چل بسے https://taazakhaber.com/urdu/%da%af%d9%88%d8%ac%d8%b1%d8%a7%d9%86%d9%88%d8%a7%d9%84%db%81-%d9%81%d8%a7%d8%a6%d8%b1%d9%86%da%af-%da%a9%db%92-2-%d8%b2%d8%ae%d9%85%db%8c-%da%86%d9%84-%d8%a8%d8%b3%db%92/ …', '2020-06-10 05:00:00+05', 0, 0, 0, 'khabertaaza', 'https://twitter.com/KhaberTaaza/status/1270600806052618241');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6baeafc4-8e48-4200-8cd2-84eb99d0c8c2', '', 'Tora che warpase', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600789279617024');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('07ef5892-576c-4a95-9077-11e54930b62d', '', 'Oo :(', '2020-06-10 05:00:00+05', 0, 0, 0, 'rizvihijjab', 'https://twitter.com/RizviHijjab/status/1270600784305152000');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9fec6f0b-1300-437c-b171-47a18e524da4', '', 'Congo dusky', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600773785837569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f22dde39-f126-441e-806b-9133f90815cf', '', 'کورونا وبا کے باعث پاکستان کی معاشی ترقی کے سفر https://viralpakistan.com/archives/23086 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600771990704128');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('86b8c1e4-87f5-4078-9799-51e17e088574', '', 'Thank you ahmed :)', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600754978586627');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('484d5b2b-a608-4062-8aad-6a8eae412d79', '', 'لسٹ 653 B
لیگی جمعیتی فالو ریٹویٹ 
@Sh_Misbah
@MFAK_12
@Najamkhan175
@m_kashmiri79
@SheikhNoorMJav3
@Rsh628
@Saadull9
@MalikSh87
@Mik5642
@MehmoodAhmedqu2
@Mubashar_12
@idrees700
@ChHassnainAli3
@aftab261970
@AbdulHa20984338
@PmlBibi
@JadoonHazara1
@ab_zz1
@kalamkar7
@Z_R786 pic.twitter.com/KlVHrewKnJ', '2020-06-10 05:00:00+05', 0, 0, 0, 'sh_misbah', 'https://twitter.com/Sh_Misbah/status/1270600754848358401');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('0cef6468-1fcd-41ab-b4ee-445cf33ab9e7', '', 'O Kuch Nahi Milta in Cheezo Sey🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'talhaijaz95', 'https://twitter.com/TalhaIjaz95/status/1270600754777202689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('505925dd-622e-4179-943c-23e436e92c8b', '', '🥵🥵🥵', '2020-06-10 05:00:00+05', 0, 0, 0, 'haadeap', 'https://twitter.com/HaadeaP/status/1270600754026381312');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('434af745-6404-4176-8f3b-02d1f69fcecf', '', 'How do people think they can get away with saying this kind of inane nonsense. I would say I’m numb to this but omg is this jarring .', '2020-06-10 05:00:00+05', 0, 0, 0, 'sophiasaifi', 'https://twitter.com/SophiaSaifi/status/1270600748376694785');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ee963c7e-4ce2-423c-8fb5-8815b800d6a8', '', ' pic.twitter.com/LebjX1avbW', '2020-06-10 05:00:00+05', 0, 0, 0, 'samia_firdous', 'https://twitter.com/samia_firdous/status/1270600742303399937');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('25cb72b9-bd3d-4df0-b4b8-5317ebfc0328', '', ' pic.twitter.com/5Bwc7JGxNC', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600740290080769');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f3306395-b770-4b77-8916-22761641de14', '', 'phely my follow back', '2020-06-10 05:00:00+05', 0, 0, 0, 'malik111rafiq', 'https://twitter.com/Malik111Rafiq/status/1270600721877086208');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('76f374b0-cbae-48b3-a6b7-3bb09624fe07', '', 'YOURE THE CUTEST 🤧🤧
you cant change my mind, period', '2020-06-10 05:00:00+05', 0, 0, 0, 'bekindplsandtks', 'https://twitter.com/bekindplsandtks/status/1270600721868771329');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('cd042a27-699e-4b25-956e-ac3137a4d0bb', '', 'A friend did it and got 12 month og ultimate like that how does that work?', '2020-06-10 05:00:00+05', 0, 0, 0, 'sarimmuhammad', 'https://twitter.com/SarimMuhammad/status/1270600712628699136');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('128d5530-60c7-4ea2-bb54-9ad937fe500b', '', 'hii 🥺', '2020-06-10 05:00:00+05', 0, 0, 0, 'awkwardaloo', 'https://twitter.com/awkwardaloo/status/1270600701664808960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4fb213d1-afe2-4038-af0f-9d779d0c7671', '', 'MashaAllah great 🌸
Allah pak sb k parents ko khudh and salamt rakhen ameen
The only pure love 💕', '2020-06-10 05:00:00+05', 0, 0, 0, 'amar61955819', 'https://twitter.com/Amar61955819/status/1270600700771340288');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('ef158b54-8f64-4195-92a2-ba4a2e0d1ed7', '', 'Ohhh acha 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'shafiqu01907958', 'https://twitter.com/ShafiqU01907958/status/1270600699433361408');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('220a1fc1-1065-426c-bad1-44c28a4c4690', '', 'Good morning arsalan.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600697000734720');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('5369a07f-d767-4e5c-8e48-4f021940bab7', '', '❤️❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'laiba2876', 'https://twitter.com/Laiba2876/status/1270600696434483201');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('03adf236-1109-4df3-ac9e-8744abd06f3b', '', '🤓', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600693037096967');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('13eed368-f59c-4586-9027-76cfa6d85def', '', 'آپ کے پاس کتنے وسائل ہیں؟ 

سو میں سے پانچ کا مطلب ہے پانچ فیصد آبادی! 

ایک کروڑ لوگ؟ https://twitter.com/geonews_urdu/status/1270599191467896834 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'husnainjamal', 'https://twitter.com/HusnainJamal/status/1270600688763092992');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('debad15a-f2ba-4448-b655-56a24de298e2', '', 'You look great honey, don''t let a couple of haters or trolls take that from you. Keep smiling💓', '2020-06-10 05:00:00+05', 0, 0, 0, 'sahar_ashfaq', 'https://twitter.com/sahar_ashfaq/status/1270600682534514689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6ec35a8e-333e-412a-bd35-3f3a66c0f518', '', 'When a Back Bencher Solves a Tough Problem in Front of Whole Class On White Board..

Other Back Benchers: pic.twitter.com/16PM0fRAIW', '2020-06-10 05:00:00+05', 0, 0, 0, 'dequreshi', 'https://twitter.com/DeQureshi/status/1270600664138354689');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('bb778d9a-26c5-456e-8be3-391c9d7b59fa', '', 'یہ قرآن وہ رستہ دکھاتا ہے جو سب سے سیدھا ہے اور مومنوں کو جو نیک عمل کرتے ہیں بشارت دیتا ہے کہ اُن کے لئے اجر عظیم ہے"، سورة الإسراء ﴿۹﴾

#wednesdaymorning
#wednesdaymorning
#wednesdaymorning', '2020-06-10 05:00:00+05', 0, 0, 0, 'adv_shahfahad', 'https://twitter.com/Adv_ShahFahad/status/1270600662309580801');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2107f9c4-89d1-42f4-b460-9e1b438a6aa2', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600660334100480');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('13473536-4b96-42d2-af4e-62f59f07a6e3', '', 'And we as a Muslim apologize on this pervert''s behavior towards you. 🙏', '2020-06-10 05:00:00+05', 0, 0, 0, 'khanmubeenahmad', 'https://twitter.com/KhanMubeenAhmad/status/1270600658178191361');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b1679145-145b-47e0-a0cb-5f586402e978', '', 'Dn', '2020-06-10 05:00:00+05', 0, 0, 0, 'itx_danny9', 'https://twitter.com/itx_Danny9/status/1270600654361427968');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('2b86b180-0d95-4fda-ad78-6eb3d4b38cb7', '', 'No one 😔 https://twitter.com/eshu_dead/status/1270471475930292225 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'sufijaann', 'https://twitter.com/sufijaann/status/1270600651840671744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('86972ca4-5b0e-4339-8156-4c7c2354316c', '', 'Ali 🤗', '2020-06-10 05:00:00+05', 0, 0, 0, 'paklover913', 'https://twitter.com/paklover913/status/1270600648443256834');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7ea9e1dd-0f80-4e50-a39a-929b4f44edfd', '', 'This is good and wise decision to appointed @AmbassadorSadiq as special representative for Afghanistan because being an amb, he was widely respected in Afghanistan and still Afghan leaders respect him, thats why Afghan FM also warmly welcomed his appointment. https://twitter.com/miqazi/status/1270597229120753664 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'islamudinsajid', 'https://twitter.com/islamudinsajid/status/1270600640176291842');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e8b8d585-8f44-4996-b935-939c1fdcddc0', '', 'عشقِ کامل جس کو عزت بخش دے
ہم نہیں بخش سکتے🙏🏻', '2020-06-10 05:00:00+05', 0, 0, 0, 'nooreyshah', 'https://twitter.com/NooreyShah/status/1270600637076639744');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4be1756c-3848-41bd-87d3-819106e30735', '', 'Thank you Ik.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600630466490368');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('55e0ec00-8175-42ec-b0fe-c0760ee1ebd0', '', 'Hahaha 😁', '2020-06-10 05:00:00+05', 0, 0, 0, 'aaab_e_hayat', 'https://twitter.com/Aaab_e_hayat/status/1270600620047831045');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('97ddd3fd-b9b7-43de-8233-351ad995fbfe', '', '😂😑😂😑', '2020-06-10 05:00:00+05', 0, 0, 0, 'bhaibutnotyours', 'https://twitter.com/bhaibutnotyours/status/1270600616516206593');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('97c68d97-0f6c-43df-9cea-69a82a38ce29', '', 'Searching really.', '2020-06-10 05:00:00+05', 0, 0, 0, 'sea_goat', 'https://twitter.com/sea_goat/status/1270600609662676994');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('25175b17-3cce-4221-870a-50d868a2157a', '', 'Well said and thank you for your beautiful words. Good day.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600590712811520');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c8ed9faf-418c-4a88-9567-07150b318d8a', '', 'Turkey begins constructing modern warship for Pakistan. #pakistan https://www.dawn.com/news/1562426/turkey-begins-constructing-modern-warship-for-pakistan …', '2020-06-10 05:00:00+05', 0, 0, 0, 'pakistaninews', 'https://twitter.com/pakistaninews/status/1270600590607945728');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b698aac3-eae1-4e93-a689-add5f58c1d26', '', 'Great development Alhamdulilah ,From day one we are listening this but they thought to practise it now, anyhow der ayy durust ayy', '2020-06-10 05:00:00+05', 0, 0, 0, 'ahsansid41', 'https://twitter.com/AhsanSid41/status/1270600589781721088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('82c55945-932b-4617-8991-754c1018fb47', '', 'خوف کا ختم ہونا عقل کے حصول کی نشانی ہے خوف میں مبتلا شخص کبھی بھی دانا نہیں ہوسکتا 
برٹنڈ رسل
شکریہ منظور پشتین pic.twitter.com/XE0VxSD8s6', '2020-06-10 05:00:00+05', 0, 0, 0, 'scorpion_junaid', 'https://twitter.com/scorpion_junaid/status/1270600583905521665');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1d6b9ebc-145e-4704-8b00-9f5f0b3cbd6a', '', 'خان کو اپنا کہنے کا بہانہ چاہیے بس۔', '2020-06-10 05:00:00+05', 0, 0, 0, 'sam18071991', 'https://twitter.com/Sam18071991/status/1270600578285142018');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a790db9c-2861-4b91-a378-e60b89d962e8', '', 'Khty hain k awam pr hukmran un k bech m sy he chuny jaty hain 
Either you call him corrupt or public is corrupt k un m sy b corrupt e un pr muslt key jaty hain 
Whosoever is leader , is from nation. Or zalim hukmran qoum k lye saxa hoty hain', '2020-06-10 05:00:00+05', 0, 0, 0, 'nfak_addicted', 'https://twitter.com/NFAK_addicted/status/1270600556864778240');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('212f1aa0-408f-4ac1-84be-8c9fedfca6e9', '', 'How merciful Allah is! #Reminders #socialdiarymagazine #QuranSayings #QuranicVerses  https://www.instagram.com/p/CBPoCe8gpex/?igshid=cdr1j3l1za76 …', '2020-06-10 05:00:00+05', 0, 0, 0, 'socialdiarymagz', 'https://twitter.com/SocialDiaryMagz/status/1270600556722216960');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b4be5c75-7e07-423e-ab4e-581610a0c717', '', 'Aurat ki izat karna aik izatdar mard ki nishani hai❤', '2020-06-10 05:00:00+05', 0, 0, 0, 'aseelmadani_', 'https://twitter.com/aseelmadani_/status/1270600554780246016');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9a807293-1849-4dfc-a61d-89c0e12aba5e', '', 'Tum pr hi gaya hai na', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600544017625088');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b788e09e-7b31-43f3-a4e0-29c3c94d42f6', '', '@PTCLOfficial  Gatiya taeern internet pata nai kesy sunty hain yeh log k asar he nai hota in ko...complain karo to thori dair tek jasy he ap ne #1218 pr 1 press kia nai again wo he problem suru', '2020-06-10 05:00:00+05', 0, 0, 0, 'iam_raajput', 'https://twitter.com/iam_raajput/status/1270600539907260416');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4862acd1-74a4-42a1-8712-5cf281d33b88', '', 'کشمیریوں کو بھارتی فوج نے نام نہاد سرچ آپریشن کی آڑ میں شہید کیا ، کشمیر میڈیا سروس', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600539378724864');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('b9dd1d2f-fc5a-44c9-97aa-8e3fd225bf19', '', 'مقبوضہ کشمیر میں بھارتی دہشت  گردی جاری،ضلع شوپیاں میں 3کشمیری شہید', '2020-06-10 05:00:00+05', 0, 0, 0, 'humnews_urdu', 'https://twitter.com/humnews_urdu/status/1270600537726160898');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('a955607c-14d0-4072-b9e8-4899e5b23922', '', 'سرکاری گھروں پر قبضوں سے متعلق ازخودنوٹس کیس:چیف جسٹس https://viralpakistan.com/archives/23084 ', '2020-06-10 05:00:00+05', 0, 0, 0, 'viralpakistan2', 'https://twitter.com/ViralPakistan2/status/1270600515399933952');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9d87881a-0d51-4cec-be9a-3d9d90f50aed', '', 'Same as our journalist and journalism claims that they are best in the world', '2020-06-10 05:00:00+05', 0, 0, 0, 'sherafzal2020', 'https://twitter.com/SherAfzal2020/status/1270600515001483265');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('400eaa5e-1409-420f-8203-f5a95eb7cd40', '', 'Good day Azb.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600486421397504');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9d7a8b9a-d48c-44c6-a84b-bf31c78a83e2', '', 'My pleasure.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600455295586304');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('9ccd0184-b9f6-4edc-bbaf-24f56b71df14', '', 'Hum sy murad main (only me)
Ik to ap alfaz daikhti hain 🤭
Emotions daikhyn ☹️', '2020-06-10 05:00:00+05', 0, 0, 0, 'l0wercase_guy', 'https://twitter.com/l0wercase_guy/status/1270600441840181254');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('663d9656-4704-4383-a9af-f06075e66b28', '', 'When your intentions are pure, you don''t lose anyone. People lose you.', '2020-06-10 05:00:00+05', 0, 0, 0, 'aamnah_j', 'https://twitter.com/Aamnah_J/status/1270600424131833856');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e7e26014-cf84-483d-bb83-d6c22062ab29', '', 'Khair hai new lay laina 😂', '2020-06-10 05:00:00+05', 0, 0, 0, 'just_call_usman', 'https://twitter.com/just_call_usman/status/1270600409598615553');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('4646a574-6a31-48ad-b347-0f02005ec767', '', 'i like all of u but :( idk', '2020-06-10 05:00:00+05', 0, 0, 0, 'youneverdid1', 'https://twitter.com/youneverdid1/status/1270600391412064256');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('02dc6505-ea37-404c-8926-643c35f99b2e', '', 'Good morning.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600377554042880');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('7fe7ed26-a317-4be9-a53b-fa8eb470b14c', '', '"The Great Hack" is a documentary about how public opinion can be manufactured by vested interests. A must see who wants to know about malicious campaigns on social media agianst IK. https://www.youtube.com/watch?v=iX8GxLP1FHo …', '2020-06-10 05:00:00+05', 0, 0, 0, 'saeedbabar', 'https://twitter.com/saeedbabar/status/1270600377394749446');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('6c2b0778-10ab-47d3-8962-e08bc34ba5cf', '', 'YOUUUU ❤️', '2020-06-10 05:00:00+05', 0, 0, 0, 'sidrarare', 'https://twitter.com/sidrarare/status/1270600373930274817');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('34f80656-f64e-4047-bd62-2b05c5ad43c3', '', 'Exactly', '2020-06-10 05:00:00+05', 0, 0, 0, 'suhaib165', 'https://twitter.com/suhaib165/status/1270600372193824768');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('98b2ed1e-4a75-4a07-bf5b-1bfb8e6dc291', '', ' pic.twitter.com/ffnb4tNyQh', '2020-06-10 05:00:00+05', 0, 0, 0, 'rohanmalik_pk', 'https://twitter.com/rohanmalik_pk/status/1270600368263741440');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('f793b2fc-891d-409b-b27c-f5495d9ef1e7', '', 'سعودی عرب اور ایران کی جس نے صلح کروائی تھی، 
پاکستان میں پیٹرول پمپ والے اس کی بات نہیں مان رہے۔
(منقول)', '2020-06-10 05:00:00+05', 0, 0, 0, 'jaabus2000', 'https://twitter.com/jaabus2000/status/1270600358658785283');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('c096b8bd-1bee-4cbe-bdbb-740f26aae92b', '', 'Queeeeeeeeeeen😘😍♥️', '2020-06-10 05:00:00+05', 0, 0, 0, 'aleenayyyyyy', 'https://twitter.com/aleenayyyyyy/status/1270600358054825986');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('1741d091-5cfd-4060-aa1c-937a54c659db', '', '@mubinasays  sooo meeee🥺🥺🥺💔', '2020-06-10 05:00:00+05', 0, 0, 0, 'awais09870301', 'https://twitter.com/Awais09870301/status/1270600355802382337');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('36c2226a-76d1-465e-95d2-37534b12cbc1', '', 'JazakAllah.', '2020-06-10 05:00:00+05', 0, 0, 0, '27thletterrr', 'https://twitter.com/27thLetterrr/status/1270600344968531969');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('96ebdeac-762e-44b6-bc5f-fd13e4a62e1e', '', 'khota', '2020-06-10 05:00:00+05', 0, 0, 0, 'd_illusionist_', 'https://twitter.com/D_illusionist_/status/1270600341512429569');
INSERT INTO public.posts (id, title, body, created_at, upvotes, downvotes, toxicity_score, author, link) VALUES ('e3a4e411-935a-4df9-b70e-d05f19599797', '', 'Are you thinking to get #Rich? No problem. Learn the ways to get rich easily. Read Book “Ameer Baap Ghareeb Baap” by Robert Kiosaki #LUMS #NUST #UoG #SZABIST #NUML #IBA #Karachi #Pakistancricket #UET #PTI #PMLN #PPP #Lahore Order at Daraz:  https://ift.tt/2XQj1Lb ', '2020-06-10 05:00:00+05', 0, 0, 0, 'eastbookbank1', 'https://twitter.com/EastBookBank1/status/1270600335833300993');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.users DISABLE TRIGGER ALL;

INSERT INTO public.users (id, first_name, last_name, email, password_hash, locked_at, failed_login_attempts, is_confirmed, token) VALUES ('e113c46d-a5a8-4494-ac35-44f514d7ab64', 'Other', 'Test', 'other@test.com', 'sha256|17|0slKBw9oFkW2c78DT+81oQ==|mtuLZf+wq2xGGpb6kESK4dX+vnQoOedKMkdpfxFJ7zY=', NULL, 0, true, '');
INSERT INTO public.users (id, first_name, last_name, email, password_hash, locked_at, failed_login_attempts, is_confirmed, token) VALUES ('f79666c2-59e9-4f08-9f0f-bf6be58d229a', 'Test', 'User', 'test@test.com', 'sha256|17|9CUyv+F8wIeP0jlm/UeAGw==|3O066UKl5eC+oc07hGJ3oiII5H+SbWjIoXudwL+r8oE=', NULL, 0, true, '');


ALTER TABLE public.users ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body, created_at, user_id) VALUES ('98617b20-4d7a-4132-8672-8f3a20ea2a12', 'd7cb1a02-fd7b-47cb-9171-80ba6dce63b6', 'Other', 'winner takes all', '2021-01-10 16:59:23.058759+05', 'e113c46d-a5a8-4494-ac35-44f514d7ab64');
INSERT INTO public.comments (id, post_id, author, body, created_at, user_id) VALUES ('5eac017c-8d0b-4dc4-8487-0d4e7f0b70a9', '13fe1c6a-4b7a-484a-bf30-1df570e78569', 'Other', 'a new comment OR NOT', '2021-01-10 20:23:24.192253+05', 'e113c46d-a5a8-4494-ac35-44f514d7ab64');
INSERT INTO public.comments (id, post_id, author, body, created_at, user_id) VALUES ('bf5ddce3-eb41-47b6-b382-4626a960fc45', '13fe1c6a-4b7a-484a-bf30-1df570e78569', 'Other', 'OH REALLY ANOTHER COMMENT', '2021-01-10 20:23:45.170509+05', 'e113c46d-a5a8-4494-ac35-44f514d7ab64');
INSERT INTO public.comments (id, post_id, author, body, created_at, user_id) VALUES ('ca495c5e-412b-4f54-86e7-523f127c374a', 'c9c31356-d383-45c1-9245-15ac6f6a39f5', 'Other', 'very nice click', '2021-01-11 10:14:45.345074+05', 'e113c46d-a5a8-4494-ac35-44f514d7ab64');
INSERT INTO public.comments (id, post_id, author, body, created_at, user_id) VALUES ('396495c6-fa49-4506-9519-01075d16d755', 'c9c31356-d383-45c1-9245-15ac6f6a39f5', 'Other', 'make more comments lel', '2021-01-11 10:15:10.930284+05', 'e113c46d-a5a8-4494-ac35-44f514d7ab64');
INSERT INTO public.comments (id, post_id, author, body, created_at, user_id) VALUES ('4ce97b57-70f1-4b71-b84b-8c40d2e7f78a', '142e001c-7abf-495e-bf5a-c23b783ac55b', 'Other', 'throw fjkdjfal', '2021-01-11 20:54:29.027929+05', 'e113c46d-a5a8-4494-ac35-44f514d7ab64');
INSERT INTO public.comments (id, post_id, author, body, created_at, user_id) VALUES ('5110ca15-6c22-4878-a9c8-63e8ab0b0bd4', 'dfabd86f-7a1d-4cdd-913f-bd5ce7247bba', 'Test', 'dflsjdlkkj;fsda', '2021-01-14 11:10:36.078289+05', 'f79666c2-59e9-4f08-9f0f-bf6be58d229a');
INSERT INTO public.comments (id, post_id, author, body, created_at, user_id) VALUES ('91efa1cb-378c-429b-b472-3a68395e07f8', '7c5b9ac9-3f3c-4831-b4b3-09e2cb51beaf', 'Test', 'this is a comment', '2021-01-14 11:44:25.03216+05', 'f79666c2-59e9-4f08-9f0f-bf6be58d229a');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


ALTER TABLE public.predictions DISABLE TRIGGER ALL;



ALTER TABLE public.predictions ENABLE TRIGGER ALL;


ALTER TABLE public.uploads DISABLE TRIGGER ALL;

INSERT INTO public.uploads (id, file_url) VALUES ('36adb293-163b-4a04-b744-dea1c8bc7ff3', '/uploads/uploads/00000000-0000-0000-0000-000000000000/picture.csv');


ALTER TABLE public.uploads ENABLE TRIGGER ALL;


ALTER TABLE public.votes DISABLE TRIGGER ALL;

INSERT INTO public.votes (id, user_id, post_id) VALUES ('3254c468-5a88-459e-a5b3-281dfff0a152', 'e113c46d-a5a8-4494-ac35-44f514d7ab64', '13fe1c6a-4b7a-484a-bf30-1df570e78569');
INSERT INTO public.votes (id, user_id, post_id) VALUES ('f3c496c6-a530-4e2b-8b6d-e2013c379b44', 'e113c46d-a5a8-4494-ac35-44f514d7ab64', '7f3714e5-f11a-4751-a870-e9906a313ae9');
INSERT INTO public.votes (id, user_id, post_id) VALUES ('4006212e-ab13-4b14-9f7a-748fac15f430', 'e113c46d-a5a8-4494-ac35-44f514d7ab64', '56c08d7f-ba28-4e5e-a1c1-2dc8c8bfa18e');
INSERT INTO public.votes (id, user_id, post_id) VALUES ('3abe5733-da48-4374-a7c3-2560752e721f', 'e113c46d-a5a8-4494-ac35-44f514d7ab64', 'c9c31356-d383-45c1-9245-15ac6f6a39f5');
INSERT INTO public.votes (id, user_id, post_id) VALUES ('acf7f6b9-f294-4eef-98d9-c126a44eba6c', 'e113c46d-a5a8-4494-ac35-44f514d7ab64', '142e001c-7abf-495e-bf5a-c23b783ac55b');
INSERT INTO public.votes (id, user_id, post_id) VALUES ('592846f2-0cf7-46be-9921-f374a4f7fce2', 'f79666c2-59e9-4f08-9f0f-bf6be58d229a', 'dfabd86f-7a1d-4cdd-913f-bd5ce7247bba');
INSERT INTO public.votes (id, user_id, post_id) VALUES ('1d84364f-cf9e-4b49-97ff-d885caf5decf', 'f79666c2-59e9-4f08-9f0f-bf6be58d229a', '3a88e337-0acc-46e8-8da8-b17667901091');
INSERT INTO public.votes (id, user_id, post_id) VALUES ('01ea87b6-3067-48cb-a13f-410c895c15e5', 'f79666c2-59e9-4f08-9f0f-bf6be58d229a', 'c938ee1a-4b4b-4dac-b67c-95b519d08532');
INSERT INTO public.votes (id, user_id, post_id) VALUES ('50176da6-288b-4f56-bbab-7d54dc1f72a4', 'f79666c2-59e9-4f08-9f0f-bf6be58d229a', '13aa3af6-536e-47b7-a38c-cfe6fe646ae5');
INSERT INTO public.votes (id, user_id, post_id) VALUES ('a9c495ed-e69a-441f-a7b1-2e69691f3190', 'f79666c2-59e9-4f08-9f0f-bf6be58d229a', 'd523445b-abea-4712-a7f2-cceda097cec8');
INSERT INTO public.votes (id, user_id, post_id) VALUES ('c44b04d3-b571-4c66-95cd-21a79dd53a21', 'f79666c2-59e9-4f08-9f0f-bf6be58d229a', '49844555-69d7-4308-946e-4d677059598d');
INSERT INTO public.votes (id, user_id, post_id) VALUES ('e09f4a24-596a-47a6-a02d-7e5abdfd192a', 'f79666c2-59e9-4f08-9f0f-bf6be58d229a', '7c5b9ac9-3f3c-4831-b4b3-09e2cb51beaf');


ALTER TABLE public.votes ENABLE TRIGGER ALL;


