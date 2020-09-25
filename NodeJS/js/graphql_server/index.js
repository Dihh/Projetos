const { GraphQLServer } = require('graphql-yoga')

const resolvers = {
    Query: {
        status: () => "Servidor rodando!" 
    }
}

const servidor = new GraphQLServer({
    resolvers,
    typeDefs: './schema.graphql'
})
servidor.start(() => console.log('servidor ouvindo'))

console.log("here")