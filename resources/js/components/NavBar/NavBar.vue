<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <router-link class="navbar-brand" to="/" exact>
        Laravel
    </router-link>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <router-link tag="li" class="nav-item" to="/" exact>
            <a class="nav-link">Home</a>
        </router-link>
        <router-link tag="li" class="nav-item" to="/about" exact>
            <a class="nav-link">About</a>
        </router-link>
        <router-link tag="li" class="nav-item" to="/users" exact>
            <a class="nav-link">Users</a>
        </router-link>
      </ul>
    </div>
</nav>
</template>

<script src="./navBar" />
