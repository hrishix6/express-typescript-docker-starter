import "dotenv/config";
import http, {Server} from "http";
import app from "./app";
import {ConfigService} from "./config";

ConfigService.load();

function listenAsync(server:Server, port:number)
{
    return new Promise((resolve, reject)=> {
        server.listen(port)
            .once('listening',resolve)
            .once('error',reject);
    });
}

async function main()
{
    const server = http.createServer(app);

    const port = process.env.PORT && parseInt(process.env.PORT);

    await listenAsync(server,port || 5000);
}

main().catch(err => console.error);