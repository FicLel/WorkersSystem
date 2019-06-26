<template>
	<div class="columns is-multiline">
			<div class="column is-full" >
				<label>Ingrese nombre usuario: </label>
				<input type="text" placeholder="nombre-apellido-ID" v-model="name"/>
				<button @click="addToActivated(name)">Ingresar</button>
			</div>
			<div class="column is-2" v-for="(value,index) in activated">
				{{value.name}}
				<button @click="deleteFromActivated(index)">Get me out</button>
			</div>
	</div>
</template>
<script>
	export default{
		name: 'activescreen',
		data(){
			return{
				name: '',
				activated:[]
			}
		},
		methods:{
			/**
			* This method adds items to our activated object for the binding.
			*
			* @param String			The name of the employee
			*/
			addToActivated: async function(nameItem){
				this.activated.push({name: nameItem});
			},
			/**
			* This method deletes items to our activated object.
			*
			* @param int			The index of the employee
			*/
			deleteFromActivated: async function(index){
				console.log(index);
				this.activated.splice(index, 1);
			}

		}
	}
</script>