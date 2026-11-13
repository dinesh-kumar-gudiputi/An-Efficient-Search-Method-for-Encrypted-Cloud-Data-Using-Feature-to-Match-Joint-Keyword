<h1 align="center">Efficient Search on Encrypted Cloud Data Using Joint Keywords (FMJK)</h1>

<p align="center"><b>Searchable encryption for cloud documents, ranked with BM25 over joint keywords.</b></p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white" alt="Python">
  <img src="https://img.shields.io/badge/Django-092E20?logo=django&logoColor=white" alt="Django">
  <img src="https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white" alt="MySQL">
</p>

College team project (B.Tech, 2023 to 2024): a web application where data owners upload encrypted documents to the cloud and data users search them by keyword, based on the paper "An efficient search method using features to match joint keywords on encrypted cloud data".

## The idea

Encrypted cloud search usually builds one index entry per keyword, which costs storage and slows search down. The paper's method (FMJK) picks random groups of keywords from each data owner's documents to form *joint keywords*, matches each joint keyword against the document and the query to build the index and the search trapdoor, and ranks results with BM25 inner products, returning the top k. The full abstract is in [`docs/abstract.docx`](docs/abstract.docx).

## Application

- Roles: data owner (uploads documents) and data user (searches and requests downloads)
- Stack: Python 3.10, Django, MySQL (WAMP or XAMPP), HTML, CSS and JavaScript, developed in Visual Studio Code
- Encryption uses Fernet from the Python `cryptography` library
- The database dump is [`database/filesecure.sql`](database/filesecure.sql) (database name `filesecure`)

The application code is kept as a Word document, [`source/source_code.docx`](source/source_code.docx), not as a runnable Django project.

## What is in the repo

```text
.
├── docs/
│   ├── abstract.docx, project_document.pdf, presentation.pptx
│   ├── software_environment.docx, system_requirements.docx
│   └── reference/            base paper and journal paper
├── source/source_code.docx   application code (Django views and models)
├── database/filesecure.sql   MySQL dump
└── screenshots/              27 screenshots of the running application
```

## Team

Dinesh Kumar Gudiputi, Naga Lakshmi
