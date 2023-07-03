
// using System.Data.SqlClient;
// using Dapper;

// public static class BD
// {
//     private static string _connectionString = @"Server=localhost; DataBase=Elecciones2023;Trusted_Connection=True;";

//     public static void AgregarCandidato(Candidato can)
//     {
//         string sql = "INSERT INTO Candidato(idPartido, Apellido, Nombre, FechaNacimiento, Foto, Postulacion) VALUES (@pidPartido, @pApellido, @pNombre, @pFechaNacimiento, @pFoto, @pPostulacion)";
//         using (SqlConnection db = new SqlConnection(_connectionString))
//         {
//             db.Execute(sql, new { pidPartido = can.idPartido, pApellido = can.Apellido, pNombre = can.Nombre, pFechaNacimiento = can.fechaNacimiento, pFoto = can.Foto, pPostulacion = can.Postulacion });

//         }

//     }

//     public static int EliminarCandidato(int idCandidato)
//     {
//         int registrosEliminados = 0;
//         string sql = "DELETE FROM Candidatos WHERE idCandidato = @Candidato";
//         using (SqlConnection db = new SqlConnection(_connectionString))
//         {
//             registrosEliminados = db.Execute(sql, new { Candidato = idCandidato });
//         }
//         return registrosEliminados;
//     }

//     public static Partido verInfoPartido(int idPartido)
//     {
//         Partido miPartido = null;
//         using (SqlConnection db = new SqlConnection(_connectionString))
//         {
//             string sql = "SELECT idPartido FROM Partido WHERE idPartido = @pidPartido";
//             miPartido = db.QueryFirstOrDefault<Partido>(sql, new { pidPartido = idPartido });
//         }

//         return miPartido;
//     }

//     public static Candidato verInfoCandidato(int idCandidato)
//     {
//         Partido miCandidato = null;
//         using (SqlConnection db = new SqlConnection(_connectionString))
//         {
//             string sql = "SELECT idCandidato FROM Candidato WHERE idCandidato = @pidCandidato";
//             miCandidato = db.QueryFirstOrDefault<Candidato>(sql, new { pidCandidato = idCandidato });
//         }

//         return miCandidato;
//     }
//     public static list listarPartidos()
//     {
//         List<Partido> ListaPartidos = null;
//         using (SqlConnection db = new SqlConnection(_connectionString))
//         {
//             string sql = "SELECT * FROM Partido";
//             ListaPartidos = db.Query<Partido>(sql).ToList();
//         }

//     }

//     public static list listaCandidatos(int idCandidato)
//     {
//         List<Candidato> ListaCandidatos = null;
//         using (SqlConnection db = new SqlConnection(_connectionString))
//         {
//             string sql = "SELECT * FROM Candidato";
//             ListaCandidatos = db.Query<Candidato>(sql).ToList();
//         }
//     }
// }