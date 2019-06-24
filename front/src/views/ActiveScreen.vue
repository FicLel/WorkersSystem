<template>
	<div class="columns">
		<div class="columns">
			<div class="column is-4">
				<label>Ingrese nombre usuario: </label>
				<input type="text" placeholder="nombre-apellido-ID" v-model="name"/>
				<button @click="addToActive(name)">Ingresar</button>
			</div>
		</div>
		<div class="columns">
			<div class="column is-3">
			</div>
		</div>
	</div>
</template>
<script>
	export default{
		name: 'activescreen',
		data(){
			return{
				name: '',
				active:{}
			}
		},
		methods:{
			/**
			* This method adds items to our active object for the binding.
			*
			* @param String			The name of the employee
			*/
			addToActive: async function(name){
				active.push({name: name});
			}
		}
	}
</script>