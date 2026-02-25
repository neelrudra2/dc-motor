<h1 align="center">Closed-Loop DC Motor Speed Control using PID</h1>

<p align="center">
  <b>A MATLAB-based control systems project implementing PID control for DC motor speed regulation with stability and performance analysis.</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/MATLAB-Control%20Systems-orange">
  <img src="https://img.shields.io/badge/PID-Control-blue">
  <img src="https://img.shields.io/badge/Status-Completed-success">
</p>

---

## 🔍 Project Overview

This project models a DC motor using transfer function representation and implements a closed-loop PID controller for speed regulation.

The study includes:

- Open-loop response analysis  
- Manual PID tuning  
- Auto PID tuning comparison  
- Root locus stability analysis  
- Disturbance rejection evaluation  

The objective is to analyze system dynamics and controller performance in speed control applications.

---

## 🎯 Key Objectives

- Modeled DC motor transfer function using physical parameters  
- Designed and tuned PID controller to reduce steady-state error and improve transient response  
- Compared manual tuning with MATLAB auto-tuned controller  
- Evaluated disturbance rejection capability  
- Analyzed system stability using root locus  

---

## ⚙️ System Modeling

| Parameter | Description |
|-----------|------------|
| J | Rotor inertia |
| b | Viscous friction coefficient |
| K | Motor constant |
| R | Armature resistance |
| L | Armature inductance |

The motor transfer function was derived using standard electromechanical equations.

---

## 🎛️ Controller Design

The PID controller is implemented as:

PID(s) = Kp + Ki/s + Kd·s

Controller performance is evaluated using:

- Rise Time  
- Settling Time  
- Overshoot  
- Steady-State Error  

---

## 📊 Performance Analysis

| Analysis Method | Purpose |
|----------------|---------|
| Step Response | Time-domain behavior |
| Root Locus | Stability analysis |
| Auto vs Manual PID | Performance comparison |
| Disturbance Simulation | Robustness evaluation |

---

## 🖼️ Sample Output Graphs

*(Add step response, root locus, and disturbance response plots here)*

---

## ⚙️ Applications

- Electric Vehicle Traction Control  
- Industrial Motor Drives  
- Robotics Actuation Systems  
- Automotive Control Systems  
- Process Control Systems  

---

## ▶️ How to Run

1. Clone or download the repository  
2. Open MATLAB  
3. Run the script:

  ```matlab
  pid_control_motor.m
  ```

4. Observe voltage, temperature, SOC plots and fault status output

---

## 🛠️ Tools and Technologies Used
1. MATLAB
2. Control Systems Toolbox
3. Transfer Function Modeling
4. PID Controller Design
