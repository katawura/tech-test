$('#bulk_create').submit (e) ->
  e.preventDefault()
  name_pairs = []
  table_rows = $('table tbody > tr').not(':first')
  $.each table_rows, (index, value) ->
    firstname = $(value).find('td input.firstname').val()
    id = $(value).find('td input.firstname').data('id')
    surname = $(value).find('td input.surname').val()
    name_pairs.push
      firstname: firstname
      surname: surname
      id: id
    return
  console.log name_pairs
  $.post('/people.json', data: name_pairs).done((data) ->
    alert 'successflly update'
    return
  ).fail ->
    alert 'error'
    return
  return