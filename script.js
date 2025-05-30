let currentStep = 0; //globalny licznik na ktorym kroku otwiera popup
        function showStep(step) {
            document.querySelectorAll('.step').forEach((el, index) => {
                el.classList.toggle('active', index === step);
                // lista divow z klasa .step / iteruje po kazdym indexie diva (przewijanie lewo-prawo)
            });
        }

        // nastepna strona popup
        function nextStep() {
            currentStep++;
            if (currentStep >= document.querySelectorAll('.step').length) {
                currentStep = document.querySelectorAll('.step').length - 1;
            }
            showStep(currentStep);
        }

        // poprzednia strona popup
        function prevStep() {
            currentStep--;
            if (currentStep < 0) {
                currentStep = 0;
            }
            showStep(currentStep);
        }

        // otw/zamkn popup
        function togglePopup(id) {
            //document.getElementById(id).classList.toggle('active');

            const popup = document.getElementById(id);
            const overlay = document.querySelector('.overlay');

            popup.classList.toggle('active');
            const anyPopupActive = document.querySelectorAll('.popup.active').length > 0;

            if (anyPopupActive) {
                overlay.classList.add('active'); // Włącz nakładkę, gdy dowolny popup jest aktywny
            } else {
                overlay.classList.remove('active'); // Wyłącz nakładkę, gdy żaden popup nie jest aktywny
            }
        }

        // wyslanie podsumowania
        function submitForm() {
            // zbiera pola formularza  jako key/value
            const formData = new FormData(document.getElementById('selectionForm'));
            const data = {};
            
            // dodaje pola form do obj data (ten wyzej)
            formData.forEach((value, key) => {

                if (!data[key]) {
                    data[key] = [];
                }
                // doda dane tylko jesli pole ma wartosc
                data[key].push(value);
            });
        
            // inicjuje http req do process.php 
            fetch('process.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(data), // dane jako JSON do process.php
            })
                .then(response => response.json())
                .then(result => {
                    // pokazuje podsumowanie w #summaryContent
                    // przerabia obj na array [[key,value]]
                    const summary = Object.entries(result)
                            .map( ([key, values]) => `
                                <div>
                                    <span class="spanKey">${key}:</span> 
                                    <span class="spanValue">${values.join(', ')}</span>
                                </div>
                            `)
                            .join('<br>');
                    // wrzuca summary do diva summaryContent i odpala popup podsumowania
                    document.getElementById('summaryContent').innerHTML = summary

                    document.getElementById('formPopup').classList.remove('active');

                    togglePopup('summaryPopup');

                })
                // obsluga erroru
                .catch(error => console.error('Error:', error));
        }

        // popup ma index 0 po zaladowaniu strony (po zamkn/otw otwiera sie na tym samym indexie)
        window.onload = function () {
            showStep(currentStep);
        }