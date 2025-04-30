# Project Research Plan
**Group 6:** Ian Bolton, Shengyang Dong, Junkai Ge, Matthew Martin  
**CS‐465‐001 SP 24‐25**  
**24 April 2025**

*This paper has been improved using a LLM in accordance with the course instructions. This note identifies its usage on a completed original concept, and that it was used to polish and streamline the presentation of and the information contained within.*

## Methodology

We aim to investigate how different types of password strength feedback—framed positively, neutrally, negatively, or not at all—affect users' likelihood to revise and improve their passwords during a simulated account creation process. Our methodology is inspired by and extends the original study by Amador et al. (2023), which explored the effects of feedback framing and specificity on password selection behavior.

**Key Differences from the Original Study:**
- We introduce a control group that receives no feedback to isolate the effect of feedback presence from framing alone.
- We do not collect survey data on perceived risk post‐task to reduce time burden and streamline implementation.
- We do not provide a functional website for the participant to use the login credentials for.

## Experimental Setup

**Interface:** A minimalistic, browser‐based simulated account creation page.

**Password Input:** Users are prompted to create a password with real‐time strength feedback using the zxcvbn library (GitHub - dropbox/zxcvbn).

**Framing Conditions:**
- **Positive:** "Nice work! You're close to having a strong password."
- **Neutral:** "Your password is rated as weak."
- **Negative:** "Your password could be easily cracked and puts your data at risk."
- **Control:** No feedback is given.

**Suggestion Condition:** A subset of users will also receive password improvement tips (e.g., "Try adding a special character.")

**Revision Opportunity:** After receiving feedback (or none), participants may revise their password.

## Data Collection

We will not store actual password strings to protect privacy. Only the following anonymized metrics will be collected:
- **initial_strength:** Score from zxcvbn (0–4)
- **feedback_type:** Positive / Neutral / Negative / None (control)
- **suggestions_provided:** Yes / No
- **final_strength:** Score after possible revision
- **revision_made:** Yes / No (boolean)

## Timeline

- **April 28–30:** Finalize experimental design & assign roles
- **May 1–4:** Build web interface (HTML/CSS/JS + zxcvbn)
- **May 5–8:** Pilot testing & debugging
- **May 9–14:** Collect data from class participants
- **May 15–17:** Clean and anonymize data
- **May 18–23:** Analyze results (stats on strength improvement, etc.)
- **May 24–27:** Interpret results and draft conclusions
- **May 28–30:** Final report and presentation preparation
- **May 31:** Submit final report and give presentation

## Tools & Resources

- **Password Strength Analyzer:** zxcvbn
- **Frontend Platform:** HTML/CSS/JavaScript
- **Data Collection:** Simple backend logging
- **Statistical Analysis:** Python (pandas, matplotlib) or R

## Goals

- Determine if feedback presence and framing style influence password improvement.
- Evaluate whether behavioral nudges based on prospect theory are effective even for security‐aware users.
- Provide insight into which type of feedback (or lack thereof) motivates users to revise their password.
