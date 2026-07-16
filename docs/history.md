# The Story of Caelestia-NixOS

> *Every project has code.*
>
> *Some projects also have a story.*
>
> This is ours.

---

# Chapter 1 — A Simple Beginning

Like many Linux users, I wanted a desktop that truly felt like my own.

Not just beautiful.

Not just fast.

Understandable.

Reproducible.

Something I could rebuild at any time.

At first, Caelestia-NixOS was simply a personal configuration.

There was no roadmap.

No architecture.

No documentation.

Just curiosity.

---

# Chapter 2 — Discovering NixOS

Coming from traditional Linux distributions meant changing the way I thought about configuration.

Instead of modifying files directly inside `~/.config`, I began describing my system declaratively.

At first it felt unfamiliar.

Then it became liberating.

The more I learned, the more I realised that reproducibility was one of NixOS' greatest strengths.

---

# Chapter 3 — Thinking in Modules

The project reached a turning point.

Instead of adding more configuration files, I began organising the repository itself.

Large files became small modules.

Each module received a single responsibility.

The repository slowly transformed from a personal configuration into a maintainable project.

---

# Chapter 4 — Home Manager

One important goal was never forgotten:

> "It should feel as familiar as editing ~/.config."

Home Manager made this possible.

Application configuration remained easy to find while becoming fully declarative.

The familiar layout was preserved.

The implementation became reproducible.

Both worlds came together.

---

# Chapter 5 — Caelestia Shell

Integrating Caelestia Shell was another important milestone.

Rather than modifying upstream projects, the repository embraced the official Home Manager module.

This decision reduced maintenance and made upgrades significantly easier.

It reinforced one of the project's core principles:

**Upstream First.**

---

# Chapter 6 — The UWSM Discovery

One day something strange happened.

The desktop showed an unusually large reserved area beside the sidebar.

At first it looked like a graphical bug.

After careful investigation the real cause appeared.

Two independent processes were launching Caelestia Shell:

- UWSM
- The upstream systemd user service

Both were correct individually.

Together they created duplicate Quickshell instances.

The solution was surprisingly simple:

```nix
programs.caelestia.systemd.enable = false;
```

That single line became one of the project's most important architectural decisions.

It also became an ADR.

---

# Chapter 7 — Writing Everything Down

As the project grew, another realization appeared.

Code alone was not enough.

Architecture deserved documentation.

Decisions deserved explanations.

Mistakes deserved to become lessons.

The project started documenting not only **how**, but **why**.

README.

ROADMAP.

CHANGELOG.

SESSION.

DECISIONS.

CONTRIBUTING.

Architecture.

Development.

Installation.

Little by little, the documentation became part of the architecture itself.

---

# Chapter 8 — Building Together with ChatGPT

Perhaps the most unexpected chapter.

This project was developed through a close collaboration between Martin and ChatGPT.

Over approximately **20–30 hours**, ideas became discussions.

Discussions became architecture.

Architecture became code.

Code became documentation.

The AI never replaced the developer.

Instead, it became a mentor, reviewer, debugging partner and someone to think aloud with.

The project remained human from beginning to end.

---

# Chapter 9 — A New Philosophy

At some point the objective changed.

The goal was no longer simply to configure Linux.

The goal became:

Build a project that anyone could understand.

Even someone discovering NixOS for the first time.

Documentation stopped being an afterthought.

It became one of the project's main features.

---

# Chapter 10 — Version 1.1

Version 1.1 is not remembered because it added more software.

It is remembered because it gave the project an identity.

The architecture was documented.

The philosophy was written.

The roadmap was defined.

The contribution guide appeared.

The history itself became part of the repository.

This was the version where Caelestia-NixOS stopped feeling like a personal repository and started feeling like an open-source project.

---

# Looking Forward

The journey is only beginning.

Future versions may bring:

- Multiple hosts
- Hardware profiles
- CI/CD
- Installer automation
- Documentation website

But regardless of how much the project grows, one principle should never change:

Keep it simple.

Keep it understandable.

Keep learning.

---

# Final Thoughts

Software is more than code.

Good software teaches.

Good documentation lasts.

Good architecture makes future decisions easier.

If this story encourages even one person to start building something of their own...

Then writing it was worth it.

---

*"Every expert was once a beginner who decided not to stop."*

— Martin
