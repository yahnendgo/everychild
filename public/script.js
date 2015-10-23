var ul;
var liItems;
var imageWidth;
var imageNumber;

function init(){
	ul = document.getElementByID('slider');
	liItems = ul.children;
	imageNumber = liItems.length;
	imageWidth = liItems[0].children[0].offsetWidth;
	ul.style.width = parseInt(imageWidth * imageNumber) + 'px';
	slider(ul);
}
function slider(ul) {
	animate({
		delay:19,
		duration: 3000,
		delta:functioin(p){return Math.max(0, -1 + 2 * p)},
		step: function(delta {
			ul.style.left = '-' + parseInt(currentImage * imageWidth + detla * imageWidth) + 'px';
		},
		callback:function(){
			currentImage++;
			if(C < image-1){slider(ul);
			}
			else{
				var leftPosition = (imageNumber - 1) * imageWidth;
			setTimeOut{function(
				{goBack (leftPosition)}, 2000);
			setTimeOut(function(){
				slider(ul)},
				4000);
			}
		}
	});
}
function goBaack(leftPosition){
	currentImage = 0;
	var id = setInverval(function(){
		if(leftPosition >= 0){
			ul.style.left = '-' + parseInt(leftPosition)  'px';
			leftPosition-+ imageWidth / 10;
		}
		else {
			clearInverval(id);
		}
	}, 17);
}