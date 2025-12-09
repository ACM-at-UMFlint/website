<script lang="ts">
    import { gsap } from "gsap";
    import { onMount } from "svelte";

    const text = "PYTHON | JAVASCRIPT | TYPESCRIPT | C++ | JAVA | GO | RUST | KOTLIN | SWIFT | REACT | ANGULAR | VUE | SVELTE | NEXT.JS | NUXT | NODE.JS | EXPRESS | NESTJS | DJANGO | FLASK | FASTAPI | SPRING | LARAVEL | TAILWIND CSS | POSTGRESQL | MYSQL | MONGODB | REDIS | DOCKER | KUBERNETES | LINUX | GIT | GITHUB | VSCODE | INTELLIJ | PYTORCH | TENSORFLOW | NUMPY | PANDAS | MATPLOTLIB | AWS | GCP | AZURE | FIREBASE | WEBPACK | VITE | ESLINT | PRETTIER | JEST | CYPRESS | PLAYWRIGHT | HTML | CSS | REST API | GRAPHQL | WEB3 | SOLIDITY | PRISMA | RABBITMQ | KAFKA | ";

    let wrapper: HTMLDivElement;

    onMount(() => {
        const items = wrapper.querySelectorAll(".slide-item");
        const totalWidth = (items[0] as HTMLElement).offsetWidth;

        gsap.to(items, {
            x: -totalWidth,
            duration: 30,
            ease: "none",
            repeat: -1,
            modifiers: {
                x: gsap.utils.unitize((x: number) => parseFloat(x as unknown as string) % totalWidth)
            }
        });
    });
</script>

<div class="bg-white h-8 flex items-center select-none overflow-hidden">
    <div class="flex gap-1" bind:this={wrapper}>
        <p class="font-bold text-black text-nowrap slide-item">{text}</p>
        <p class="font-bold text-black text-nowrap slide-item">{text}</p>
    </div>
</div>
