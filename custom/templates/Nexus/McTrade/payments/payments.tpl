{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="ui stackable grid">
	<div class="ui centered row">


		{if count($WIDGETS_LEFT)}
			<div class="ui six wide tablet four wide computer column">
				{foreach from=$WIDGETS_LEFT item=widget}
					{$widget}
				{/foreach}
			</div>
		{/if}

		<div
			class="ui {if count($WIDGETS_LEFT) && count($WIDGETS_RIGHT) }four wide tablet eight wide computer{elseif count($WIDGETS_LEFT) || count($WIDGETS_RIGHT)}ten wide tablet twelve wide computer{else}sixteen wide{/if} column">


			{if isset($SUCCESS)}
				<div class="ui success icon message">
					<i class="check icon"></i>
					<div class="content">
						{$SUCCESS}
					</div>
				</div>
			{/if}

			{if isset($ERRORS)}
				<div class="ui negative icon message">
					<i class="x icon"></i>
					<div class="content">
						{foreach from=$ERRORS item=error}
							{$error}<br />
						{/foreach}
					</div>
				</div>
			{/if}

			{if !isset($MSG)}

				<form class="ui form" id="payment_form" method="POST">
					<div class="field">
						<div class="ui yellow center aligned header">{$PAYMENT_TITLE}</div>
						<div class="ui yellow center aligned header">{$PAYMENT_CURRENCY}</div>
						<input class="form-control" type="number" name="amount" value="20">
					</div>
					<div class="field">
						<div class="ui yellow center aligned header">{$PAYMENT_METHOD}</div>
						<input type="hidden" name="url" value="{$HOST_URL}">

						{foreach from=$PAYMENT_LIST item=payment}
							{if $payment.enabled == 1}
								<div class="field">
									<input onclick="{$payment.name}()" class="ui positive button" type="submit"
										value="{if $payment.name == 'Enot'}Bank Card{else}{$payment.name}{/if}" style="width: 100%;">
								</div>

							{/if}

						{/foreach}
					</div>
				</form>


				<script>
					function PayPal() {
						document.getElementById('payment_form').action = {json_encode($PAYPAL_PROCESS_URL)};
					}

					function WebMoney() {
						document.getElementById('payment_form').action = {json_encode($WEBMONEY_PROCESS_URL)};
					}

					function Enot() {
						document.getElementById('payment_form').action = {json_encode($ENOT_PROCESS_URL)};
					}
				</script>
			{else}
				<h3 class="ui yellow center aligned header">{$MSG}</h3>
			{/if}

		</div>
	</div>
</div>

{include file='footer.tpl'}