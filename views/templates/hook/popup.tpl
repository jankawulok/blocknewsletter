{*
* 2017 Jan Kawulok
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author Jan Kawulok <jan@kawulok.com.pl>
*  @copyright  2017 Jan Kawulok
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- Block Newsletter popup-->
<div class="modal fade-in" id="blocknewsletter-popup" tabindex="-1" role="dialog" aria-labelledby="newsletter_popup">
  <div class="modal-dialog" role="document" style="width:100%; max-width: {$newsletter_width}px">
    <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        {$newsletter_content}

      <div class="blocknewsletterpopup-form">
          <form action="{$link->getPageLink('index', true)|escape:'html'}" method="post">
            <p>
                <input class="inputNew" id="newsletterpopup-input" type="text" name="email" size="18" value="{if isset($value) && $value}{$value}{else}{l s='your e-mail' mod='blocknewsletter'}{/if}" />
                <input type="submit" value="ok" class="btn" name="submitNewsletter" />
                <input type="hidden" name="action" value="0" />
            </p>
            </form>
      </div>

    </div>
  </div>
</div>

<!-- /Block Newsletter popup-->

<script type="text/javascript">
    var placeholder = "{l s='your e-mail' mod='blocknewsletter' js=1}";
    {literal}
        $(document).ready(function() {

            $('#newsletterpopup-input').on({
                focus: function() {
                    if ($(this).val() == placeholder) {
                        $(this).val('');
                    }
                },
                blur: function() {
                    if ($(this).val() == '') {
                        $(this).val(placeholder);
                    }
                }
            });
        });
    {/literal}
</script>