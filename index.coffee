#
# Useless scifi widget for Übersicht
# Amar Paul
# github.com/APaul1729/scifiwidget
#

# Can edit theme here
style =
	#stroke: "#B14537"
	bg0: "#ebdbb2"

# don't care about the command
command: "echo hello"

refreshFrequency: 150000 # ms

style: """
	-webkit-font-smoothing: antialiased
	font: 14px Roboto Mono
	top: 300px
	left: 150px
	color: #faf9f5

	path.arc
		fill: transparent
		/* stroke: white */
		stroke: #{style.bg0}
		stroke-width: 10px

	svg.pie
		width: 230px
		height: 230px
		margin-top: 150px
		margin-left: 1300px

	.arc
		animation: spin linear infinite
	
	#one
		transform-origin: 0% 50%
		animation-duration: 10s
	
	#two
	  transform-origin: 50% 50%
	  animation-duration: 8s

	#three
	  transform-origin: 50% 50%
	  animation-duration: 6s

	#four
	  transform-origin: 0% 58%
	  animation-duration: 7s

	@keyframes spin
		0% {transform: rotate(0deg);}
		100% {transform: rotate(360deg);}

"""

render: (output) -> """
	<svg class="pie">
	  <path id="one" class="arc" d="
	  M 115,5
	  a 110,110 1 0 1 0,220">
	  </path>
	  
	  <path id="two" class="arc" d="
	  M 115,20
	  a 95,95 1 0 1 95,95
	  m -95,95
	  a 95,95 1 0 1 -95,-95
	  "></path>
	  
	  <path id="three" class="arc" d="
	  M 115, 35
	  a 80,80 1 1 1 -80,80
	  "></path>
	  
	  <path id="four" class="arc" d="
	  M 115, 50
	  a 65,65 1 0 1 46,111
	  "></path>
	</svg>

"""
