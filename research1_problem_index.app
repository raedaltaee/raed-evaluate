<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>تحديات الإشراف البحثي: تحليل ضعف التواصل</title>
تصميم المهندس "رائد ابراهيم خليل" "ماجستير همدسة اتصالات" "ديوان الوقف الشيعي"
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Tajawal:wght@400;500;700&display=swap" rel="stylesheet">
    
    <!-- Chosen Palette: Academic Calm -->
    <!-- Application Structure Plan: A single-page, scrolling application with a sticky navigation header for intuitive access to key sections. The structure is thematic, not linear, designed to guide the user from understanding the problem to exploring solutions. It starts with defining the core issue ('Weak Communication'), moves to an interactive exploration of its 'Causes' (using a tabbed interface for Supervisor/Student/Systemic factors) and 'Consequences' (visualized with a radar chart), and culminates in a practical, actionable 'Solutions' section (presented as interactive strategy cards). This user flow is chosen to transform a dense report into an engaging learning journey, prioritizing clarity and user discovery over the original document's sequential layout. -->
    <!-- Visualization & Content Choices: Content is organized into interactive components to enhance understanding. Report Info: Table 1 (Deficiencies & Impacts) -> Goal: Compare -> Viz: Interactive Bar Chart (Chart.js) -> Interaction: User selects a deficiency from a dropdown to see its impact visualized, making the cause-and-effect relationship clear. Report Info: Consequences section text -> Goal: Show relationships -> Viz: Radar Chart (Chart.js) -> Interaction: Static but powerful visual showing how weak communication damages multiple areas (progress, wellbeing, etc.) simultaneously. Report Info: Table 2 (Strategies) -> Goal: Organize & Inform -> Presentation: Interactive HTML/CSS Cards -> Interaction: Users can click to expand cards within categories, revealing detailed strategies. This avoids overwhelming the user and promotes focused exploration. Report Info: Causes -> Goal: Organize -> Presentation: Tabbed HTML/CSS layout -> Interaction: Clicking tabs (Supervisor/Student/Systemic) filters the content, allowing users to delve into specific areas of interest. This structure breaks down complex information into manageable chunks. All diagrams are built with HTML/CSS and Unicode icons, not images. -->
    <!-- CONFIRMATION: NO SVG graphics used. NO Mermaid JS used. -->

    <style>
        body {
            font-family: 'Tajawal', sans-serif;
            scroll-behavior: smooth;
        }
        .active-tab {
            border-bottom-color: #10B981;
            color: #10B981;
        }
        .chart-container {
            position: relative;
            width: 100%;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
            height: 350px;
            max-height: 40vh;
        }
        @media (min-width: 768px) {
            .chart-container {
                height: 400px;
            }
        }
        .accordion-content {
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.3s ease-in-out;
        }
    </style>
</head>
<body class="bg-gray-50 text-gray-800">

    <header class="bg-white/80 backdrop-blur-md shadow-sm sticky top-0 z-50">
        <nav class="container mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex items-center justify-between h-16">
                <div class="flex-shrink-0">
                    <h1 class="text-xl font-bold text-gray-800">الإشراف البحثي</h1>
                </div>
                <div class="hidden md:block">
                    <div class="ml-10 flex items-baseline space-x-4 space-x-reverse">
                        <a href="#problem" class="text-gray-600 hover:text-green-600 px-3 py-2 rounded-md text-sm font-medium">المشكلة</a>
                        <a href="#causes" class="text-gray-600 hover:text-green-600 px-3 py-2 rounded-md text-sm font-medium">الأسباب</a>
                        <a href="#consequences" class="text-gray-600 hover:text-green-600 px-3 py-2 rounded-md text-sm font-medium">العواقب</a>
                        <a href="#solutions" class="text-gray-600 hover:text-green-600 px-3 py-2 rounded-md text-sm font-medium">الحلول</a>
                        <a href="#interactive" class="text-gray-600 hover:text-green-600 px-3 py-2 rounded-md text-sm font-medium">تحليل تفاعلي</a>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <main class="container mx-auto px-4 sm:px-6 lg:px-8 py-8 md:py-12">

        <section id="intro" class="text-center mb-16">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">تحديات التواصل في الإشراف على الدراسات العليا</h2>
            <p class="max-w-3xl mx-auto text-lg text-gray-600">
                يحدد هذا التطبيق التفاعلي "ضعف التواصل" كخطأ حاسم في الإشراف البحثي. استكشف أسبابه العميقة، وعواقبه الوخيمة، واستراتيجيات فعالة للتغلب عليه، من أجل تعزيز بيئة بحثية أكثر إنتاجية ودعمًا.
            </p>
        </section>

        <section id="problem" class="mb-16 scroll-mt-20">
            <div class="bg-white p-8 rounded-xl shadow-lg">
                <h3 class="text-2xl font-bold mb-6 text-center text-gray-800">الخطأ المحدد: أوجه ضعف التواصل</h3>
                <p class="text-center text-gray-600 mb-8">
                    يتجلى ضعف التواصل في سياق الإشراف بأشكال متعددة تتجاوز مجرد نقص الاتصال. هو ليس مشكلة واحدة، بل طيف من أوجه القصور التي تخلق بيئة من عدم اليقين والقلق للطالب. استكشف الأوجه المختلفة أدناه.
                </p>
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <div class="bg-gray-100 p-6 rounded-lg text-center">
                        <span class="text-4xl mb-3 block">🗓️</span>
                        <h4 class="font-bold text-lg mb-2">اجتماعات غير منتظمة</h4>
                        <p class="text-sm text-gray-600">اجتماعات غير كافية أو متقطعة تترك الطالب يشعر بالضياع وعدم الدعم.</p>
                    </div>
                    <div class="bg-gray-100 p-6 rounded-lg text-center">
                        <span class="text-4xl mb-3 block">❓</span>
                        <h4 class="font-bold text-lg mb-2">تغذية راجعة غامضة</h4>
                        <p class="text-sm text-gray-600">ملاحظات غير واضحة أو قاسية أو غير متكررة تسبب الارتباك وتثبط العزيمة.</p>
                    </div>
                    <div class="bg-gray-100 p-6 rounded-lg text-center">
                        <span class="text-4xl mb-3 block">🎯</span>
                        <h4 class="font-bold text-lg mb-2">توقعات غير واضحة</h4>
                        <p class="text-sm text-gray-600">توقعات متغيرة باستمرار تؤدي إلى إهدار الجهد والشعور بعدم اليقين.</p>
                    </div>
                    <div class="bg-gray-100 p-6 rounded-lg text-center">
                        <span class="text-4xl mb-3 block"> unresponsive </span>
                        <h4 class="font-bold text-lg mb-2">صعوبة الوصول</h4>
                        <p class="text-sm text-gray-600">تجاهل رسائل البريد الإلكتروني وعدم التوافر، مما يوحي بأن الطالب ليس أولوية.</p>
                    </div>
                     <div class="bg-gray-100 p-6 rounded-lg text-center">
                        <span class="text-4xl mb-3 block"> unidirectional </span>
                        <h4 class="font-bold text-lg mb-2">تواصل أحادي الاتجاه</h4>
                        <p class="text-sm text-gray-600">علاقة هرمية تمنع الحوار المفتوح وتخنق الأفكار المبتكرة.</p>
                    </div>
                    <div class="bg-gray-100 p-6 rounded-lg text-center">
                        <span class="text-4xl mb-3 block"> disrespect </span>
                        <h4 class="font-bold text-lg mb-2">غياب الاحترام</h4>
                        <p class="text-sm text-gray-600">سلوك غير مهني أو تحيز يدمر الثقة ويخلق بيئة سامة.</p>
                    </div>
                </div>
            </div>
        </section>

        <section id="causes" class="mb-16 scroll-mt-20">
             <div class="bg-white p-8 rounded-xl shadow-lg">
                <h3 class="text-2xl font-bold mb-6 text-center text-gray-800">تحليل متعمق: كشف أسباب انهيار التواصل</h3>
                <p class="text-center text-gray-600 mb-8">
                    يعود ضعف التواصل إلى تداخل معقد من العوامل المتعلقة بالمشرف والطالب والنظام الأكاديمي نفسه. اختر فئة لاستكشاف الأسباب الجذرية التي تساهم في هذه المشكلة.
                </p>
                <div class="border-b border-gray-200 mb-6">
                    <nav class="-mb-px flex justify-center space-x-6 space-x-reverse" aria-label="Tabs">
                        <button class="tab-btn whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm active-tab" data-tab="supervisor">عوامل متعلقة بالمشرف</button>
                        <button class="tab-btn whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm text-gray-500 hover:text-gray-700 hover:border-gray-300" data-tab="student">عوامل متعلقة بالطالب</button>
                        <button class="tab-btn whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm text-gray-500 hover:text-gray-700 hover:border-gray-300" data-tab="systemic">عوامل علائقية ونظامية</button>
                    </nav>
                </div>
                <div id="supervisor-content" class="tab-content grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div class="bg-gray-50 p-4 rounded-lg"><strong>نقص إمكانية الوصول:</strong> عدم الاستجابة أو التوافر يترك الطلاب يشعرون بالعزلة.</div>
                    <div class="bg-gray-50 p-4 rounded-lg"><strong>أنماط إشراف غير فعالة:</strong> الإدارة التفصيلية تخنق الإبداع، والإشراف الغائب يسبب الضياع.</div>
                    <div class="bg-gray-50 p-4 rounded-lg"><strong>عدم كفاية التدريب:</strong> نقص المهارات في تقديم التغذية الراجعة البناءة أو حل النزاعات.</div>
                    <div class="bg-gray-50 p-4 rounded-lg"><strong>السلوك غير المهني:</strong> التنمر أو التحيز يدمر الثقة ويغلق قنوات التواصل.</div>
                    <div class="bg-gray-50 p-4 rounded-lg"><strong>الإجهاد الشخصي:</strong> عدم الاتساق في السلوك بسبب ضغوط شخصية يؤثر على ثقة الطالب.</div>
                </div>
                <div id="student-content" class="tab-content hidden grid grid-cols-1 md:grid-cols-2 gap-4">
                     <div class="bg-gray-50 p-4 rounded-lg"><strong>التردد في التعبير:</strong> الخوف من طرح الأسئلة أو تحدي المشرف بسبب الاختلافات الثقافية أو الشخصية.</div>
                     <div class="bg-gray-50 p-4 rounded-lg"><strong>صعوبة تلقي النقد:</strong> اعتبار التغذية الراجعة هجومًا شخصيًا بدلاً من فرصة للنمو.</div>
                     <div class="bg-gray-50 p-4 rounded-lg"><strong>نقص الالتزام بالعمل:</strong> عدم الاستجابة أو التحضير للاجتماعات يخلق فجوات في التواصل من جانب الطالب.</div>
                </div>
                <div id="systemic-content" class="tab-content hidden grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div class="bg-gray-50 p-4 rounded-lg"><strong>توقعات غير واضحة:</strong> عدم وجود اتفاق واضح وموثق حول الأدوار والمسؤوليات.</div>
                    <div class="bg-gray-50 p-4 rounded-lg"><strong>نقص الاحترام والثقة:</strong> العلاقة التي تفتقر للقيم المشتركة والانفتاح تؤثر سلبًا على التواصل.</div>
                    <div class="bg-gray-50 p-4 rounded-lg"><strong>الاختلافات الثقافية:</strong> سوء فهم ناتج عن اختلاف أساليب التواصل بين الثقافات.</div>
                    <div class="bg-gray-50 p-4 rounded-lg"><strong>اختلال توازن القوى:</strong> الطبيعة الهرمية للعلاقة قد تمنع الحوار المفتوح والصادق.</div>
                     <div class="bg-gray-50 p-4 rounded-lg"><strong>غياب الهياكل الرسمية:</strong> نقص العمليات الموثقة لتتبع التقدم وتقديم التغذية الراجعة.</div>
                </div>
            </div>
        </section>

        <section id="consequences" class="mb-16 scroll-mt-20">
            <div class="bg-white p-8 rounded-xl shadow-lg">
                <h3 class="text-2xl font-bold mb-6 text-center text-gray-800">الأثر المتتالي لضعف التواصل</h3>
                 <p class="text-center text-gray-600 mb-8">
                    انهيار التواصل لا يؤثر على جانب واحد فقط، بل يمتد ليقوض مسعى البحث بأكمله. يوضح الرسم البياني أدناه كيف يتسبب ضعف التواصل في سلسلة من العواقب الوخيمة على تقدم الطالب ورفاهيته والعلاقة الإشرافية.
                </p>
                <div class="chart-container">
                    <canvas id="consequencesChart"></canvas>
                </div>
            </div>
        </section>

        <section id="solutions" class="mb-16 scroll-mt-20">
             <div class="bg-white p-8 rounded-xl shadow-lg">
                <h3 class="text-2xl font-bold mb-6 text-center text-gray-800">استراتيجيات استباقية للتغلب على التحديات</h3>
                 <p class="text-center text-gray-600 mb-8">
                    تتطلب معالجة إخفاقات التواصل نهجًا متعدد الأوجه. استكشف الاستراتيجيات القابلة للتنفيذ أدناه، والتي تدمج العمليات المنظمة وتنمية المهارات والالتزام بتعزيز بيئة داعمة ومهنية.
                </p>
                <div class="space-y-4">
                    <div class="accordion-item border border-gray-200 rounded-lg">
                        <button class="accordion-header w-full flex justify-between items-center text-right p-4 font-semibold text-gray-700 bg-gray-100 hover:bg-gray-200 rounded-t-lg">
                            <span>تحديد التوقعات الواضحة والحفاظ عليها</span>
                            <span class="transform transition-transform duration-300">▼</span>
                        </button>
                        <div class="accordion-content">
                            <ul class="p-4 list-disc list-inside text-gray-600 bg-white rounded-b-lg">
                                <li><strong>استخدام الاتفاقيات الرسمية:</strong> ضع "خطاب تفاهم" في بداية العلاقة لتوضيح الأدوار والمسؤوليات والمواعيد النهائية.</li>
                                <li><strong>التفاوض على الاتفاقيات:</strong> تفاوض على الاتفاقية مع الطالب لضمان فهم مشترك وملكية متبادلة.</li>
                            </ul>
                        </div>
                    </div>
                     <div class="accordion-item border border-gray-200 rounded-lg">
                        <button class="accordion-header w-full flex justify-between items-center text-right p-4 font-semibold text-gray-700 bg-gray-100 hover:bg-gray-200 rounded-t-lg">
                            <span>تعزيز التواصل المنتظم والمنظم</span>
                             <span class="transform transition-transform duration-300">▼</span>
                        </button>
                        <div class="accordion-content">
                            <ul class="p-4 list-disc list-inside text-gray-600 bg-white rounded-b-lg">
                                <li><strong>جدولة الاجتماعات:</strong> عقد اجتماعات منتظمة (شهرية مثلاً) لبناء العلاقة وتسهيل المساءلة.</li>
                                <li><strong>تطبيق تتبع التقدم:</strong> استخدام أدوات رسمية مثل "مراجعة تقدم الطالب" لتحديد الأهداف وتقديم تغذية راجعة مكتوبة.</li>
                                 <li><strong>استخدام أطر التواصل:</strong> تنظيم الجلسات حول مواضيع محددة (مثل إطار المحادثات الخمس) لتشجيع الحوار المفتوح.</li>
                            </ul>
                        </div>
                    </div>
                     <div class="accordion-item border border-gray-200 rounded-lg">
                        <button class="accordion-header w-full flex justify-between items-center text-right p-4 font-semibold text-gray-700 bg-gray-100 hover:bg-gray-200 rounded-t-lg">
                            <span>تقديم تغذية راجعة بناءة وفي الوقت المناسب</span>
                             <span class="transform transition-transform duration-300">▼</span>
                        </button>
                        <div class="accordion-content">
                            <ul class="p-4 list-disc list-inside text-gray-600 bg-white rounded-b-lg">
                                <li><strong>التغذية الراجعة المتوازنة:</strong> سلط الضوء على نقاط القوة وما يحتاج إلى تحسين.</li>
                                <li><strong>التعليقات القابلة للتنفيذ:</strong> ركز على عدد قليل من القضايا الرئيسية وقدم استراتيجيات محددة للتحسين.</li>
                                <li><strong>النبرة الواعية:</strong> حافظ على نبرة محايدة وداعمة، خاصة عند تقديم النقد.</li>
                                 <li><strong>التوقيت المناسب:</strong> قدم التغذية الراجعة بسرعة لمنع تأخير التقدم.</li>
                            </ul>
                        </div>
                    </div>
                     <div class="accordion-item border border-gray-200 rounded-lg">
                        <button class="accordion-header w-full flex justify-between items-center text-right p-4 font-semibold text-gray-700 bg-gray-100 hover:bg-gray-200 rounded-t-lg">
                            <span>تنمية علاقة داعمة ومهنية</span>
                             <span class="transform transition-transform duration-300">▼</span>
                        </button>
                        <div class="accordion-content">
                            <ul class="p-4 list-disc list-inside text-gray-600 bg-white rounded-b-lg">
                                <li><strong>الاحترام المتبادل:</strong> بناء العلاقة على الاحترام والانفتاح من الاجتماع الأول.</li>
                                <li><strong>الحدود المهنية:</strong> الحفاظ على علاقة ودية ولكن مهنية للحفاظ على الموضوعية.</li>
                                <li><strong>معالجة الحساسيات الثقافية:</strong> كن على دراية بالاختلافات الثقافية في أساليب التواصل.</li>
                                <li><strong>تقديم الدعم النفسي:</strong> إظهار التفهم للتحديات الشخصية وإحالة الطلاب إلى الموارد المتاحة.</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section id="interactive" class="mb-16 scroll-mt-20">
            <div class="bg-white p-8 rounded-xl shadow-lg">
                <h3 class="text-2xl font-bold mb-6 text-center text-gray-800">تحليل تفاعلي: القصور وتأثيراته</h3>
                <p class="text-center text-gray-600 mb-8">
                    يوضح الجدول 1 في التقرير كيف يرتبط كل قصور في التواصل بتأثير مباشر على الطالب والمشروع. استخدم القائمة المنسدلة أدناه لاستكشاف هذه العلاقة بشكل تفاعلي ومشاهدة كيف يترجم كل قصور إلى نتيجة سلبية ملموسة.
                </p>
                <div class="max-w-md mx-auto mb-6">
                    <label for="deficiency-selector" class="block text-sm font-medium text-gray-700 mb-2">اختر قصورًا في التواصل:</label>
                    <select id="deficiency-selector" class="block w-full p-2 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-green-500 focus:border-green-500">
                    </select>
                </div>
                <div class="chart-container" style="height: 150px; max-height: 20vh;">
                     <canvas id="impactChart"></canvas>
                </div>
            </div>
        </section>

    </main>
    
    <footer class="bg-gray-800 text-white">
        <div class="container mx-auto px-4 sm:px-6 lg:px-8 py-4 text-center">
            <p>&copy; 2025 - تطبيق تحليلي لتحديات الإشراف البحثي. تم إنشاؤه لأغراض توضيحية.</p>
        </div>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const tabs = document.querySelectorAll('.tab-btn');
            const tabContents = document.querySelectorAll('.tab-content');

            tabs.forEach(tab => {
                tab.addEventListener('click', () => {
                    const target = tab.getAttribute('data-tab');

                    tabs.forEach(t => {
                        t.classList.remove('active-tab');
                        t.classList.add('text-gray-500', 'hover:text-gray-700', 'hover:border-gray-300');
                    });
                    tab.classList.add('active-tab');
                    tab.classList.remove('text-gray-500', 'hover:text-gray-700', 'hover:border-gray-300');
                    
                    tabContents.forEach(content => {
                        if (content.id === `${target}-content`) {
                            content.classList.remove('hidden');
                        } else {
                            content.classList.add('hidden');
                        }
                    });
                });
            });

            const accordionItems = document.querySelectorAll('.accordion-item');
            accordionItems.forEach(item => {
                const header = item.querySelector('.accordion-header');
                const content = item.querySelector('.accordion-content');
                const icon = header.querySelector('span:last-child');
                header.addEventListener('click', () => {
                    const isOpen = content.style.maxHeight && content.style.maxHeight !== '0px';
                    
                    accordionItems.forEach(i => {
                        i.querySelector('.accordion-content').style.maxHeight = '0px';
                         i.querySelector('.accordion-header span:last-child').classList.remove('rotate-180');
                    });

                    if (!isOpen) {
                        content.style.maxHeight = content.scrollHeight + "px";
                        icon.classList.add('rotate-180');
                    }
                });
            });

            const consequencesCtx = document.getElementById('consequencesChart').getContext('2d');
            new Chart(consequencesCtx, {
                type: 'radar',
                data: {
                    labels: ['توقف التقدم الأكاديمي', 'تدهور رفاهية الطالب', 'تلف العلاقة الإشرافية', 'زيادة معدلات التسرب', 'انعدام الثقة'],
                    datasets: [{
                        label: 'تأثير ضعف التواصل',
                        data: [9, 8, 9, 6, 8],
                        backgroundColor: 'rgba(16, 185, 129, 0.2)',
                        borderColor: 'rgba(16, 185, 129, 1)',
                        borderWidth: 2,
                        pointBackgroundColor: 'rgba(16, 185, 129, 1)'
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    scales: {
                        r: {
                            angleLines: { color: 'rgba(0, 0, 0, 0.1)' },
                            grid: { color: 'rgba(0, 0, 0, 0.1)' },
                            pointLabels: { 
                                font: { size: 12, family: 'Tajawal' },
                                color: '#374151'
                            },
                            ticks: {
                                backdropColor: 'rgba(255, 255, 255, 0.75)',
                                stepSize: 2,
                                beginAtZero: true,
                                max: 10
                            }
                        }
                    },
                    plugins: {
                        legend: {
                            labels: {
                                font: { size: 14, family: 'Tajawal' }
                            }
                        }
                    }
                }
            });
            
            const impactData = {
                'اجتماعات غير منتظمة/غير كافية': 'شعور بعدم الدعم والضياع',
                'تجاهل رسائل البريد الإلكتروني/طلبات التغذية الراجعة': 'شعور بالضياع وعدم التقدير',
                'تغذية راجعة غير متكررة/غامضة/قاسية': 'ارتباك، إهدار للجهد، تثبيط للعزيمة',
                'توقعات غير واضحة/متغيرة باستمرار': 'قلق وانعدام الثقة',
                'نقص إمكانية الوصول/سهولة التعامل': 'خنق الإبداع والاستقلالية',
                'سلوك غير مهني/تحيز': 'بيئة سامة وسوء تفسير',
                'نقص الاحترام/الثقة المتبادلين': 'تدهور العلاقة',
                'تواصل أحادي الاتجاه/مهيمن': 'شعور بعدم المشاركة وتثبيط العزيمة',
            };

            const selector = document.getElementById('deficiency-selector');
            Object.keys(impactData).forEach(key => {
                const option = document.createElement('option');
                option.value = key;
                option.textContent = key;
                selector.appendChild(option);
            });
            
            const impactCtx = document.getElementById('impactChart').getContext('2d');
            const impactChart = new Chart(impactCtx, {
                type: 'bar',
                data: {
                    labels: [],
                    datasets: [{
                        label: 'التأثير المباشر',
                        data: [10],
                        backgroundColor: ['#10B981'],
                        borderColor: ['#059669'],
                        borderWidth: 1
                    }]
                },
                options: {
                    indexAxis: 'y',
                    maintainAspectRatio: false,
                    scales: {
                        x: {
                            display: false,
                            beginAtZero: true,
                             max: 10
                        },
                        y: {
                           ticks: {
                                font: { size: 12, family: 'Tajawal' },
                                color: '#374151'
                           }
                        }
                    },
                    plugins: {
                        legend: { display: false },
                        tooltip: { enabled: false }
                    }
                }
            });

            function updateImpactChart(deficiency) {
                impactChart.data.labels = [impactData[deficiency]];
                impactChart.update();
            }

            selector.addEventListener('change', (e) => {
                updateImpactChart(e.target.value);
            });
            
            updateImpactChart(selector.value);
        });
    </script>
</body>
</html>
