 const initSearchSteps = () => {
  const step1 = document.querySelector('.step-1');
  if (!step1) {return}

  const step1inputs = document.querySelector('.step-1').getElementsByTagName('input');
  const step2 = document.querySelector('.step-2');
  const step2inputs = document.querySelector('.step-2').getElementsByTagName('input');
  const step3 = document.querySelector('.step-3');
  const step3inputs = document.querySelector('.step-3').getElementsByTagName('input');
  const step4 = document.querySelector('.step-4');
  const step4inputs = document.querySelector('.step-4').getElementsByTagName('input');
  const step5 = document.querySelector('.step-5');
  const step5inputs = document.querySelector('.step-5').getElementsByTagName('input');
  const progBar = document.querySelector('.progress-bar');
  const suitcasesIcon = document.querySelector('.suitcases');
  const passportIcon = document.querySelector('.passport');
  const trainIcon = document.querySelector('.train');
  const touristIcon = document.querySelector('.tourist');

  for (const input of step1inputs) {
    input.addEventListener('click', function(event) {
      setTimeout(function() {
        step1.classList.add("hidden");
        step2.classList.remove("hidden");
        progBar.style. width = "15%";
        suitcasesIcon.classList.add("form--pictogram--active");
      }, 300);
    });
  };

  for (const input of step2inputs) {
    input.addEventListener('click', function(event) {
      setTimeout(function() {
        step2.classList.add("hidden");
        step3.classList.remove("hidden");
        progBar.style. width = "35%";
        passportIcon.classList.add("form--pictogram--active");
      }, 300);
    });
  };

  for (const input of step3inputs) {
    input.addEventListener('click', function(event) {
      setTimeout(function() {
        step3.classList.add("hidden");
        step4.classList.remove("hidden");
        progBar.style. width = "65%";
        trainIcon.classList.add("form--pictogram--active");
      }, 300);
    });
  };

  for (const input of step4inputs) {
    input.addEventListener('click', function(event) {
      setTimeout(function() {
        step4.classList.add("hidden");
        step5.classList.remove("hidden");
        progBar.style. width = "85%";
        touristIcon.classList.add("form--pictogram--active");
      }, 300);
    });
  };


for (const input of step5inputs) {
    input.addEventListener('click', function(event) {
      setTimeout(function() {
        progBar.style. width = "100%";
      }, 300);
    });
  };
}

export {initSearchSteps};
