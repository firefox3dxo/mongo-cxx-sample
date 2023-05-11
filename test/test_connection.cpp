#include <gtest/gtest.h>
#include <mongoc/mongoc.h>
// "D:\Program Files\CMake\bin\cmake.EXE" --build d:/dev/mogodb/cpp/build --config Release --target ALL_BUILD -j 10
TEST(TestMongodb, TestConnection)
{
    std::cout<<"connect return "<<std::endl;
    mongoc_client_t *client = NULL;
    bson_error_t error = {0};
    mongoc_server_api_t *api = NULL;
    mongoc_database_t *database = NULL;
    bson_t *command = NULL, reply;
    // Initialize the MongoDB C Driver.
    mongoc_init();
    // Replace the <connection string> with your MongoDB deployment's connection string.
    client = mongoc_client_new("mongodb://localhost:27017");
    std::cout<<"connect return "<<client<<std::endl;
    // Set the version of the Stable API on the client.
    api = mongoc_server_api_new(MONGOC_SERVER_API_V1);
    if (!mongoc_client_set_server_api(client, api, &error))
    {
        // Error condition.
        printf("Error: %s\n", error.message);
        ASSERT_TRUE(false);
    }
    // Get a handle on the "admin" database.
    database = mongoc_client_get_database(client, "admin");

    // Ping the database.
    command = BCON_NEW("ping", BCON_INT32(1));
    if (mongoc_database_command_simple(database, command, NULL, &reply, &error))
    {
        printf("Pinged your deployment. You successfully connected to MongoDB!\n");
    }
    else
    {
        // Error condition.
        printf("Error: %s\n", error.message);
        ASSERT_TRUE(false);
    }

    // Perform Cleanup.
    bson_destroy(&reply);
    bson_destroy(command);
    mongoc_database_destroy(database);
    mongoc_client_destroy(client);
    mongoc_cleanup();
    ASSERT_TRUE(true);
}