{*
* 2013-2015 Nosto Solutions Ltd
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to contact@nosto.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
* @author    Nosto Solutions Ltd <contact@nosto.com>
* @copyright 2013-2015 Nosto Solutions Ltd
* @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}

{if isset($nosto_order) && is_object($nosto_order)}
    <div class="nosto_purchase_order" style="display:none">
        <span class="order_number">{$nosto_order->getOrderNumber()|escape:'htmlall':'UTF-8'}</span>
        <span class="order_status_code">{$nosto_order->getOrderStatus()->getCode()|escape:'htmlall':'UTF-8'}</span>
        <span class="order_status_label">{$nosto_order->getOrderStatus()->getLabel()|escape:'htmlall':'UTF-8'}</span>
        <span class="payment_provider">{$nosto_order->getPaymentProvider()|escape:'htmlall':'UTF-8'}</span>
        <div class="buyer">
            <span class="first_name">{$nosto_order->getBuyerInfo()->getFirstName()|escape:'htmlall':'UTF-8'}</span>
            <span class="last_name">{$nosto_order->getBuyerInfo()->getLastName()|escape:'htmlall':'UTF-8'}</span>
            <span class="email">{$nosto_order->getBuyerInfo()->getEmail()|escape:'htmlall':'UTF-8'}</span>
        </div>
        <div class="purchased_items">
            {foreach from=$nosto_order->getPurchasedItems() item=lineItem}
                <div class="line_item">
                    <span class="product_id">{$lineItem->getProductId()|escape:'htmlall':'UTF-8'}</span>
                    <span class="quantity">{$lineItem->getQuantity()|escape:'htmlall':'UTF-8'}</span>
                    <span class="name">{$lineItem->getName()|escape:'htmlall':'UTF-8'}</span>
                    <span class="unit_price">{$lineItem->getUnitPrice()->getPrice()|number_format:2:'.':''}</span>
                    <span class="price_currency_code">{$lineItem->getCurrency()->getCode()|escape:'htmlall':'UTF-8'}</span>
                </div>
            {/foreach}
        </div>
    </div>
{/if}
