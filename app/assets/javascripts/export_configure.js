$(document).ready(function() {
  // Prevent the click handler from being registered multiple times.
  // This is due to the buggy way this is included.
  if (window['has_export_js'])
    return;

  window['has_export_js'] = true;

  var forms = {};

  $('.export_configure').click(function(e) {
    e.preventDefault();

    var btn = $(this),
       href = btn.attr('href'),
       form = forms[href];

    if (form)
      return form.toggle();

    $.get(btn.attr('href') + '.partial')
      .done(function(data) {
        forms[href] = $(data);
        btn.parent().find("ul").first().before(forms[href]);
      })
      .fail(function(data) {
        // Handle failure?
      });
  });
});
