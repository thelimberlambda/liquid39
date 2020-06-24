require 'Liquid'

template = Liquid::Template.parse(%Q(
<!DOCTYPE html>
<html>
<head><title>Barcode</title></head>
<body>
{% assign barcode_height = '1in' %}
{% assign barcode_wide_width = '0.07in' %}
{% assign barcode_narrow_width = '0.03in' %}

{% capture wide_bar %}<span style="border-left: black {{ barcode_wide_width }} solid; display: inline-block; height: {{ barcode_height }}"></span>{% endcapture %}
{% capture narrow_bar %}<span style="border-left: black {{ barcode_narrow_width }} solid; display: inline-block; height: {{ barcode_height }}"></span>{% endcapture %}
{% capture wide_space %}<span style="border-left: white {{ barcode_wide_width }} solid; display: inline-block; height: {{ barcode_height }}"></span>{% endcapture %}
{% capture narrow_space %}<span style="border-left: white {{ barcode_narrow_width }} solid; display: inline-block; height: {{ barcode_height }}"></span>{% endcapture %}

{% capture barcode %}
{% assign letters = '*WIKIPEDIA*' | split:'' %}
{% for l in letters %}
{% case l %}
{% when '0' %}
{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when '1' %}
{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}
{% when '2' %}
{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}
{% when '3' %}
{{ wide_bar }}{{ narrow_space }}{{ wide_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when '4' %}
{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}
{% when '5' %}
{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when '6' %}
{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when '7' %}
{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}
{% when '8' %}
{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when '9' %}
{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'A' %}
{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}
{% when 'B' %}
{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}
{% when 'C' %}
{{ wide_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'D' %}
{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}
{% when 'E' %}
{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'F' %}
{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ wide_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'G' %}
{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}
{% when 'H' %}
{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'I' %}
{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'J' %}
{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'K' %}
{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}
{% when 'L' %}
{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}
{% when 'M' %}
{{ wide_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'N' %}
{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}
{% when 'O' %}
{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'P' %}
{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'Q' %}
{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}
{% when 'R' %}
{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'S' %}
{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'T' %}
{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ wide_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'U' %}
{{ wide_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}
{% when 'V' %}
{{ narrow_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}
{% when 'W' %}
{{ wide_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'X' %}
{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}
{% when 'Y' %}
{{ wide_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when 'Z' %}
{{ narrow_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when '-' %}
{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}
{% when '.' %}
{{ wide_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when ' ' %}
{{ narrow_bar }}{{ wide_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when '$' %}
{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% when '/' %}
{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}
{% when '+' %}
{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}
{% when '%' %}
{{ narrow_bar }}{{ narrow_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}
{% when '*' %}
{{ narrow_bar }}{{ wide_space }}{{ narrow_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ wide_bar }}{{ narrow_space }}{{ narrow_bar }}{{ narrow_space }}
{% endcase %}
{% endfor %}
{% endcapture %}
{{ barcode | strip_newlines }}
<br>
</body>
</html>
))
puts(template.render())
