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

        function submitForm() {
            const formData = new FormData(document.getElementById('selectionForm'));
            const summary = Array.from(formData.entries()).map(([key, value]) => `${key}: ${value}`).join('<br>');
            document.getElementById('summaryContent').innerHTML = summary;
            togglePopup('summaryPopup');
        }

        window.onload = function () {
            showStep(currentStep);
        }