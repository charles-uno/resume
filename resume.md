---
name: Charles Fyfe, PhD
email: ch@rles.uno
url: charles.uno
phone: 651-269-9245
location: Minneapolis
---

# Note to Editors

> - What gets cut? I'm a big believer in the one-page resume
> - What, if anything, deserves more space than it gets?
> - Some points aren't readily connected to outcomes. Are they still worthwhile?
> - If my goal is Software Architect, what's my next step, and how do I convey that in my summary?
> - Teaching at St Olaf *feels* relevant, but it's hard to put into words. Technical mentorship, prioritizing a curriculum "backlog," pushing students to be multi-functional, balancing group meetings vs one-on-one, etc.

# Summary

Ten years automation and analysis in Python.
Fluent in Linux and shell scripting.
Familiar with CI/CD tools such as Jenkins, Docker, and REST APIs.
Comfortable mentoring interns, onboarding employees, and evangelizing new technologies.

# Experience

## DevOps Engineer @ Cray Inc, 2018-Present (HPE, 2020-Present)

- Created a **Bash**/**Python** framework to automate testing on **Linux** supercomputers. Supported three development teams as they moved from quarterly release testing to continuous testing.
- Built an auto-triage system to forward test failures to product owners on Slack and/or Jira via **REST API**, saving dozens of person-hours of manual triage daily.
- Automated deployment of **Docker**-based services, including an **ELK** database and a **WSGI** dashboard. Enabled my team to iterate over dozens of commits per day in production-like environments.
- Wrote a **Groovy** pipeline to build, test, and distribute RPMs in support of 100+ engineers.
- Mentored two interns, one of whom was hired full-time after graduation.
- Prototyped a pipeline to dynamically provision a virtual supercomputer-like resource on commit for automated testing.
- Crawled **Jenkins** via **REST API** to monitor the health of 6 products across 27 supercomputers. Aggregated metrics onto an **nginx**/**WSGI** dashboard accessed hundreds of times daily.
- Audited **Ansible** logs during supercomputer installation. Cross-referenced runbooks with build data to identify product owners and automatically notify them of failures within minutes.
- Demonstrated pipeline best practices with an annotated end-to-end example: a **REST API** written in **Go**, wrapped in a **Docker** container, and deployed to **Kubernetes** via **Ansible**.
- Presented the Shasta test paradigm to an audience of 100+ engineers. Got VP buy-in and followed up on concerns.
- Crawled thousands of repos via BitBucket's **REST API**. Validated pipeline changes against live use cases to avoid disrupting product streams
- Triggered **Jenkins** jobs via **REST API**. Monitored the queue and throttled job submission to avoid deadlocking the skunkworks build server.

## System Test Engineer @ Cray Inc, 2016-2018

- Administered boots and upgrades for a 200-node **Linux** supercomputer in support of 20 engineers.
- Implemented a parallel **Python** package for access and analysis of supercomputer logs. Parsed terabytes of text to diagnose hardware failures on a \$70 million customer installation.
- Scraped boot logs from thousands of nodes, parsed relevant data, and ingested it into an **ELK** database. Isolated performance regressions from firmware updates nightly, rather than weekly.
- Implemented a **Python** API for control and testing of the Cray XC liquid cooling system. Isolated bugs that, if released, would have cost millions of dollars in waste and damage.
- Mentored two interns, both of whom were awarded extensions.
- Prepared and presented educational materials to onboard dozens of new employees.

<!---
Cori: 12k nodes, $70M
-->

## Performance Intern @ Cray Inc, 2014-2015

- Deployed an automated **Python** harness to run nightly tests against Cray's performance analysis tools. Filed detailed bugs against Cray, Gnu, and Intel compilers.

## Visiting Assistant Professor @ St Olaf College, 2020

- Introduced college juniors to advanced analytical and computational problem solving techniques.
- Pivoted unexpectedly from in-person to remote learning. Re-prioritized curriculum and iterated over teaching tools.

## Volunteer Coach @ Special Olympics Minnesota, 2018-Present

- Adapted coaching strategies to each athlete's physical abilities and communication skills.

<!---
- Coordinated warm-ups, meals, and parent concerns during full-day Area and State meets.
- Worked with 20 athletes aged 16 to 60 to improve health, strength, and confidence.
- incremental progress
-->

## Shop Volunteer @ Science Museum of Minnesota, 2018-2020

- Developed microcontroller applications in **Python** and **C++** for use in museum exhibits.
- Soldering, exhibit assembly.

## Research Assistant @ University of Minnesota, 2009-2016

- Benchmarked and optimized a model of near-Earth electromagnetic waves in parallel **Fortran**. Analyzed hundreds of gigabytes of data in **Python** to identify novel patterns.
- Tutored at-risk students individually, improving their performance by a full letter grade or more.
- Coordinated between professors, teaching assistants, and tutors as Head TA.

<!---
- Visualized data with **Matplotlib** to share via posters, papers, and workshops.
- Considered anomalous ring current activity as a novel driving mechanism
- automated job launch and data analysis in python
- Communicated detailed concepts to audiences with varied technical backgrounds.
- Coached new team members to improve student outcomes.
-->

# Education

## PhD (Space Physics) @ University of Minnesota, 2016
<!---
- Burlaga/Arctowski Medal Fellow
-->

## BA (Mathematics \& Physics) @ St Olaf College, 2009
<!---
- Distinction in Mathematics, Distinction in Physics, Magna Cum Laude
-->
