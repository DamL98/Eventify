let currentStep = 0;

        function showStep(step) {
            document.querySelectorAll('.step').forEach((el, index) => {
                el.classList.toggle('active', index === step);
                // lista divow z klasa .step / iteruje po kazdym indexie diva (przewijanie lewo-prawo)
            });
        }

        function nextStep() {
            currentStep++;
            if (currentStep >= document.querySelectorAll('.step').length) {
                currentStep = document.querySelectorAll('.step').length - 1;
            }
            showStep(currentStep);
        }

        function prevStep() {
            currentStep--;
            if (currentStep < 0) {
                currentStep = 0;
            }
            showStep(currentStep);
        }

        function togglePopup(id) {
            document.getElementById(id).classList.toggle('active');
        }

        // function submitForm() {
        //     const formData = new FormData(document.getElementById('selectionForm'));

        //     const summary = Array.from(formData.entries())
        //                     .map(([key, value]) => `${key}: ${value}`)
        //                     .join('<br>');

        //     document.getElementById('summaryContent').innerHTML = summary;
            
        //     togglePopup('summaryPopup');
        // }

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
                    // Wyświetlanie podsumowania w #summaryContent
                    // Przerabia obj na array [[key,value]]
                    const summary = Object.entries(result)
                            .map(([key, values]) => `
                                <div>
                                    <span class="spanKey">${key}:</span> 
                                    <span class="spanValue">${values.join(', ')}</span>
                                </div>
                            `)
                            .join('<br>');
                    // wrzuca summary do diva summaryContent i odpala popup podsumowania
                    document.getElementById('summaryContent').innerHTML = summary;
                     togglePopup('summaryPopup');
                })
                // obsluga erroru
                .catch(error => console.error('Error:', error));
        }

        // popup ma index 0 po zaladowaniu strony (po zamkn/otw otwiera sie na tym samym indexie)
        window.onload = function () {
            showStep(currentStep);
        }