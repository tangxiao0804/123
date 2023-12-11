document.querySelectorAll('a.remove').forEach(function(element) {
    element.addEventListener('click', function(event) {
      event.preventDefault(); 

      
      var parentElement = element.parentElement.parentElement.parentElement;
      parentElement.style.display = 'none'; 
    });
  });

  
  document.querySelectorAll('a.btn.continue').forEach(function(element) {
    element.addEventListener('click', function(event) {
      event.preventDefault(); 

      
      document.querySelectorAll('li.items').forEach(function(item) {
        item.style.display = 'block';
      });
    });
  });