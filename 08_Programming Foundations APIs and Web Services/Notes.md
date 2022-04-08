## INDEX

- [INDEX](#index)
- [Web services](#web-services)
  - [Types of web services](#types-of-web-services)
  - [Advantages of web services](#advantages-of-web-services)
  - [Considerations of web services](#considerations-of-web-services)
  - [Secure web services](#secure-web-services)
  - [APIs, and microservices](#apis-and-microservices)
- [RESTFULL APIs](#restfull-apis)
  - [API principles](#api-principles)
  - [HATEOAS](#hateoas)
- [SOAP](#soap)
- [REST vs SOAP](#rest-vs-soap)
- [GraphQL](#graphql)
  - [operation types](#operation-types)

---

## Web services

- A web service allows different systems to talk to each other over the internet. These systems can be any combination of devices or applications. It can be a Windows or Linux server, mainframe computer, your desktop computer, or smart phone. All these systems can share data through web services.
- The client sends a message and waits for a response from the server.
- The server receives the message, and the web service performs an action.
- Then, a message is sent back to the client.
- Data is transferred between client and server with a common web language, like **XML**.

### Types of web services

- **SOAP** (Simple Object Access Protocol)
  - sends messages using only `XML`
- **RESTFULL** (Representational State Transfer)
  - uses HTTP to access resourses
  - use `XML` or `JSON`

### Advantages of web services

- reusability
- interoperability (language transparency)
- usability
- deployability.

### Considerations of web services

- **Latency** is the amount of time it takes once a request is made to receive a response.
- **partial failure** is when a component like a server or network that is supposed to send a response or data back to the calling client fails to respond.

### Secure web services

- `Authentication` is about validating the identity of a client that is attempting to call a web service that accesses secure data.
  - Basic authentication, also referred to as **basic auth**, is the simplest protocol available for performing web service authentication over the HTTP protocol.
  - API key authentication is another technique used to secure web services, which requires the API to be accessed with a unique key.
- `Authorization` is the next step as it determines level of client's access

### APIs, and microservices

- all web services are APIs, but not all APIs are web services
- APIs typically have a more lightweight architecture and are good for devices with limited bandwidth like mobile devices.
- `Microservices` are fully contained, individual components that communicate with each other in calling clients.

---

## RESTFULL APIs

- `Payload` : Data sent between client and server

### API principles

1. Uniform Resource Identifier URI
2. operations
   - GET - retrieves a resourse
   - POST - creates a resourse
   - PUT - updates a resource
   - DELETE
3. Formats: HTML, XML, plain text, and other formats defined by a media type.
4. Stateless : the server will not remember or store any state about the client that made the call.

### HATEOAS

- `HATEOAS` stands for (hypermedia as the engine of application state)
- It specifies that RESTful APIs should provide enough information to the client to interact with the server. This is different from SOAP based services where a client and a server interact through a fixed contract.
- client interacts with a REST API entirely through the responses provided dynamically by the server.
- The primary advantage of HATEOAS is to avoid sending fields that require the client to interpret them and then decide what actions can be taken next. Instead, the server determines this ahead of time and conveys what the client can do by the presence or absence of the links provided.

---

## SOAP

(simple object access protocol)

- It's a **messaging protocol** that uses XML to allow applications running on different systems or platforms to communicate.
- **WSDL** will contain all the information you need, like the data types being used in the SOAP messages, and a list of all the operations available via the web service.
- SOAP is still in use and still proves to be well suited for applications where a higher level of security is needed as security, authorization, and error handling are built into the protocol.

---

## REST vs SOAP

- `REST` is like a **postcard**, very lightweight, no ceiling or opening required to read the message.

- `SOAP` is like using an **envelope**. You have to fold the letter and seal it. And it has to be opened in order to read the message. SOAP has extra overhead, more bandwidth required.
  - `SOAP` is preferred for high security and/or complex transactions.

---

## GraphQL

- GraphQL is a query language and is generally used to load data from a server to a client.
- Unlike regular SOAP or REST APIs, GraphQL gives you the ultimate **flexibility** in being able to specify in your API requests specifically what data you need and get back exactly that.

  > GraphQL is like having a personal assistant that handles all of the stops for you. You simply tell your assistant to get the groceries, get the gas, and get the kids. The assistant knows the address of all the stops and does everything for you. You simply specify everything you want done and you're able to relax and wait for the results.

### operation types

- `query` – a read‐only fetch.
- `mutation` – a write followed by a fetch.
- `subscription` – a long‐lived request that fetches data in response to source events.
