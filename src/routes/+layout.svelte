<script lang="ts">
    import "../app.css";
    import ArrowTopRight from "$lib/assets/ArrowTopRight.svelte";
    import Github from "$lib/assets/logos/Github.svelte";
    import Instagram from "$lib/assets/logos/Instagram.svelte";
    import Linkedin from "$lib/assets/logos/Linkedin.svelte";

    let { children } = $props();

    // const navItems = ["PROJECTS", "HACKATHON", "TEAM", "CONTACT US", "SCAN"];
    const navItems: string[] = [];
</script>

<svelte:head>
    <link rel="icon" href="logo.svg" />
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Roboto+Mono:ital,wght@0,100..700;1,100..700&display=swap"
        rel="stylesheet"
    />
    <title>ACM @ UM-Flint</title>
</svelte:head>

<nav
    class="flex justify-between items-center roboto-mono px-20 h-20 backdrop-blur-xl fixed top-0 left-0 right-0 z-50 border-b border-white/10"
>
    <div class="flex items-center gap-12">
        <a href="/" class="group">
            <img
                src="logo.svg"
                class="w-12 transition-transform duration-300 group-hover:scale-110 group-hover:rotate-12"
                alt="Logo"
            />
        </a>
        <ul class="flex gap-8 text-sm">
            {#each navItems as item}
                <li
                    class="nav-item roboto-mono relative cursor-pointer text-white/70 hover:text-white transition-colors duration-300"
                >
                    {item}
                    <span
                        class="nav-underline absolute -bottom-1 left-0 w-0 h-[2px] bg-linear-to-r from-[#7589ff] to-[#3fca83] transition-all duration-300"
                    ></span>
                </li>
            {/each}
        </ul>
    </div>
    <div class="flex gap-4">
        <a
            href="https://campusconnections.umflint.edu/ACM/club_signup"
            target="_blank"
            class="join-btn relative overflow-hidden px-6 py-2.5 border-2 font-semibold border-white/80 cursor-pointer transition-all duration-300 hover:border-[#3fca83] hover:shadow-[0_0_30px_rgba(63,202,131,0.3)] group"
        >
            <span
                class="relative z-10 w-full roboto-mono flex items-center gap-2 font-semibold transition-colors duration-300 group-hover:text-black"
            >
                JOIN
                <ArrowTopRight
                    className="w-4 fill-white transition-all duration-300 group-hover:fill-black group-hover:translate-x-0.5 group-hover:-translate-y-0.5"
                />
            </span>
            <div
                class="absolute inset-0 bg-linear-to-r from-[#3fca83] to-[#7589ff] translate-y-full group-hover:translate-y-0 transition-transform duration-300"
            ></div>
        </a>
        <a
            href="/contact"
            class="relative overflow-hidden px-6 py-2.5 border-2 font-semibold border-white/80 cursor-pointer transition-all duration-300 hover:border-white hover:shadow-[0_0_30px_rgba(255,255,255,0.3)] group"
        >
            <span
                class="relative z-10 w-full roboto-mono flex items-center gap-2 font-semibold transition-colors duration-300 group-hover:text-black"
            >
                CONTACT US
            </span>
            <div
                class="absolute inset-0 bg-white translate-y-full group-hover:translate-y-0 transition-transform duration-300"
            ></div>
        </a>
    </div>
</nav>

{@render children()}

<footer
    class="px-20 py-16 flex flex-col items-center bg-[#0B0B0B] border-t border-white/10 relative footer-glow"
>
    <div class="flex flex-col items-center gap-4 mb-12">
        <a href="/" class="block">
            <img src="logo.svg" class="w-10" alt="Logo" />
        </a>
        <h2 class="text-lg text-center">
            Association for Computing Machinery at UM Flint
        </h2>

        <nav class="flex gap-8 text-sm text-white/70">
            <a href="/about-us" class="hover:text-white transition-colors"
                >About us</a
            >
            <a href="/contact" class="hover:text-white transition-colors"
                >Contact</a
            >
            <!-- <a href="/donate" class="hover:text-white transition-colors">Donate</a>
            <a href="/stats" class="hover:text-white transition-colors">Stats</a>
            <a href="/" class="hover:text-white transition-colors">Home</a> -->
        </nav>
    </div>

    <div
        class="w-full flex justify-between items-center border-t border-white/10 pt-8"
    >
        <p class="text-sm text-white/50">
            &copy; Association for Computing Machinery @ University of Michigan
            - Flint. All rights reserved.
        </p>
        <div class="flex gap-6">
            <a
                href="https://github.com/ACM-at-UMFlint"
                target="_blank"
                class="hover:text-white/90 text-white/50 transition-colors"
            >
                <Github />
            </a>
            <a
                href="https://instagram.com/acm_umflint"
                target="_blank"
                class="hover:text-white/90 text-white/50 transition-colors"
            >
                <Instagram />
            </a>
            <a
                href="https://linkedin.com/company/acm-um-flint"
                target="_blank"
                class="hover:text-white/90 text-white/50 transition-colors"
            >
                <Linkedin />
            </a>
        </div>
    </div>
</footer>

<style>
    .nav-item:hover .nav-underline {
        width: 100%;
    }

    .join-btn::before {
        content: "";
        position: absolute;
        inset: -2px;
        background: linear-gradient(45deg, #3fca83, #7589ff, #ffcb05, #3fca83);
        background-size: 400% 400%;
        border-radius: inherit;
        opacity: 0;
        transition: opacity 0.3s;
        z-index: -1;
        animation: border-glow 3s ease infinite;
    }

    .join-btn:hover::before {
        opacity: 1;
    }

    @keyframes border-glow {
        0%,
        100% {
            background-position: 0% 50%;
        }
        50% {
            background-position: 100% 50%;
        }
    }

    footer :global(svg) {
        transition:
            transform 0.3s ease,
            filter 0.3s ease;
    }

    footer :global(svg:hover) {
        transform: scale(1.2) translateY(-2px);
        filter: drop-shadow(0 4px 8px rgba(63, 202, 131, 0.3));
    }

    .footer-glow::before {
        content: "";
        position: absolute;
        inset: 0;
        background: linear-gradient(45deg, rgba(63, 202, 131, 0.03), rgba(117, 137, 255, 0.03));
        background-size: 200% 200%;
        animation: footer-shimmer 8s ease infinite;
        pointer-events: none;
    }

    @keyframes footer-shimmer {
        0%, 100% {
            background-position: 0% 50%;
            opacity: 0.5;
        }
        50% {
            background-position: 100% 50%;
            opacity: 0.8;
        }
    }
</style>
