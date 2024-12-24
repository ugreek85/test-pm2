module.exports = {
  apps : [{
    name   : "test-app",
    script : "./app.js",
    args: "5 key1",
    stop_exit_codes: [0],
    exp_backoff_restart_delay: 100,
    env: {
      "PORT": 3002,
      "NODE_ENV": "development"
    },
  }]
}
