import "./App.css";
import React, { useState, useEffect } from "react";
import EnergiserList from "./component/EnergiserList";
import SearchEnergiser from "./component/SearchEnergiser";
import CreateEnergiserForm from "./component/CreateEnergiserForm";

function App() {
  const [names, setNames] = useState([]);

  useEffect(() => {
    fetch("http://localhost:8080/energisers")
      .then((res) => res.json())
      .then((json) => setNames(json))
      .catch((error) => {
        console.error("jjjj");
        setNames((prev) => [{ name: "jack", age: 99, }]);
      });
  }, []);

  return (
    <div className="App">
      {/* <ul>
        {names.map((name) => {
          return (
          <li>
            {name.name}
            {name.age}
          </li>);
        })}
      </ul> */}
      <EnergiserList />
      <SearchEnergiser />
      <CreateEnergiserForm />
    </div>
  );
}

export default App;
