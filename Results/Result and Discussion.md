# 📊 Results and Discussion

This analysis was conducted as part of a personal learning project to explore real-world data using **MySQL**, **Power BI**, and **Excel**. The dataset covers turnover trends in Denmark’s construction industry from 2015 to 2024, segmented by industry and work type. All queries, transformations, and visualizations were performed independently to practice data cleaning, SQL querying, and dashboard creation.

> ⚠️ **Disclaimer**  
> This document is not intended for professional citation, policy use, or commercial decision-making. It reflects a personal learning exercise and may contain simplifications or assumptions. All interpretations are exploratory and should not be considered authoritative.

## 1. Total Turnover Trend (2015–2024)

The total turnover across Denmark’s construction sector increased steadily from 2015 to 2022, peaking near 700 billion DKK. This growth likely reflects strong investment in housing, infrastructure, and renovation. A slight decline in 2024 suggests market stabilization or shifting priorities post-pandemic.

<p align="center">
  <img src="Charts/Total%20turnover%20by%20year.png" alt="Domestic Sales Share" style="width:80%;"/>
</p>


## 2. Industry Ranking in 2024 (by total turnover) 

In 2024, the leading contributor to turnover was **Construction of buildings**, generating just under 200 billion DKK. **Civil engineering** followed with approximately 95 billion DKK, while **Other specialized construction activities**, **Joinery installation**, and **Electrical installation** each contributed between 65 and 75 billion DKK. Smaller sectors such as **Bricklayers** and **Painting and Glazing** remained below 25 billion DKK.

<p align="center">
  <img src="Charts/Industry%20Ranking%20in%202024%20(by%20total%20turnover).png" alt="Domestic Sales Share" style="width:80%;"/>
</p>

## 3. Industry Ranking in 2024 (by % of total turnover)

The share distribution across industries in 2024 reveals a highly concentrated market. **Construction of buildings** accounted for over 30% of total turnover, confirming its central role in Denmark’s built environment. **Civil engineering** contributed around 16%, while mid-sized sectors such as **Other specialized Construction activities**, **Electrical installation** and **Joinery** each held between 10% and 13%. The smallest shares belonged to **Bricklayers** and **Painting and Glazing**, each under 5%, indicating their more specialized or subcontracted roles.

<p align="center">
  <img src="Charts/Industry%20Ranking%20in%202024%20(by%20%25%20of%20total%20turnover).png" alt="Domestic Sales Share" style="width:80%;"/>
</p>


## 4. Housing vs Other (New Construction)

From 2015 to 2022, turnover from **housing-related new construction** grew steadily, peaking in 2022. However, from 2023 onward, **non-housing new construction** surpassed housing, suggesting a shift toward commercial, industrial, or public infrastructure projects. By 2024, the gap widened, with non-housing turnover continuing to rise while housing declined.

<p align="center">
  <img src="Charts/Trends%20Between%20Housing%20and%20Other.png" alt="Domestic Sales Share" style="width:80%;"/>
</p>

## 5. Repair vs New Construction Mix (2015–2024)

The mix of construction activities shows that **new builds** consistently dominated, peaking in 2022. **Repair and maintenance** grew steadily, especially in housing, reflecting aging infrastructure and increased renovation demand. **Civil engineering** turnover rose sharply after 2020, likely due to public investment. **Other occupation** remained a minor contributor throughout.

<p align="center">
  <img src="Charts/Trends%20of%20Repair%20and%20New%20Construction%20mix.png" alt="Domestic Sales Share" style="width:80%;"/>
</p>

## 6. Work Type Composition in 2024

In 2024, **New buildings and extensions** accounted for 25% of total turnover, confirming its role as the backbone of the industry. **Civil engineering**, when combining all subcategories, contributed approximately 28%, reflecting Denmark’s infrastructure focus. **Repair and maintenance** activities — both major repairs and ongoing maintenance — made up around 20%, showing a healthy balance between development and upkeep. **Other occupation** represented just 2%, indicating its limited financial footprint despite potential operational importance.

<p align="center">
  <img src="Charts/Work%20type%20composition%20in%202024%20(%25%20share).png" alt="Domestic Sales Share" style="width:80%;"/>
</p>
---

# 📚 Data Source and Copyright

- **Source**: Statistics Denmark (Danmarks Statistik)  
- **Dataset**: Turnover by industry and work type in the construction sector (2015–2024)  
- **License**: Public data under [Statistics Denmark’s reuse policy](https://www.dst.dk/en/presse/kildeangivelse)  
  > Data may be reused freely with proper citation. No personal or sensitive data is included.

---

# 🎓 Learning Context

This project was created by [Worku Janka](https://github.com/workujanka) exploring practical skills in:

- **MySQL**: Data cleaning, normalization, and querying  
- **Power BI and Excel**: Visualization and dashboard creation  
- **Real-world scenario**: Danish construction industry turnover trends

The goal was to showcase beginner-friendly workflows using actual public data, and to build confidence in transforming raw datasets into meaningful insights. All work was performed independently as part of a personal learning journey.
