# DevOps Intern Final Assessment

**Name:** Safwan
**Date:** August 2026

## Project Description

This repo is a small end-to-end DevOps pipeline demonstrating Git/GitHub,
Linux scripting, Docker, CI/CD with GitHub Actions, job scheduling with
Nomad, and log monitoring with Grafana Loki. Each step's output feeds into
the next, simulating a realistic (if simplified) DevOps workflow.

## 1. Git & GitHub Setup

`hello.py` is a simple script that prints `Hello, DevOps!`. This repo is
public so it can be reviewed directly on GitHub.

Run it locally:

```bash
python hello.py
```

## 2. Linux & Scripting Basics

`scripts/sysinfo.sh` prints the current user, current date, and disk usage.

Make it executable and run it:

```bash
chmod +x scripts/sysinfo.sh
./scripts/sysinfo.sh
```

## 3. Docker Basics

The `Dockerfile` containerizes `hello.py` so it runs automatically on
container startup.

Build and run:

```bash
docker build -t hello-devops .
docker run --rm hello-devops
```

Expected output: `Hello, DevOps!`

## 4. CI/CD with GitHub Actions

`.github/workflows/ci.yml` runs `hello.py` automatically on every push or
pull request to `main`, using GitHub's hosted Ubuntu runner.

Status:

![CI](https://github.com/safwan-200/Devops-Final-Assesment-/actions/workflows/ci.yml/badge.svg)

## 5. Job Deployment with Nomad

`nomad/hello.nomad` defines a minimal Nomad service job that runs the
`hello-devops` Docker image with 100 MHz CPU and 128 MB memory.

Run it (with a Nomad agent running locally):

```bash
nomad job run nomad/hello.nomad
nomad job status hello
```

## 6. Monitoring with Grafana Loki

`monitoring/loki_setup.txt` documents how Loki was started locally and how
container logs were forwarded to it and queried. See that file for the
exact commands.

*(Screenshot of the Grafana Explore view can be added here.)*

## 7. Extra Credit

Not attempted in this submission.

## Repo Structure

```
devops-intern-final/
├── README.md
├── hello.py
├── Dockerfile
├── scripts/
│   └── sysinfo.sh
├── .github/
│   └── workflows/
│       └── ci.yml
├── nomad/
│   └── hello.nomad
└── monitoring/
    └── loki_setup.txt
```
