var myApp = {
  initialise: function(){
    this.dragAndDrop();
  },
  dragAndDrop: function(){
    $('.draggable').draggable();
    $('.droppable').droppable({
      drop: function(event, ui){
        $(this)
          .addClass('ui-state-highlight')
          .find('p')
          .html('Dropped');
          moveId = $(event.target).data("cell");
          gameId = window.gameId;
          var path = "/tic_tac_toe_games/"+gameId+"/tic_tac_toe_moves/new?move="+moveId;
          $(location).pathname = path;
          alert(path);
          alert(document.location.pathname);
      }
    })
  }
}



$(document).ready(function(){
  myApp.initialise();
})