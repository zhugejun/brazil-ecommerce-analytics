# Brazil E-commerce Analytics

An analytics-engineering project on the Olist Brazilian e-commerce dataset — building tested, documented data models with dbt and DuckDB, a governed BI layer, and a leakage-aware
prediction model on top.

## Stack

- **dbt** + **DuckDB** — transformation and local warehouse
- **uv** — Python environment and dependency management
- *(coming)* MotherDuck, Lightdash, Power BI, Streamlit

## Dataset

[Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
— ~100k orders (2016–2018) across nine related tables: orders, items, customers, products, sellers, payments, reviews, geolocation, and a category-name translation.

The raw data is **not** included in this repo (Kaggle-licensed). To set it up locally:

1. Download the dataset from the link above.
2. Unzip the nine CSVs into a `data/` folder in the project root.

## Setup

Requires [uv](https://docs.astral.sh/uv/).

```bash
uv sync
```

## Roadmap

- [x] Project scaffold (uv + dbt + DuckDB)
- [ ] Staging layer + data-quality tests
- [ ] Dimensional models (dims, facts, customer 360)
- [ ] Retention, delivery & satisfaction analytics
- [ ] Late-delivery prediction model
- [ ] Governed BI layer (MotherDuck → Lightdash / Power BI / Streamlit)
- [ ] AI-footprint analysis capstone

---

*Portfolio project documenting an analytics-engineering build end to end. Follow along in the [blog series](#) (link coming soon).*
