document.addEventListener('DOMContentLoaded', function() {
    window.addEventListener('message', function(event) {
        var adContainer = document.getElementById('ad-container');
        var logo = document.getElementById('logo');
        var message = document.getElementById('message');
        var workbar = document.getElementById('workbar');
        var adSound = document.getElementById('ad-sound');
        logo.src = event.data.logo;
        message.innerText = event.data.message;
        adContainer.style.backgroundColor = event.data.backgroundColor;
        adContainer.style.boxShadow = '0 0 10px ' + event.data.barColor;
        adContainer.style.color = event.data.titleTextColor;
        workbar.style.backgroundColor = event.data.barColor;
        adSound.play();
        adContainer.style.display = 'flex';
        setTimeout(function() {
            adContainer.classList.add('exit');
            var onAnimationEnd = function() {
                adContainer.style.display = 'none';
                adContainer.classList.remove('exit');
                adContainer.removeEventListener('animationend', onAnimationEnd);
            };
            adContainer.addEventListener('animationend', onAnimationEnd);
        }, 5000);
    });
});