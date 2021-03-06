{% if id.is_visible and id.is_published and not id|member:exclude %}
{% with id.depiction as dep %}
{% if dep %}
<li {% include "_language_attrs.tpl" id=id class="do_clickable has-depiction" %}>
	{% if dep.id.is_a.document %}
    	<img src="{% image_url dep mediaclass="base-list-item-small-document" %}" alt="" /> 
	{% else %}
		<img src="{% image_url dep mediaclass="base-list-item-small" %}" alt="" /> 
    {% endif %}
{% else %}
<li {% include "_language_attrs.tpl" id=id class="do_clickable" %}>
{% endif %}
    <h3>{{ id.title|default:"&mdash;" }}</h3>
	<p>
    {% if is_large %}{{ id|summary:300 }}
    {% else %}{{ id|summary:120 }}
	{% endif %}
	<a href="{{ id.page_url with in_collection=in_collection }}">{_ Read more _} &raquo;</a>
	</p>
</li>
{% endwith %}
{% endif %}
