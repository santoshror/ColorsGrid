   $(document).ready(function(){
  $('.hexacode').minicolors();

  $('.square').on('click',function() {
    $(this).toggleClass("selected");
     })
     $('.apply_color').on('click' ,function(){
     selected = []
     var hexacode = document.getElementById('hexacode').value;

        $(".selected").map(function() {
        $(this).css("background-color",hexacode);
        selected.push($( this ).attr("id"))
        });

        console.log(hexacode);
        if((selected.length == 0) || (hexacode == ''))
        {
         $('#validateGrid').modal('show')
        }
        else{
         $.ajax({
            type: "POST",
            url: "/apply_color",
            data: {selected_grids: selected, hexacode: hexacode},
            dataType: 'script',
            success: function(data) {
             
            }
        });}
});

});