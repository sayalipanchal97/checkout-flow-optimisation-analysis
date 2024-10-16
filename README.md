## Checkout Flow Optimisation Analysis with SQL and Tableau

### Project Overview
This project focuses on optimising the checkout flow for the 365 webpage using SQL for data analysis and Tableau for data visualisation. The goal is to enhance the user purchase experience by examining key metrics from 07-01-2022 to 01-31-2023. The project includes building a story-based Tableau dashboard to visualise insights, identify issues, and suggest actionable improvements.

### Data Source and Tools
 - Time Period: July 1, 2022, to January 31, 2023.
 - Platform: 365 webpage checkout data.

### Tools Used:
 - SQL: For data extraction and analysis.
 - Tableau: For creating the interactive dashboard and visualizations.

### Objectives
 - Analyze the checkout process using SQL to extract and manipulate the relevant data.
 - Build a Tableau dashboard to visualize metrics such as:
    - Monthly Checkout Success Rate
    - Monthly Cart Abandonment Rate
    - Common Checkout Errors
 - Develop actionable insights and strategies to enhance the user payment experience.

### Tableau Dashboard
The dashboard is designed as a three-page story to present insights clearly:

  Page 1: Overview of Monthly Checkout Success 
  Page 2: Overview of Monthly Cart Abandonment Rates
  Page 3: Breakdown of Common Errors
  
You can view the dashboard on Tableau Public: https://public.tableau.com/views/checkoutflowoptimisationdashboardfinal/checkouts_story?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

### Insights

#### Current State of Affairs

The Tableau dashboard reveals critical findings related to the checkout flow of the platform:

  - September 2022 witnessed the lowest checkout success rate.
  - October 2022 had the highest cart abandonment rate.
  - The most frequent error encountered during checkout was the "number field is required."
  - While 68% of users attempted to checkout via desktop and 32% via mobile, the most common error message was displayed 502 times for desktop users and escalated to 718 times for mobile users.
  
Analyzing recent metrics from the  checkout process has surfaced vital areas of concern that require immediate attention to optimize sales and improve user experience.

September 2022's dip in the checkout success rate is a clear red flag, hinting at potential underlying issues during that month. The spike in cart abandonment in October 2022 further supports this—suggesting that customers might encounter hurdles in the checkout process that dissuade them from finalizing their purchase. Of particular concern is the recurring Number Field is Required error. Not only is it the most frequently reported issue, but its higher occurrence on mobile devices—despite a smaller percentage of mobile users compared to desktop—indicates a significant discrepancy in the user experience across platforms. Mobile users seem to face a disproportionately high rate of challenges, which might discourage them from continuing their purchases.
Considering these findings, addressing the Number Field is Required error—with an intensified focus on the mobile user experience—is imperative. Equally important is a thorough review of the checkout process, especially for September and October 2022, to identify and rectify the root causes of these spikes in cart abandonment and low success rates.

#### Business Objective
After analyzing the platform's metrics and user feedback, it was identified that the checkout process had potential pain points. Users were observed abandoning their shopping carts or encountering difficulties in completing their purchases. Such patterns indicate not only lost immediate sales but also the risk of diminishing customer loyalty in the long term.

Focusing on the checkout flow is considered both strategic and impactful. A smooth and intuitive checkout process often serves as the final nudge needed for potential customers to convert their interest into a purchase. By refining this process, the aim is to address any friction points that may be causing users to abandon their carts or hesitate in finalizing their purchases.

The primary business objective is to refine and streamline the checkout flow, targeting a substantial increase in the success rate and a significant reduction in cart abandonment. Achieving this would indicate a more efficient and user-friendly checkout process, enhancing the user experience and increasing profitability.

This objective extends beyond short-term sales increases. It also involves building a foundation for long-term customer trust and satisfaction. By enhancing the checkout process, the platform invests in the overall user experience, ensuring that customers find it reliable, easy to use, and customer-centric. This approach will not only drive immediate profitability but also foster long-term customer loyalty."

#### Hypothesis

While analyzing the checkout flow data, a glaring discrepancy was recognized. Mobile users reported the 'Number Field is Required' error more frequently than desktop users, despite a significantly lower number of mobile users attempting to complete the checkout process.

This raises a crucial question regarding the user-friendliness of the mobile interface, particularly in relation to the card number input. It can be suspected that the layout or design of the card number input field may not be as intuitive or visible on smaller mobile screens as it is on desktops. Mobile users—especially those who are new to the platform or in environments with glare or interruptions—might inadvertently miss or misunderstand this input field. Based on this observation, the following hypothesis can be formulated:

The card number input may be difficult to spot on mobile displays, leading users to overlook it. By enhancing the visibility of this field—such as by increasing its size or altering its design—it is anticipated that there will be an improvement in checkout success rates, which could result in a significant increase in completed transactions and, consequently, an enhancement in the company’s revenue

### Actionable Recommendation

Several critical aspects of improvement are possible concerning these specified areas.

#### Webpage Interface Enhancements
A webpage interface is pivotal in guiding user interaction—influencing their decisions, and ensuring a smooth, frictionless experience. When users encounter obstacles or confusion during their interaction—especially during critical processes like checkout—the likelihood of abandoning the task rises significantly. The design intricacies of the checkout screen can be a decisive factor in the user's journey, determining whether they complete the purchase or leave midway. Certain critical elements, like input fields for card details, can appear constrained or be overshadowed by other components on smaller devices or screens. This can lead to users needing to enter the necessary information, leading to errors or transaction failures. Enhancing the size and overall design of the checkout screen might assist users in entering their card details more efficiently, thereby simplifying and improving the checkout process.

#### Demographics
The error message, 'Your Card was Declined', is roughly three times more prevalent on desktops than mobile devices. Most desktop users might belong to a demographic that has a higher likelihood of using cards that get declined, such as corporate cards or cards from specific banks or regions. Analyzing the user demographics or card types most used on desktops vs. mobiles will provide more precise guidance or support for these particular user segments. For example, users from certain areas might have restrictions on the number of transfers they’re allowed to issue in a single transaction. If so, we could devise a solution to offer users a payment plan in several installments to stay within the transaction limits in these countries.

#### Payment Alternatives
Offering alternative payment methods could reduce the abandonment rate due to card issues. Some customers might face card declines or prefer a different payment method for security or convenience. Introduce options like digital wallets, bank transfers, or buy-now-pay-later services. This mitigates the risk of transaction decline due to credit card limits and caters to the user's convenience and financial comfort—potentially increasing successful checkouts.

#### Real-Time Card Validation
Real-time validation of card details can catch errors before the checkout process advances to the decline stage. Implement real-time validation on desktop platforms to give immediate feedback if a card number, expiry date, or CVV is incorrectly entered, allowing them to correct it on the spot and continue their purchase smoothly. This enhances user experience and reduces the chances of cart abandonment due to such trivial errors.

### Conclusion
This project highlights the importance of optimizing the checkout flow for the 365 webpage to enhance user experience and increase conversion rates. Through detailed analysis using SQL and data visualization in Tableau, significant insights into user behavior and pain points were uncovered. The findings suggest that addressing specific issues, such as the high incidence of checkout errors on mobile devices, is crucial for improving the overall purchasing experience.
