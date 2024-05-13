

### **Setup: Three Horses**
- **Horse A: 50% (0.50) chance of winning**
- **Horse B: 30% (0.30) chance of winning**
- **Horse C: 20% (0.20) chance of winning**

### **Objective:**
We aim to calculate the probability that **Horse A finishes second** (\(P(A2)\)), specifically looking at the conditional scenarios where Horse B and then Horse C win.

### **Calculating \(P(A2)\) with Conditional Probabilities:**

#### **Scenario 1: Horse B Wins (\(B1\))**
Here, we determine \(P(A2|B1)\), the probability of Horse A finishing second given that Horse B wins.

1. **Probability of Horse B winning (\(P(B1)\)):**
   - \(P(B1) = 0.30\)

2. **Conditional Probability \(P(A2|B1)\):**
   - **Recalculating for only Horse A and Horse C:**
     - Total remaining probability = \(P(A) + P(C) = 0.50 + 0.20 = 0.70\)
   - **Conditional Probability that Horse A finishes second given B wins:**
     - \(P(A2|B1) = \frac{P(A)}{P(A) + P(C)} = \frac{0.50}{0.70} \approx 0.714\)

3. **Joint Probability \(P(A2 \cap B1)\):**
   - \(P(A2 \cap B1) = P(B1) \times P(A2|B1) = 0.30 \times 0.714 \approx 0.2142\)

#### **Scenario 2: Horse C Wins (\(C1\))**
Next, we calculate \(P(A2|C1)\), the probability of Horse A finishing second given that Horse C wins.

1. **Probability of Horse C winning (\(P(C1)\)):**
   - \(P(C1) = 0.20\)

2. **Conditional Probability \(P(A2|C1)\):**
   - **Recalculating for only Horse A and Horse B:**
     - Total remaining probability = \(P(A) + P(B) = 0.50 + 0.30 = 0.80\)
   - **Conditional Probability that Horse A finishes second given C wins:**
     - \(P(A2|C1) = \frac{P(A)}{P(A) + P(B)} = \frac{0.50}{0.80} = 0.625\)

3. **Joint Probability \(P(A2 \cap C1)\):**
   - \(P(A2 \cap C1) = P(C1) \times P(A2|C1) = 0.20 \times 0.625 = 0.125\)

### **Total Probability that Horse A Finishes Second (\(P(A2)\)):**
- \(P(A2) = P(A2 \cap B1) + P(A2 \cap C1)\)
- \(P(A2) = 0.2142 + 0.125 = 0.3392\) or about 33.92%
