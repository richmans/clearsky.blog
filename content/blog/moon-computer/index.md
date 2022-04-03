---
title: "The computer that flew man to the moon"
date: 2020-08-17
draft: false
---
Here we are in the year 2020. It will always be remembered as the year that corona stopped the world. But in the midst of all this negative craziness, some positive things happened. One of them is SpaceX launching astronauts to the ISS, and bringing them back safely. It is an amazing achievement. But let’s not forget that more than 50 years ago, people landed on the moon! If that sounds way harder than flying circles around earth, that’s because it is.

One of the groundbreaking inventions that made the moonlanding possible were the computers that were on board the apollo spacecraft. Each mission carried three of them: one in the command module and two in the lander. For me this is the most exciting part of the entire program. This series of posts I will be focussing on this computer. My goal is that after reading my posts, you will understand why I think they are so awesome!

![Brick](brick.jpeg "Image by [wikipedia](https://en.wikipedia.org/wiki/Apollo_Guidance_Computer#/media/File:Agc_view.jpg)")

Before we start talking about chips, bits and bytes, we first need a little context.

## Apollo: born out of fear
This story begins in 1961. It was a weird time in America. The Russians are beating America in the space race. It started 4 years earlier when they launched sputnik: the first satellite. The Americans followed just a few months later. Then, last month, the first man in space. That was when America decided it would need to take drastic measures. It would take them a year to catch up on that milestone. Although you could say that they really didn’t because their flight was [suborbital and lasted only 15 minutes](https://www.nasa.gov/mission_pages/mercury/missions/freedom7.html). So Americans were lagging behind in space. But why was space suddenly so important? It had been there unexplored for millions of years, and it would not go anywhere. Why would anybody but space nerds be concerned about “who gets there first”?

The answer is fear. Since cooperating to beat the nazis in the second world war, the relations between Russia (actually back then it was the USSR, but I’ll just call it Russia for now) and America had grown cold. The development of nuclear bombs by both sides had led to a high-stakes standoff between the countries. They called it Mutually Assured Destruction (MAD). Each country could completely wipe out the other. If one country decided to do so, it knew that it could expect the same in return. So as long as nobody lost their temper, the world would continue to exist.

So these nuclear missiles were pretty scary. But what is more scary than bombs on rockets launched from Russia? Bombs launched from space. The Americans were very worried about the weaponisation of space.

![Kennedy](kennedy.jpeg "Image by [NASA](https://er.jsc.nasa.gov/seh/ricetalk.htm)")

So that is what president Kennedy thinks about as he starts his speech on a warm september day at Rice university, Houston Texas. In the next 20 or so minutes, he explains his plan for America to catch up with the Russians. You can watch the full speech here or read it here. Here’s what most people remember from this speech:

> We choose to go to the moon. We choose to go to the moon in this decade and do the other things, not because they are easy, but because they are hard, because that goal will serve to organize and measure the best of our energies and skills, because that challenge is one that we are willing to accept, one we are unwilling to postpone, and one which we intend to win, and the others, too.

Those are some big words. And big words cost big dollars. Kennedy announces that this new project will cost 50 cents per person per week. Let’s do the math. That’s about 2 dollars per month, which would be [17 dollars per in today’s money](https://www.inflationtool.com/us-dollar/1962-to-present-value?amount=2). So a 4 person family would pay 68 dollars a month. That is some real money! This was an enormous undertaking and it was important that the people supported it because they were paying a lot for it.

Kennedy motivated why people should be paying their hard-earned dollars to the government for the moon project. It wasn’t because of science, or because the space nerds will have the best day when they watch the moon landing live on tv. No, the reason is the fear that I was talking about.

> For space science, like nuclear science and all technology, has no conscience of its own. Whether it will become a force for good or ill depends on man, and only if the United States occupies a position of pre-eminence can we help decide whether this new ocean will be a sea of peace or a new terrifying theater of war.

To any American listening back then, that would translate to: “*we better get to space, or the Russians will use it to attack us!*”

So there you have it. With less than 8 years left on the clock, the young organization NASA is tasked with this ginormous task of putting boots on the moon. It wasn’t just because it was a fun and interesting science project. The future of America and the world depended on it.

## The flying computer
Although America did take their first steps into spaceflight landing on the moon seemed like a fantasy. There were a lot of unknowns: what is the moon made of? Can you actually stand on it? Can people survive space for longer than a couple of hours? How do you navigate in space? How can you even tell up from down? How do you steer a rocket-engine to get to where you want?

There was also still fear. This was a race, but there was no referree or jury. What if the Russians cheated? What if they jammed transmissions to the spacecraft, leaving it helpless in the void of space? Because of this fear, NASA had decided that at the very least, the spacecraft should be able to return to earth on its own.

To answer the question of autonomous guidance and navigation, NASA had an obvious candidate: MIT Instrumentation Labs (MIL). The lab had been working on automatic pilot and navigation systems for intercontinental missiles. For these missiles, there was a similar concern of signal jamming. Their idea for navigation was simple: If you know where the flight starts, and you measure accelerations continually, you can calculate your orientation, speed and position at each point of time.

![Guidance flow](loop.png "Image by [ResearchGate](https://www.researchgate.net)")

MIL had developed a very sensitive gyroscope platform with accelerometers on it, which could provide the input to the above algorithm. It was called the Inertial Measurement Unit (IMU). This device measured rotational forces and used motors to counter-act them, keeping a small central platform always in a fixed orientation as the spacecraft rotated around it. On this platform, 3 accelerometers measured the accelerations in all 3 axes.

![IMU](gyro.jpeg "Image by [wehackthemoon.com](https://wehackthemoon.com)")

This thing is a genius piece of engineering and deserves its own article series. I don’t really know a lot about physics and mechanics, so for now I’ll just look at it as a black box that measures acceleration. The educational site “[we hack the moon](https://wehackthemoon.com/tech/inertial-measurement-unit-mechanical-engineering-wizardry)” has a great article about this device.

For me, the interesting part is performing those calculations. In 2020, it makes sense that a computer is perfectly capable of doing that. In 1961, it was not so simple. The computers of those times were huge, heavy and power-hungry. How do you stick one of those things on a rocket where every gram of weight and square centimeter counts? And will the measurements and calculations be accurate enough to establish an orbit around the moon, and then land on it safely?
In this article we have gone from a huge and lofty idea and assignment that the president has given NASA to the technical challenges that have to be solved in order to achieve it. In the next article, we will dive into the details of the computer that made the moon-landings possible.
