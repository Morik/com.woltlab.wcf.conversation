<div class="messageInlineEditor">
	<textarea id="messageEditor{@$message->messageID}" rows="20" cols="40">{$message->message}</textarea>
	
	<div class="formSubmit">
		<button class="buttonPrimary" data-type="save">{lang}wcf.global.button.submit{/lang}</button>
		<button data-type="extended">{lang}wbb.post.edit.button.extended{/lang}</button>
		<button data-type="cancel">{lang}wcf.global.button.cancel{/lang}</button>
	</div>
	
	{include file='wysiwyg'}
</div>