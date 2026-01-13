<script lang="ts">
    import Github from "$lib/assets/logos/Github.svelte";
    import Instagram from "$lib/assets/logos/Instagram.svelte";
    import Linkedin from "$lib/assets/logos/Linkedin.svelte";
    import ArrowTopRight from "$lib/assets/ArrowTopRight.svelte";
    import JoinQR from "$lib/assets/joinQR.svg";
</script>

<div class="min-h-screen relative pt-32 px-4 sm:px-8 lg:px-20" id="contact-section">
    <!-- Glow effects -->
    <div
        class="absolute right-20 top-32 size-[500px] bg-[#7589FF] opacity-20 blur-[350px] pointer-events-none"
    ></div>
    <div
        class="absolute left-0 top-1/2 size-[400px] bg-[#3FCA83] opacity-15 blur-[300px] pointer-events-none"
    ></div>

    <div class="w-full max-w-6xl mx-auto relative z-10">

        <h1 class="montserrat text-[64px] sm:text-[80px] leading-none tracking-[-4px] font-medium mb-4">
            Contact <span class="gradient-text">ACM</span>
        </h1>

        <p class="text-[16px] font-normal roboto-mono leading-[28px] tracking-[-0.72px] max-w-3xl mb-16">
            Got a question about ACM @ UM-Flint? Reach out and ask us anything.
            <span class="text-[#7589FF]">How to join the club</span>, when our next coding session or hackathon is,
            how to start in <span class="text-[#FFCB05]">algorithms or AI</span>, how to collaborate on an event,
            or how to sponsor our projects – <span class="text-[#3FCA83]">we're happy to talk about it all.</span>
        </p>

        <div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
            <!-- Map Card -->
            <div class="contact-card border border-gray-400 p-1.5 flex flex-col transition-all duration-300 hover:border-[#7589ff] hover:shadow-[0_0_30px_rgba(117,137,255,0.15)]">
                <p class="text-[10px] roboto-mono">LOCATION</p>
                <div class="flex-1 p-2">
                    <iframe
                        title="UM-Flint College of Innovation & Technology Location"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5834.147533421484!2d-83.6902036886266!3d43.01883447101895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882383cadbb81233%3A0x743e72b4d1f50dee!2sUM-Flint%20College%20of%20Innovation%20%26%20Technology!5e0!3m2!1sen!2sus!4v1766623186620!5m2!1sen!2sus"
                        class="w-full h-[350px] rounded-lg"
                        style="border:0;"
                        loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"
                    ></iframe>
                </div>
                <p class="text-[10px] roboto-mono text-end">COLLEGE OF INNOVATION & TECHNOLOGY</p>
            </div>

            <!-- Contact Info Card -->
            <div class="contact-card border border-gray-400 p-1.5 flex flex-col transition-all duration-300 hover:border-[#3fca83] hover:shadow-[0_0_30px_rgba(63,202,131,0.15)]">
                <p class="text-[10px] roboto-mono">CONTACT INFO</p>
                <div class="p-6 flex-1 flex flex-col">
                    <div class="mb-6">
                        <h3 class="text-[10px] roboto-mono text-white/50 mb-2">EMAIL</h3>
                        <a href="mailto:acm-chapter@umich.edu" class="text-lg hover:text-[#3FCA83] transition-colors">acm-chapter@umich.edu</a>
                    </div>

                    <div class="mb-6">
                        <h3 class="text-[10px] roboto-mono text-white/50 mb-2">SCAN TO JOIN</h3>
                        <img src={JoinQR} alt="QR Code to join" class="w-28 h-28 qr-code" />
                    </div>

                    <a
                        href="https://campusconnections.umflint.edu/ACM/club_signup"
                        target="_blank"
                        class="join-btn block w-full mt-auto relative overflow-hidden px-6 py-2.5 border-2 font-semibold border-white/80 cursor-pointer transition-all duration-300 hover:border-[#3fca83] hover:shadow-[0_0_30px_rgba(63,202,131,0.3)] group text-center"
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

                    <div class="mt-6 flex gap-4">
                        <a href="https://github.com/ACM-at-UMFlint" target="_blank" class="social-icon text-white/50 hover:text-white transition-colors">
                            <Github />
                        </a>
                        <a href="https://instagram.com/acm.umflint" target="_blank" class="social-icon text-white/50 hover:text-[#E1306C] transition-colors">
                            <Instagram />
                        </a>
                        <a href="https://linkedin.com/company/acm-at-umflint" target="_blank" class="social-icon text-white/50 hover:text-[#0A66C2] transition-colors">
                            <Linkedin />
                        </a>
                    </div>
                </div>
                <p class="text-[10px] roboto-mono text-end">ACM @ UM-FLINT</p>
            </div>
        </div>

        <!-- Social Buttons -->
        <div class="flex flex-wrap justify-center items-center gap-4 mt-16">
            <a
                href="https://github.com/ACM-at-UMFlint"
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
            <a
                href="https://instagram.com/acm.umflint"
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
            <a
                href="https://linkedin.com/company/acm-at-umflint"
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
</div>

<style>
    #contact-section {
        background-image: radial-gradient(
            rgba(255, 255, 255, 0.3) 1px,
            transparent 1px
        );
        background-size: 15px 15px;
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

    .contact-card {
        position: relative;
        overflow: hidden;
    }

    .contact-card::after {
        content: "";
        position: absolute;
        bottom: 0;
        left: 0;
        width: 0;
        height: 2px;
        background: linear-gradient(90deg, #3fca83, #7589ff);
        transition: width 0.4s ease;
    }

    .contact-card:hover::after {
        width: 100%;
    }

    .contact-card::before {
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

    .contact-card:hover::before {
        left: 100%;
    }

    iframe {
        filter: grayscale(1) invert(1) contrast(1.2);
        transition: filter 0.3s ease;
    }

    iframe:hover {
        filter: grayscale(0) invert(0) contrast(1);
    }

    .qr-code {
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
</style>