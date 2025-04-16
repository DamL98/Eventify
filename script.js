let currentStep = 0;

        function showStep(step) {
            document.querySelectorAll('.step').forEach((el, index) => {
                el.classList.toggle('active', index === step);
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
            const formData = new FormData(document.getElementById('selectionForm'));
        
            // Przygotowanie danych w odpowiednim formacie
            const data = {};
            formData.forEach((value, key) => {
                if (!data[key]) {
                    data[key] = [];
                }
                data[key].push(value);
            });
        
            // Wysyłanie danych przez AJAX
            fetch('process.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(data),
            })
                .then(response => response.json())
                .then(result => {
                    // Wyświetlanie podsumowania w #summaryContent
                    const summary = Object.entries(result)
                            .map(([key, values]) => `
                                <div>
                                    <span class="spanKey">${key}:</span> 
                                    <span class="spanValue">${values.join(', ')}</span>
                                </div>
                            `)
                            .join('<br>');
        
                    document.getElementById('summaryContent').innerHTML = summary;
                     togglePopup('summaryPopup');
                })
                .catch(error => console.error('Error:', error));
        }

        window.onload = function () {
            showStep(currentStep);
        }