import React, { useEffect } from "react";

function EnergiserList() {

    const [ list, setList] = useState([]);
    useEffect(() => {
        fetch("http://localhost:8080/energisers")
            .then(res => res.json)
            .then(json => setList(json))
            .catch(e => setList([]))
    })

  return (
    <div>
      <h1>EnergiserList</h1>
    </div>
  );
}

export default EnergiserList;
