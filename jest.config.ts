export default {
    preset: 'ts-jest',
    testEnvironment: 'jest-environment-jsdom',
    transform: {
        "^.+\\.tsx?$": ['ts-jest', {
            tsconfig: "tsconfig.app.json",
        }],
    },
    moduleNameMapper: {
        '\\.(gif|ttf|eot|svg|png)$': '<rootDir>/src/test/__mocks__/fileMock.ts',
        "\\.(css|less)$": "identity-obj-proxy",
    },
}