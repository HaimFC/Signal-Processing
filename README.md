
# Signal Processing Assignment - Computer Task

### General Information
- **Course**: Introduction to Signal Processing
---

## Task Overview
The assignment explores various aspects of discrete-time systems and signal analysis, including:
1. Verifying system properties like linearity, time-invariance, causality, and BIBO stability.
2. Analyzing frequency responses using MATLAB for given continuous-time signals.

---

## Q1: System Analysis

### Problem Description
Analyze the following discrete-time system:
\[ y[n] - 4y[n-1] + 4y[n-2] = 20x[n] + 10x[n-1] \]

Determine if the system is:
1. **Linear**
2. **Time-Invariant**
3. **Causal**
4. **BIBO Stable**
5. **Memoryless**

### MATLAB Implementation
The provided script performs:
1. **Linearity Test**: Verifies whether the system satisfies linearity conditions.
2. **Time-Invariance Test**: Ensures the system output is invariant to input shifts.
3. **Causality Check**: Confirms that the system's impulse response starts at \( n = 0 \).
4. **BIBO Stability Check**: Uses poles and impulse response to determine stability.

## Q3: Frequency Response Analysis

### Problem Description
Analyze the frequency responses of various signals using MATLAB.

### Signals
1. \( x_1(t) = 	ext{sinc}(rac{t}{6}) \)
2. \( x_2(t) = 	ext{sinc}^2(rac{t}{12}) \)
3. \( x_3(t) = \cos(rac{\pi t}{12}) \)
4. \( x_4(t) = \cos(rac{\pi t}{12}) + \sin(rac{\pi t}{6}) \)

### MATLAB Implementation
The script:
1. Computes FFT for each signal.
2. Plots magnitude spectra for different sampling intervals (\( T=4 \), \( T=8 \)).
3. Explores sampled versions of continuous-time signals.

---

## Notes
1. Exclude the Hebrew PDF document from the Git repository.
2. Test MATLAB scripts for accuracy before submission.
3. Include results of impulse responses and frequency responses as figures in the submission.
