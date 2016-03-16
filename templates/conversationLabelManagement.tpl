{hascontent}
	<section class="section">
		<header class="sectionHeader">
			<h2 class="sectionTitle">{lang}wcf.conversation.label.management.existingLabels{/lang}</h2>
			<small class="sectionDescription">{lang}wcf.conversation.label.management.edit.description{/lang}</small>
		</header>
		<ul class="conversationLabelList">
			{content}
				{foreach from=$labelList item=label}
					<li><a class="badge label{if $label->cssClassName} {@$label->cssClassName}{/if}" data-label-id="{@$label->labelID}" data-css-class-name="{if $label->cssClassName}{@$label->cssClassName}{else}none{/if}">{$label->label}</a></li>
				{/foreach}
			{/content}
		</ul>
	</section>
{/hascontent}

<section class="section" id="conversationLabelManagementForm">
	<h2 class="sectionTitle">{lang}wcf.conversation.label.management.addLabel{/lang}</h2>
	
	<dl>
		<dt><label for="labelName">{lang}wcf.conversation.label.labelName{/lang}</label></dt>
		<dd><input type="text" id="labelName" class="long" /></dd>
	</dl>
	<dl>
		<dt>{lang}wcf.conversation.label.cssClassName{/lang}</dt>
		<dd>
			<ul id="labelManagementList">
				{foreach from=$cssClassNames item=cssClassName}
					<li><label>
						<input type="radio" name="cssClassName" value="{@$cssClassName}"{if $cssClassName == 'none'} checked="checked"{/if} />
						<span class="badge label{if $cssClassName != 'none'} {@$cssClassName}{/if}">{lang}wcf.conversation.label.placeholder{/lang}</span>
					</label></li>
				{/foreach}
			</ul>
		</dd>
	</dl>
	
	<div class="formSubmit">
		<button id="addLabel" class="buttonPrimary">{lang}wcf.global.button.save{/lang}</button>
		<button id="editLabel" style="display: none;" class="buttonPrimary">{lang}wcf.global.button.save{/lang}</button>
		<button id="deleteLabel" style="display: none;">{lang}wcf.conversation.label.management.deleteLabel{/lang}</button>
	</div>
</section>