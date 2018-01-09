FROM elixir:1.5.2

# Install Hex and Rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# Ensure sudo is available
RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*

# install Node.js (>= 8.0.0) and NPM
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && sudo apt-get install -y nodejs

RUN npm install -g yarn
RUN npm install -g webpack
