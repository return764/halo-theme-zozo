<#macro head title,canonical>
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>

  <!-- author & description & keywords  -->
  <meta name="author" content=${user.nickname!}/>
  <meta name="description" content="${meta_description!}"/>
  <meta name="keywords" content="${meta_keywords!}" />

  <!-- Permalink & RSSlink -->
  <link rel="canonical" href="${canonical}"/>

  <title>${title!}</title>

  <@global.head />

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/animate.css@3.7.2/animate.min.css"/>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/remixicon@2.3.0/fonts/remixicon.css"/>
  <link rel="stylesheet" href="${theme_base!}/static/css/zozo.css"/>
  <link rel="stylesheet" href="${theme_base!}/static/css/highlight.css"/>

  <#if settings.custom_css??>
  <style>
    ${settings.custom_css!}
  </style>
  </#if>
</head>
</#macro>
