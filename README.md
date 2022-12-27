# Express - TypeScript - Docker - Starter
Boilerplate for typical express backend application with typescript and standard code quality tooling configured.

## Configuration

- [Node](https://nodejs.org/en/docs/) (>= 16.x.x)
- [Yarn](https://yarnpkg.com/cli/install)
- [Express](https://expressjs.com/en/4x/api.html)
- [Prettier](https://prettier.io/docs/en/index.html)
- [Eslint](https://eslint.org/docs/latest/)
- [TypeScript](https://www.typescriptlang.org/docs/handbook/release-notes/typescript-4-0.html)
- [Nodemon](https://www.npmjs.com/package/nodemon)
- [Jest](https://jestjs.io/docs/getting-started)
- [Docker](https://docs.docker.com/)

## Scripts

```sh
# runn in dev mode
$ yarn run start:dev

# run tests
$ yarn test

# generate code coverage
$ yarn run test-cov

# format code
$ yarn run format

# lint code
$ yarn run lint

# check if code is formatted correctly
$ yarn run check-formatting

# run in production
$ yarn run start:prod
```

## Docker support

- *Dockefile* for production image.
- *Dockerfile.dev* for development. 

```sh
# starts app in debug+watch mode make changes and save to auto reload
$ docker compose up
```
- *.vscode/launch.json* has debug config to attach to running docker container for debugging
using vscode.

## Notes

- name test files with '.spec.ts' suffix to exclude them in production build.

## License

MIT
