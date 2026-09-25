<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Azure DevOps Deployment</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }

    body {
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      font-family: 'Segoe UI', Roboto, -apple-system, sans-serif;
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      background-size: 400% 400%;
      animation: gradientShift 12s ease infinite;
      padding: 20px;
    }

    @keyframes gradientShift {
      0%, 100% { background-position: 0% 50%; }
      50%      { background-position: 100% 50%; }
    }

    .card {
      background: rgba(255, 255, 255, 0.12);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border: 1px solid rgba(255, 255, 255, 0.25);
      border-radius: 24px;
      padding: 60px 50px;
      max-width: 520px;
      width: 100%;
      text-align: center;
      box-shadow: 0 25px 50px rgba(0, 0, 0, 0.25);
      animation: fadeUp 0.9s ease-out;
    }

    @keyframes fadeUp {
      from { opacity: 0; transform: translateY(30px); }
      to   { opacity: 1; transform: translateY(0); }
    }

    .badge {
      display: inline-block;
      padding: 8px 18px;
      border-radius: 999px;
      background: rgba(255, 255, 255, 0.2);
      color: #fff;
      font-size: 13px;
      letter-spacing: 1.5px;
      font-weight: 600;
      margin-bottom: 24px;
      text-transform: uppercase;
    }

    h1 {
      color: #ffffff;
      font-size: 42px;
      font-weight: 800;
      margin-bottom: 16px;
      letter-spacing: -0.5px;
      line-height: 1.15;
    }

    h1 span {
      display: block;
      background: linear-gradient(90deg, #ffd89b, #ff6b9d, #c471ed);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    p.subtitle {
      color: rgba(255, 255, 255, 0.85);
      font-size: 16px;
      line-height: 1.6;
      margin-bottom: 34px;
    }

    .info-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 14px;
      margin-bottom: 30px;
    }

    .info-item {
      background: rgba(255, 255, 255, 0.1);
      border: 1px solid rgba(255, 255, 255, 0.15);
      border-radius: 14px;
      padding: 16px 12px;
      text-align: center;
    }

    .info-item .label {
      display: block;
      color: rgba(255, 255, 255, 0.65);
      font-size: 11px;
      text-transform: uppercase;
      letter-spacing: 1px;
      margin-bottom: 6px;
    }

    .info-item .value {
      color: #ffffff;
      font-size: 15px;
      font-weight: 700;
      word-break: break-all;
    }

    .pulse {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      color: #ffffff;
      font-size: 14px;
      font-weight: 600;
    }

    .dot {
      width: 10px;
      height: 10px;
      border-radius: 50%;
      background: #4ade80;
      box-shadow: 0 0 0 0 rgba(74, 222, 128, 0.7);
      animation: pulse 2s infinite;
    }

    @keyframes pulse {
      0%   { box-shadow: 0 0 0 0 rgba(74, 222, 128, 0.7); }
      70%  { box-shadow: 0 0 0 12px rgba(74, 222, 128, 0); }
      100% { box-shadow: 0 0 0 0 rgba(74, 222, 128, 0); }
    }

    .footer {
      margin-top: 28px;
      color: rgba(255, 255, 255, 0.5);
      font-size: 12px;
      letter-spacing: 0.5px;
    }
  </style>
</head>
<body>
  <div class="card">
    <div class="badge">Deployed Successfully</div>

    <h1>Azure <span>GitHub Actions</span></h1>

    <p class="subtitle">
      Built, pushed to ACR, and deployed to the VM — automatically on every push.
    </p>

    <div class="info-grid">
      <div class="info-item">
        <span class="label">Server Time</span>
        <span class="value"><%= new java.text.SimpleDateFormat("HH:mm:ss").format(new java.util.Date()) %></span>
      </div>
      <div class="info-item">
        <span class="label">Date</span>
        <span class="value"><%= new java.text.SimpleDateFormat("dd MMM yyyy").format(new java.util.Date()) %></span>
      </div>
    </div>

    <div class="pulse">
      <span class="dot"></span> Live &amp; Running
    </div>

    <div class="footer">Powered by Tomcat · Docker · GitHub Actions</div>
  </div>
</body>
</html>