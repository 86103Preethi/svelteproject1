<script>
  import Navbar from "../Navbar.svelte";

    let firstName = '';
    let lastName = '';
    let email = '';
    let password = '';
    let regSucess =false;
  
    function handleSubmit() {
      
      if (!firstName || !lastName || !email || !password) {
        alert('Please fill the form');
    
      }
      else{
        regSucess=true; 
        window.location.href='/';
      }
  
    }
   

</script>

<Navbar/>
<main class="min-h-screen py-40 bg-gradient-to-r from-purple-400 via-purple-200 to-pink-300">

  <div class='container mx-auto'>
    
  <div class='w-11/12 md:w-11/12 bg-white rounded-xl mx-auto shadow-lg overflow-hidden text-center p-8'>
    <form  on:submit|preventDefault={handleSubmit} method='post' action='/'>
        <h1 class='font-semibold m-3 p-3'>Sign In ! To explore the world...</h1>
        <div class="grid grid-cols-2 gap-5">
            <input type='text' placeholder="Firstname" bind:value={firstName}  required  class="border border-gray-400 py-1 px-2  focus:outline-none focus:border-purple-500">
            <input type='text' placeholder="surname" bind:value={lastName}  required class="border border-gray-400 py-1 px-2 focus:outline-none focus:border-purple-500">
        </div>
        <div class="mt-5">
            <input type='email' placeholder="Email Id" bind:value={email}  required class="border border-gray-400 py-1 px-2 w-full focus:outline-none focus:border-purple-500">
        </div>
        <div class="mt-5">
            <input type='password' id="password" bind:value={password}  placeholder="Password" required class="border border-gray-400 py-1 px-2 w-full focus:outline-none focus:border-purple-500">
        </div>
        <div class="mt-5">
            <span class='text-white-500'><a href='#' class="" >Forget Password</a></span>
            <div class='text-white-500'><a href='/register' class="text-purple-500 underline hover:text-purple-300" >new user? Create an account</a></div>
        </div>
        <div class="mt-5"> 
            <button 
            class='w-full bg-purple-500 py-3 text-center text-white hover:bg-purple-300 hover:text-purple-700'>
          Login</button>
        </div>
       </form>
  </div>
  

</div>

</main>

<style>

</style>
