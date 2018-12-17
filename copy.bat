copy /b ..\..\github\lichkin-projects-core\lichkin-projects-core-employee-ui\src\main\resources\META-INF\resources\res\js\employee\index\i18n\zh_CN.js+..\..\github\lichkin-projects-core\lichkin-projects-core-employee-ui\src\main\resources\META-INF\resources\res\js\employee\home\i18n\zh_CN.js core-zh_CN.js

copy /b ..\..\github\lichkin-projects-activiti\lichkin-projects-activiti-employee-ui\src\main\resources\META-INF\resources\res\js\employee\activiti\index\i18n\zh_CN.js+..\..\github\lichkin-projects-activiti\lichkin-projects-activiti-employee-ui\src\main\resources\META-INF\resources\res\js\employee\activiti\processDetail\index\i18n\zh_CN.js+..\..\github\lichkin-projects-activiti\lichkin-projects-activiti-employee-ui\src\main\resources\META-INF\resources\res\js\employee\activiti\submitForm\index\i18n\zh_CN.js activiti-zh_CN.js

copy /b ..\..\github\lichkin-projects-attendance\lichkin-projects-attendance-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\LEAVE\zh_CN.js+..\..\github\lichkin-projects-attendance\lichkin-projects-attendance-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\REST\zh_CN.js+..\..\github\lichkin-projects-attendance\lichkin-projects-attendance-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\DISMISSION\zh_CN.js attendance-zh_CN.js

copy /b ..\..\github\lichkin-projects-pss\lichkin-projects-pss-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\PSS_ALLOT_ORDER\zh_CN.js+..\..\github\lichkin-projects-pss\lichkin-projects-pss-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\PSS_OTHER_STOCK_IN_ORDER\zh_CN.js+..\..\github\lichkin-projects-pss\lichkin-projects-pss-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\PSS_OTHER_STOCK_OUT_ORDER\zh_CN.js+..\..\github\lichkin-projects-pss\lichkin-projects-pss-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\PSS_PURCHASE_ORDER\zh_CN.js+..\..\github\lichkin-projects-pss\lichkin-projects-pss-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\PSS_PURCHASE_RETURN_ORDER\zh_CN.js+..\..\github\lichkin-projects-pss\lichkin-projects-pss-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\PSS_PURCHASE_STOCK_IN_ORDER\zh_CN.js+..\..\github\lichkin-projects-pss\lichkin-projects-pss-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\PSS_PURCHASE_STOCK_OUT_ORDER\zh_CN.js+..\..\github\lichkin-projects-pss\lichkin-projects-pss-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\PSS_SELL_ORDER\zh_CN.js+..\..\github\lichkin-projects-pss\lichkin-projects-pss-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\PSS_SELL_RETURN_ORDER\zh_CN.js+..\..\github\lichkin-projects-pss\lichkin-projects-pss-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\PSS_SELL_STOCK_IN_ORDER\zh_CN.js+..\..\github\lichkin-projects-pss\lichkin-projects-pss-employee-ui\src\main\resources\META-INF\resources\res\js\activiti\PSS_SELL_STOCK_OUT_ORDER\zh_CN.js pss-zh_CN.js

copy /b ..\..\github\lichkin-projects-temporary\lichkin-projects-temporary-ui-common\src\main\resources\META-INF\resources\res\js\tour_guide\page\i18n\zh_CN.js+..\..\github\lichkin-projects-report\lichkin-projects-report-ui-common\src\main\resources\META-INF\resources\res\js\report\index\i18n\zh_CN.js+..\..\github\lichkin-projects-report\lichkin-projects-report-ui-common\src\main\resources\META-INF\resources\res\js\report\chart\i18n\zh_CN.js report-zh_CN.js

copy /b core-zh_CN.js+activiti-zh_CN.js+attendance-zh_CN.js+pss-zh_CN.js+report-zh_CN.js zh_CN.js

move zh_CN.js src\main\resources\META-INF\resources\res\js\i18n

del core-zh_CN.js
del activiti-zh_CN.js
del attendance-zh_CN.js
del pss-zh_CN.js
del report-zh_CN.js

copy /b ..\..\github\lichkin-projects-core\lichkin-projects-core-employee-ui\src\main\resources\META-INF\resources\res\js\employee\index\icons.js+..\..\github\lichkin-projects-core\lichkin-projects-core-employee-ui\src\main\resources\META-INF\resources\res\js\employee\home\icons.js icons.js
move icons.js src\main\resources\META-INF\resources\res\js
