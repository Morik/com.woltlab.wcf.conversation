<dl class="jsAddParticipants">
	<dt><label for="participantsInput">{lang}wcf.conversation.participants{/lang}</label></dt>
	<dd>
		<textarea id="participantsInput" name="participants" class="long" cols="40" rows="2"></textarea>
		<small>{lang}wcf.conversation.participants.description{/lang}</small>
	</dd>
</dl>
{if !$conversation->isDraft}
	{if $conversation->canAddParticipantsUnrestricted()}
		<dl class="jsRestrictVisibility">
			<dt>{lang}wcf.conversation.visibility{/lang}</dt>
			<dd>
				<label><input type="radio" name="messageVisibility" value="all" checked> {lang}wcf.conversation.visibility.all{/lang}</label>
				<small>{lang}wcf.conversation.visibility.all.description{/lang}</small>
				<label><input type="radio" name="messageVisibility" value="new"> {lang}wcf.conversation.visibility.new{/lang}</label>
				<small>{lang}wcf.conversation.visibility.new.description{/lang}</small>
			</dd>
		</dl>
	{else}
		<input type="hidden" name="messageVisibility" value="new">
	{/if}
{/if}

<div class="formSubmit">
	<button id="addParticipants" class="buttonPrimary">{lang}wcf.global.button.submit{/lang}</button>
</div>