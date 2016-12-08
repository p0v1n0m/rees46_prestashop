{*
 * 2007-2016 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
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
 *  @author    p0v1n0m <ay@rees46.com>
 *  @copyright 2007-2016 PrestaShop SA
 *  @license   http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 *  International Registered Trademark & Property of PrestaShop SA
 *}

<div class="rees46 rees46-recommend">
  <div class="recommender-block-title">{$rees46_title}</div>
  <div class="recommended-items">
    {foreach from=$rees46_products item="product"}
    <div class="recommended-item">
      <div class="recommended-item-photo">
        <a href="{$product.url}">
          <img src="{$product.cover.bySize.home_default.url}" alt="{$product.name}" title="{$product.name}" />
        </a>
      </div>
      <div class="recommended-item-title">
        <a href="{$product.url}">{$product.name}</a>
      </div>

      {block name='product_price_and_shipping'}
        {if $product.show_price}
          <div class="recommended-item-price">
            {hook h='displayProductPriceBlock' product=$product type="before_price"}

            {$product.price}

            {hook h='displayProductPriceBlock' product=$product type='unit_price'}

            {hook h='displayProductPriceBlock' product=$product type='weight'}
          </div>
        {/if}
      {/block}

      <div class="recommended-item-action">
        <a href="{$product.url}">{$rees46_more}</a>
      </div>
    </div>
    {/foreach}
  </div>
</div>
