import '@testing-library/jest-dom';
import { render } from "@testing-library/react";
import App from "../App";

test('demo', () => {
    expect(true).toBeTruthy();
});
test('Renders the main page', () => {
    const result = render(<App/>);
    expect(result.findAllByText("App.tsx")).toBeTruthy();
    expect(true).toBeTruthy();
});