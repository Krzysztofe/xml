const fetch = require("node-fetch"); // Import node-fetch in Node.js

const sendRequest = async ({
  url,
  method = "GET",
  headers = { Accept: "application/json" },
  body,
}) => {
  const requestOptions = {
    method,
    headers,
    ...(body && { body: JSON.stringify(body) }), // Add body if it's not a GET request
  };

  try {
    const resp = await fetch(url, requestOptions);

    if (!resp.ok) {
      console.error("Error response:", resp.status, resp.statusText);
      throw new Error("Request failed. Please try again.");
    }

    const data = await resp.json();
    console.log("Response data:", data);
    return data;
  } catch (err) {
    console.error("Request error:", err.message);
    throw err;
  }
};

// Example usage:
sendRequest({
  url: "https://my-json-server.typicode.com/Krzysztofe/transactions_api/db",
  headers: {
    Accept: "application/json",
  },
});
