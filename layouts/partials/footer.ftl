<footer class="footer">
  <div class="powered_by">
    <a href="https://zeuk.me">Designed by Zeuk,</a>
    <a href="https://halo.run">Proudly published with Halo</a>
  </div>

  <div class="footer_slogan">
    <span>${settings.footer_slogan!'我的精神家园'}</span>
  </div>

  <div class="footer_other">
    <#if settings.beian??>
      <a href="https://beian.miit.gov.cn">${settings.beian}</a>
    </#if>
  </div>

  <@global.footer_info />
</footer>


