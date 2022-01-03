module namespace page = 'http://estg.ipp.pt/agendamento.xml';

declare default element namespace 'http://agendamento.xml';

declare %rest:path("//elemento/{$who}") %rest:GET function page:hello($who) {
  <response>
    <title>Hello { $who }!</title>
  </response>
};