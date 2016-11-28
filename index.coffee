#
# Useless scifi widget for Übersicht
# Amar Paul
# github.com/APaul1729/scifiwidget
#

# Can edit theme here
# (currently one color for whole thing?)
style =
	#stroke: "#B14537"
	stroke: "black"

# don't care about the command
command: "echo hello date"

refreshFrequency: 150000 # ms

style: """
	-webkit-font-smoothing: antialiased
	font: 14px Roboto Mono
	top: 300px
	left: 150px
	color: #faf9f5

	.path
		stroke: #{style.stroke}
		fill: transparent
		background-color: transparent
		stroke-dasharray: 15px
		stroke-width: 3px 
		stroke-miterlimit: 10px 

	.path2
		perspective: 5px 
		transform-origin: 50% 50%
		transform: rotateY(120deg)

	.rect
		fill: transparent
		stroke: #{style.stroke}
		stroke-width: 3px 

	.small
		x: 65px
		y: 65px
		width: 70px
		height: 70px

		transform-origin: 50% 50%
		transform: rotate(45deg) rotate3d(1, 1, 0, 45deg)

	.medium
		x: 50px
		y: 50px
		width: 100px 
		height: 100px 
	

"""

render: (output) -> """
	<svg class="svg" width="100%" height="100%" viewBox="0 0 300 300">
	<path class="path"
		d="
			M 100, 100
			m -75, 0
			a 75,75 0 1,0 150,0
			a 75,75 0 1,0 -150,0
		"/>
		<animate
			attributeType="CSS"
			attributeName="stroke-dashoffset"
			from="1000"
			to="0"
			dur="15s"
			repeatCount="indefinite" />
	</path>
	<rect class="rect medium">
		<animateTransform
			attributeType="XML"
			attributeName="transform"
			type="rotate"
			from="0 100 100"
			to="90 100 100"
			dur="2s"
			repeatCount="indefinite" />
	</rect>
	<rect class="rect medium">
		<animateTransform
			attributeType="XML"
			attributeName="transform"
			type="rotate"
			from="0 100 100"
			to="-90 100 100"
			dur="2s"
			repeatCount="indefinite" />
	</rect>
	<path class="path path2"
		d="
			M 100, 100
			m -75, 0
			a 60,75 0 1,0 150,0
			a 60,75 0 1,0 -150,0
		"/>
		<animate
			attributeType="CSS"
			attributeName="stroke-dashoffset"
			from="1000"
			to="0"
			dur="15s"
			repeatCount="indefinite" />
	</path>
	<rect class="rect small" >
		<animateTransform
			attributeType="XML"
			attributeName="transform"
			type="rotateX"
			from="0"
			to="90"
			dur="2s"
			repeatCount="indefinite" />
	</rect>
	</svg>
"""
