  $( function() {
    $( "#range" ).slider({
      range: true,
      min: 0,
      max: 500,
      values: [ 75, 300 ],
      slide: function( event, ui ) {
        $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
      }
    });
    $( "#amount" ).val( "$" + $( "#range" ).slider( "values", 0 ) +
      " - $" + $( "#range" ).slider( "values", 1 ) );
  } );