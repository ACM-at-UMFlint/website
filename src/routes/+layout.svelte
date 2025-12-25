<script lang="ts">
	import '../app.css';
	
	let { children } = $props();
</script>

<svelte:head>
	<link rel="icon" href="logo.svg" />
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Roboto+Mono:ital,wght@0,100..700;1,100..700&display=swap" rel="stylesheet">
</svelte:head>

{@render children()}
