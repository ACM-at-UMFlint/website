<script lang="ts">
    import { gsap } from "gsap";
    import { TextPlugin } from "gsap/TextPlugin";

    import Cross from "$lib/assets/Cross.svg";
    import HalfCross from "$lib/assets/HalfCross.svg";
    import Triangle from "$lib/assets/Triangle.svg";
    import HalfCircle from "$lib/assets/HalfCircle.svg";
    import Circle from "$lib/assets/Circle.svg";
    import Rectangle from "$lib/assets/Rectangle.svg";
    import Corner from "$lib/assets/Corner.svg";
    import Shelves from "$lib/assets/shelves.svg";
    import UMFlintCIT from "$lib/assets/UMFlintCIT.svg";
    import JoinQR from "$lib/assets/joinQR.svg";

    import ArrowTopRight from "$lib/assets/ArrowTopRight.svelte";
    import CampusConnections from "$lib/assets/logos/CampusConnections.svelte";
    import Github from "$lib/assets/logos/Github.svelte";
    import Instagram from "$lib/assets/logos/Instagram.svelte";
    import Linkedin from "$lib/assets/logos/Linkedin.svelte";

    import LanguageStrip from "./LanguageStrip.svelte";

    import { onMount } from "svelte";

    onMount(() => {
        gsap.registerPlugin(TextPlugin);

        const halfCircleTl = gsap.timeline({ repeat: -1 });
        const glowTl = gsap.timeline({ repeat: -1, yoyo: true });
        const pulseGlowTl = gsap.timeline({ repeat: -1, yoyo: true });
        const typewriteTl = gsap.timeline({
            repeat: -1,
            delay: 2,
            repeatDelay: 1,
        });

        gsap.from(".hero-title", {
            y: 60,
            opacity: 0,
            duration: 1,
            stagger: 0.15,
            ease: "power3.out",
        });

        gsap.from(".hero-tagline", {
            y: 30,
            opacity: 0,
            duration: 0.8,
            delay: 0.6,
            ease: "power2.out",
        });

        gsap.fromTo(
            ".hero-cta",
            { y: 20, opacity: 0 },
            {
                y: 0,
                opacity: 1,
                duration: 0.6,
                stagger: 0.1,
                delay: 0.9,
                ease: "power2.out",
            }
        );

        gsap.from("nav", {
            y: -20,
            opacity: 0,
            duration: 0.8,
            ease: "power2.out",
        });

        gsap.fromTo(
            ".shape-item",
            { scale: 0, opacity: 0 },
            {
                scale: 1,
                opacity: 1,
                duration: 1,
                stagger: 0.1,
                delay: 0.3,
                ease: "back.out(1.7)",
                onComplete: () => {
                    gsap.to("#shape-triangle", {
                        y: -20,
                        rotation: 5,
                        duration: 3,
                        repeat: -1,
                        yoyo: true,
                        ease: "sine.inOut",
                    });

                    gsap.to("#shape-corner", {
                        scale: 1.05,
                        duration: 2,
                        repeat: -1,
                        yoyo: true,
                        ease: "sine.inOut",
                    });
                },
            }
        );

        // Optimized cross rotation - single tween instead of 8 separate ones
        gsap.to("#shape-cross", {
            rotation: 360,
            duration: 8,
            ease: "none",
            repeat: -1,
        });

        gsap.to("#shape-circle-2", {
            y: -150,
            x: 100,
            duration: 2,
            repeat: -1,
            yoyo: true,
            ease: "power1.inOut",
        });

        gsap.set("#shape-half-circle", { transformOrigin: "50% 0%" });

        halfCircleTl
            .to("#shape-half-circle", {
                rotate: 180,
                duration: 1.5,
                ease: "power1.inOut",
                delay: 0.5,
            })
            .to("#shape-half-circle", {
                rotate: 360,
                duration: 1.5,
                ease: "power1.inOut",
                delay: 0.5,
            });

        glowTl
            .to("#glow-bg", {
                backgroundColor: "#3FCA83",
                duration: 3,
                ease: "power1.inOut",
                delay: 2,
            })
            .to("#glow-bg", {
                backgroundColor: "#7589FF",
                duration: 3,
                ease: "power1.inOut",
                delay: 2,
            })
            .to("#glow-bg", {
                backgroundColor: "#3FCA83",
                duration: 3,
                ease: "power1.inOut",
                delay: 2,
            });

        pulseGlowTl
            .to("#glow-bg", { opacity: 0.5, duration: 2, ease: "power1.inOut" })
            .to("#glow-bg", {
                opacity: 0.3,
                duration: 2,
                ease: "power1.inOut",
            });

        const phrases = [
            "Software Engineering",
            "Computer Science",
            "Computer Engineering",
        ];
        const typewriteEl = document.getElementById("typewrite-text");

        phrases.forEach((phrase, index) => {
            typewriteTl.to("#typewrite-text", {
                text: { value: phrase },
                duration: 1,
                ease: "none",
            });
            typewriteTl.to({}, { duration: 1.5 });
            for (let i = phrase.length; i >= 0; i--) {
                typewriteTl.call(
                    () => {
                        if (typewriteEl)
                            typewriteEl.textContent = phrase.substring(0, i);
                    },
                    [],
                    `>+=${0.8 / phrase.length}`
                );
            }
            if (index < phrases.length - 1) {
                typewriteTl.to({}, { duration: 0.3 });
            }
        });
    });
</script>

<div class="pt-32 min-h-screen relative" id="hero-section">
    <div class="px-20">
        <div class="inline-block mb-4 hero-tagline">
            <span
                class="roboto-mono text-sm tracking-widest select-none text-[#3fca83] border border-[#3fca83]/30 px-4 py-1.5 rounded-full bg-[#3fca83]/5"
            >
                ✦ ASSOCIATION FOR COMPUTING MACHINERY
            </span>
        </div>
        <h1
            class="hero-title montserrat text-[100px] leading-[100px] tracking-[-5px] font-medium"
        >
            Best
        </h1>
        <div class="flex hero-title">
            <h1
                id="typewrite-text"
                aria-label="Software Engineering"
                class="montserrat gradient-text text-[90px] leading-[100px] tracking-[-5px] h-[100px] font-medium"
            ></h1>
            <h1
                id="typewrite-cursor"
                class="typewrite-cursor transition-opacity text-[90px] leading-[100px] tracking-[-5px]"
            >
                |
            </h1>
        </div>
        <h1
            class="hero-title montserrat text-[90px] leading-[100px] tracking-[-5px] font-medium"
        >
            Club @ UM Flint
        </h1>
    </div>
    <!-- Glow effects -->
    <div
        id="glow-bg"
        class="absolute right-20 top-32 size-[700px] bg-[#3FCA83] opacity-25 blur-[400px] pointer-events-none"
    ></div>
    <div
        class="absolute left-0 top-1/2 size-[400px] bg-[#7589ff] opacity-15 blur-[300px] pointer-events-none"
    ></div>

    <!-- Animated shapes -->
    <div
        class="flex h-[400px] bottom-0 absolute left-0 right-0 overflow-x-clip pointer-events-none"
    >
        <img
            src={Corner}
            id="shape-corner"
            class="shape-item w-55 absolute bottom-[20px] -left-[10%] opacity-80 hover:opacity-100 transition-opacity"
            alt="Corner"
        />
        <img
            src={Circle}
            class="shape-item w-20 absolute bottom-[20px] left-[1.5%] opacity-80"
            alt="Circle"
        />
        <img
            src={HalfCircle}
            id="shape-half-circle"
            class="shape-item w-90 absolute bottom-[30px] left-[9%] object-contain drop-shadow-[0_0_30px_rgba(63,202,131,0.3)]"
            alt="HalfCircle"
        />
        <img
            src={HalfCross}
            class="shape-item h-90 absolute rotate-38 bottom-[30px] left-[34%] opacity-80"
            alt="HalfCross"
        />
        <img
            src={Triangle}
            id="shape-triangle"
            class="shape-item w-70 absolute bottom-0 left-[46%] lg:block hidden drop-shadow-[0_0_20px_rgba(117,137,255,0.3)]"
            alt="Triangle"
        />
        <img
            src={Cross}
            id="shape-cross"
            class="shape-item w-90 absolute top-4 left-[64%] xl:block hidden drop-shadow-[0_0_40px_rgba(255,203,5,0.2)]"
            alt="Cross"
        />
        <img
            src={Circle}
            id="shape-circle-2"
            class="shape-item w-20 absolute bottom-[20px] right-[7%]"
            alt="Circle"
        />
        <img
            src={Rectangle}
            class="shape-item w-20 absolute bottom-[20px] -right-[2%] opacity-80"
            alt="Rectangle"
        />
    </div>
</div>

<div class="min-h-screen py-20 px-5" id="about-section">
    <div class="grid grid-cols-8 h-full py-20 px-5">
        <div class="flex items-center justify-center col-span-3 h-full">
            <img
                src={Shelves}
                alt="Shelves"
                class="w-96 h-full object-contain"
            />
        </div>
        <div class="col-span-5 flex flex-col h-full">
            <h2 class="text-[64px] font-medium leading-[100px] tracking-[-4px]">
                ACM @ UM-Flint
            </h2>
            <p
                class="text-[16px] font-normal roboto-mono leading-[28px] tracking-[-0.72px]"
            >
                is a student chapter of the Association for Computing Machinery,
                the
                <span class="text-[#FFCB05]">world's largest</span><br />
                <span class="text-[#3FCA83]">computing society</span>.
            </p>
            <div class="grid grid-cols-3 flex-1 mt-8 focus-cards-container">
                <div
                    class="focus-card border border-gray-400 p-1.5 flex flex-col transition-all duration-300 hover:border-[#3fca83] hover:shadow-[0_0_30px_rgba(63,202,131,0.15)] hover:-translate-y-1"
                >
                    <p class="text-[10px] roboto-mono">FOCUS 1</p>
                    <div class="p-8 pt-4 flex-1">
                        <h3
                            class="text-[20px] leading-[37.5px] font-semibold mt-2"
                        >
                            Development & Algorithms
                        </h3>
                        <p class="roboto-mono text-[16px] mt-4">
                            Every semester we build real projects – from web
                            apps and campus tools to bots and automation scripts
                            – while learning efficient algorithms. You’ll pick
                            up modern development workflows, version control,
                            and how to write code that actually scales.
                        </p>
                    </div>
                    <p class="text-[10px] roboto-mono text-end">
                        FOR DEVELOPERS
                    </p>
                </div>
                <div
                    class="focus-card border border-gray-400 p-1.5 flex flex-col transition-all duration-300 hover:border-[#7589ff] hover:shadow-[0_0_30px_rgba(117,137,255,0.15)] hover:-translate-y-1"
                >
                    <p class="text-[10px] roboto-mono">FOCUS 2</p>
                    <div class="p-8 pt-4 flex-1">
                        <h3
                            class="text-[20px] leading-[37.5px] font-semibold mt-2"
                        >
                            AI, Data Science & Research
                        </h3>
                        <p class="roboto-mono text-[16px] mt-4">
                            We explore hands-on projects and reading groups,
                            from simple models to real datasets, and connect
                            interested students with research-oriented work and
                            faculty-driven projects.
                        </p>
                    </div>
                    <p class="text-[10px] roboto-mono text-end">
                        FOR DATA SCIENTISTS
                    </p>
                </div>
                <div
                    class="focus-card border border-gray-400 p-1.5 flex flex-col transition-all duration-300 hover:border-[#ffcb05] hover:shadow-[0_0_30px_rgba(255,203,5,0.15)] hover:-translate-y-1"
                >
                    <p class="text-[10px] roboto-mono">FOCUS 3</p>
                    <div class="p-8 pt-4 flex-1">
                        <h3
                            class="text-[20px] leading-[37.5px] font-semibold mt-2"
                        >
                            UI/UX & Product Design
                        </h3>
                        <p class="roboto-mono text-[16px] mt-4">
                            Turn ideas into interfaces people love. We cover
                            core UI/UX principles and simple tools, then partner
                            with dev teams so your designs become real products.
                        </p>
                    </div>
                    <p class="text-[10px] roboto-mono text-end">
                        FOR DESIGNERS
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div
        class="flex justify-center items-center gap-4 social-buttons-container"
    >
        <a  href="https://campusconnections.umflint.edu/ACM/club_signup"
            target="_blank"
            class="social-btn campus-btn relative overflow-hidden px-6 py-2.5 border-2 font-semibold border-white/80 cursor-pointer transition-all duration-300 group"
        >
            <span
                class="relative z-10 w-full roboto-mono flex items-center gap-2 font-semibold transition-colors duration-300 group-hover:text-white"
            >
                <CampusConnections />
                CAMPUS CONNECTION
                <ArrowTopRight
                    className="w-4 fill-white transition-all duration-300 group-hover:translate-x-0.5 group-hover:-translate-y-0.5"
                />
            </span>
            <div
                class="absolute inset-0 bg-linear-to-r from-[#00274C] translate-y-full group-hover:translate-y-0 transition-transform duration-300"
            ></div>
        </a>
        <a  href="https://github.com/ACM-at-UMFlint"
            target="_blank"
            class="social-btn github-btn relative overflow-hidden px-6 py-2.5 border-2 font-semibold border-white/80 cursor-pointer transition-all duration-300 group"
        >
            <span
                class="relative z-10 w-full roboto-mono flex items-center gap-2 font-semibold transition-colors duration-300 group-hover:text-white"
            >
                <Github />
                GITHUB
                <ArrowTopRight
                    className="w-4 fill-white transition-all duration-300 group-hover:translate-x-0.5 group-hover:-translate-y-0.5"
                />
            </span>
            <div
                class="absolute inset-0 bg-linear-to-r from-[#24292e] to-[#0d1117] translate-y-full group-hover:translate-y-0 transition-transform duration-300"
            ></div>
        </a>
        <a  href="https://instagram.com/acm_umflint"
            target="_blank"
            class="social-btn instagram-btn relative overflow-hidden px-6 py-2.5 border-2 font-semibold border-white/80 cursor-pointer transition-all duration-300 group"
        >
            <span
                class="relative z-10 w-full roboto-mono flex items-center gap-2 font-semibold transition-colors duration-300 group-hover:text-white"
            >
                <Instagram />
                INSTAGRAM
                <ArrowTopRight
                    className="w-4 fill-white transition-all duration-300 group-hover:translate-x-0.5 group-hover:-translate-y-0.5"
                />
            </span>
            <div
                class="instagram-bg absolute inset-0 translate-y-full group-hover:translate-y-0 transition-transform duration-300"
            ></div>
        </a>
        <a  href="https://linkedin.com/company/acm-um-flint"
            target="_blank"
            class="social-btn linkedin-btn relative overflow-hidden px-6 py-2.5 border-2 font-semibold border-white/80 cursor-pointer transition-all duration-300 group"
        >
            <span
                class="relative z-10 w-full roboto-mono flex items-center gap-2 font-semibold transition-colors duration-300 group-hover:text-white"
            >
                <Linkedin />
                LINKEDIN
                <ArrowTopRight
                    className="w-4 fill-white transition-all duration-300 group-hover:translate-x-0.5 group-hover:-translate-y-0.5"
                />
            </span>
            <div
                class="absolute inset-0 bg-[#0A66C2] translate-y-full group-hover:translate-y-0 transition-transform duration-300"
            ></div>
        </a>
    </div>
</div>
<LanguageStrip />
<div class="py-20 px-20" id="sponsors-section">
    <h2 class="text-6xl mb-8 font-semibold">Our Sponsors</h2>
    <p
        class="text-[16px] font-normal roboto-mono leading-[28px] tracking-[-0.72px]"
    >
        We proudly
        <span class="text-[#7589FF]">partner with sponsors</span>
        who share our vision of empowering students through technology, leadership,
        and meaningful
        <span class="text-[#FFCB05]">real-world</span>
        challenges.
    </p>
    <div class="grid grid-cols-6 mt-8 sponsor-cards-container">
        <div
            class="sponsor-card border border-gray-400 p-1.5 h-56 flex flex-col transition-all duration-300 hover:border-[#ffcb05] hover:shadow-[0_0_30px_rgba(255,203,5,0.2)]"
        >
            <p class="text-[10px] roboto-mono">EDUCATION</p>
            <div class="p-8 pt-4 flex-1 flex justify-center items-center">
                <img src={UMFlintCIT} alt="UMFlint CIT" />
            </div>
            <p class="text-[10px] roboto-mono text-end">
                COLLEGE OF INNOVATION & TECHNOLOGY
            </p>
        </div>
        <div
            class="sponsor-card border col-span-5 border-gray-400 p-1.5 h-56 flex flex-col transition-all duration-300 hover:border-[#3fca83] hover:shadow-[0_0_30px_rgba(63,202,131,0.2)]"
        >
            <p class="text-[10px] roboto-mono">ACM SPONSOR</p>
            <div class="p-8 pt-4 flex-1 flex justify-center items-center">
                <h3 class="text-6xl font-semibold">Be our next sponsor</h3>
            </div>
            <p class="text-[10px] roboto-mono text-end">SOMETHING</p>
        </div>
    </div>
    <button
        class="w-full mt-16 relative overflow-hidden px-6 py-2.5 border-2 font-semibold border-white/80 cursor-pointer transition-all duration-300 hover:border-white hover:shadow-[0_0_30px_rgba(255,255,255,0.3)] group"
    >
        <span
            class="relative z-10 w-full text-center roboto-mono font-semibold transition-colors duration-300 group-hover:text-black"
        >
            CONTACT US
        </span>
        <div
            class="absolute inset-0 bg-white translate-y-full group-hover:translate-y-0 transition-transform duration-300"
        ></div>
    </button>
</div>

<div class="py-20 px-20" id="location-section">
    <h2 class="text-6xl mb-8 font-semibold">How to join</h2>
    <p
        class="text-[16px] font-normal roboto-mono leading-[28px] tracking-[-0.72px]"
    >
        Find us in the
        <span class="text-[#7589FF]">College of Innovation & Technology</span>
        at
        <span class="text-[#FFCB05]">University of Michigan - Flint</span>
    </p>
    <div class="mt-8 flex gap-16">
        <iframe
            title="UM-Flint College of Innovation & Technology Location"
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5834.147533421484!2d-83.6902036886266!3d43.01883447101895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882383cadbb81233%3A0x743e72b4d1f50dee!2sUM-Flint%20College%20of%20Innovation%20%26%20Technology!5e0!3m2!1sen!2sus!4v1766623186620!5m2!1sen!2sus"
            width="50%"
            class="rounded-2xl"
            style="border:0;"
            loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"
        ></iframe>
        <div class="join-steps">
            <h2 class="text-5xl font-semibold">Become a member</h2>
            <p class="text-xl font-normal">in just 2 minutes</p>
            <ol class="mt-8 space-y-6 list-decimal roboto-mono list-inside">
                <li>
                    Fill the join button below or scan this QR code
                    <img src={JoinQR} class="mx-auto mt-6" alt="Join QR Code" />
                </li>
                <li>Attend any offline event of ACM and show interest</li>
                <li>
                    Follow us on Instagram and LinkedIn to get updates and find
                    a team
                </li>
            </ol>
            <a
                href="https://campusconnections.umflint.edu/ACM/club_signup"
                target="_blank"
                class="join-btn block w-full mt-12 relative overflow-hidden px-6 py-2.5 border-2 font-semibold border-white/80 cursor-pointer transition-all duration-300 hover:border-[#3fca83] hover:shadow-[0_0_30px_rgba(63,202,131,0.3)] group text-center"
            >
                <span
                    class="relative z-10 w-full text-center roboto-mono font-semibold transition-colors duration-300 group-hover:text-black"
                >
                    JOIN NOW
                </span>
                <div
                    class="absolute inset-0 bg-linear-to-r from-[#3fca83] to-[#7589ff] translate-y-full group-hover:translate-y-0 transition-transform duration-300"
                ></div>
            </a>
        </div>
    </div>
</div>

<style>
    #hero-section {
        background-image: radial-gradient(
            rgba(255, 255, 255, 0.3) 1px,
            transparent 1px
        ); /* Creates the dots */
        background-size: 15px 15px; /* Sets the spacing between dots */
    }

    .gradient-text {
        background: linear-gradient(
            135deg,
            #7589ff 0%,
            #3fca83 40%,
            #ffcb05 70%,
            #f0db3b 100%
        );
        background-size: 200% 200%;
        -webkit-background-clip: text;
        background-clip: text;
        -webkit-text-fill-color: transparent;
        animation: gradient-shift 8s ease infinite;
    }

    @keyframes gradient-shift {
        0%,
        100% {
            background-position: 0% 50%;
        }
        50% {
            background-position: 100% 50%;
        }
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

    .typewrite-cursor {
        animation: blink 0.7s step-end infinite;
    }

    @keyframes blink {
        0% {
            opacity: 1;
        }
        50% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
    }

    /* Social button hover effects */
    .social-btn::before {
        content: "";
        position: absolute;
        inset: -2px;
        border-radius: inherit;
        opacity: 0;
        transition: opacity 0.3s;
        z-index: -1;
    }

    .social-btn:hover::before {
        opacity: 1;
    }

    /* Campus Connections - UM colors */
    .campus-btn:hover {
        border-color: #ffcb05;
        box-shadow: 0 0 30px rgba(255, 203, 5, 0.4);
    }

    .campus-btn::before {
        background: #00274c;
        background-size: 400% 400%;
        animation: border-glow 3s ease infinite;
    }

    /* GitHub - Dark theme */
    .github-btn:hover {
        border-color: #6e7681;
        box-shadow: 0 0 30px rgba(110, 118, 129, 0.4);
    }

    .github-btn::before {
        background: linear-gradient(45deg, #24292e, #6e7681, #24292e);
        background-size: 400% 400%;
        animation: border-glow 3s ease infinite;
    }

    /* Instagram - Pink/Purple/Orange gradient */
    .instagram-btn:hover {
        border-color: #e1306c;
        box-shadow:
            0 0 30px rgba(225, 48, 108, 0.4),
            0 0 60px rgba(131, 58, 180, 0.2);
    }

    .instagram-btn::before {
        background: linear-gradient(
            45deg,
            #f09433,
            #e6683c,
            #dc2743,
            #cc2366,
            #bc1888,
            #833ab4,
            #5851db,
            #405de6,
            #f09433
        );
        background-size: 400% 400%;
        animation: instagram-glow 4s ease infinite;
    }

    .instagram-bg {
        background: linear-gradient(
            45deg,
            #f09433,
            #e6683c,
            #dc2743,
            #cc2366,
            #bc1888
        );
        background-size: 200% 200%;
        animation: instagram-shift 3s ease infinite;
    }

    @keyframes instagram-glow {
        0%,
        100% {
            background-position: 0% 50%;
        }
        50% {
            background-position: 100% 50%;
        }
    }

    @keyframes instagram-shift {
        0%,
        100% {
            background-position: 0% 50%;
        }
        50% {
            background-position: 100% 50%;
        }
    }

    /* LinkedIn - Blue theme */
    .linkedin-btn:hover {
        border-color: #0a66c2;
        box-shadow: 0 0 30px rgba(10, 102, 194, 0.5);
    }

    .linkedin-btn::before {
        background: linear-gradient(45deg, #0a66c2, #004182, #0a66c2);
        background-size: 400% 400%;
        animation: border-glow 3s ease infinite;
    }

    /* Focus card number styling */
    .focus-card {
        position: relative;
    }

    .focus-card::after {
        content: "";
        position: absolute;
        bottom: 0;
        left: 0;
        width: 0;
        height: 2px;
        background: linear-gradient(90deg, #3fca83, #7589ff);
        transition: width 0.4s ease;
    }

    .focus-card:hover::after {
        width: 100%;
    }

    /* Sponsor card shine effect */
    .sponsor-card {
        position: relative;
        overflow: hidden;
    }

    .sponsor-card::before {
        content: "";
        position: absolute;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background: linear-gradient(
            90deg,
            transparent,
            rgba(255, 255, 255, 0.05),
            transparent
        );
        transition: left 0.5s ease;
    }

    .sponsor-card:hover::before {
        left: 100%;
    }

    /* Map iframe glow */
    iframe {
        filter: grayscale(1) invert(1) contrast(1.2);
        transition: filter 0.3s ease;
    }

    iframe:hover {
        filter: grayscale(0) invert(0) contrast(1);
    }

    /* QR code pulse animation */
    .join-steps img {
        animation: qr-pulse 3s ease-in-out infinite;
    }

    @keyframes qr-pulse {
        0%,
        100% {
            filter: drop-shadow(0 0 0 rgba(63, 202, 131, 0));
        }
        50% {
            filter: drop-shadow(0 0 20px rgba(63, 202, 131, 0.4));
        }
    }

    /* Floating animation for shelves image */
    #about-section img {
        animation: float 6s ease-in-out infinite;
    }

    @keyframes float {
        0%,
        100% {
            transform: translateY(0);
        }
        50% {
            transform: translateY(-15px);
        }
    }
</style>
