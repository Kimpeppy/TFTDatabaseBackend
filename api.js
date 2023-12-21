const axios = require('axios')

const getCustomersData = () => {
    axios
        .get("https://tft-database-backend.vercel.app/api/select/champions")
        .then(data => console.log(data.data))
        .catch(error => console.log(error));
};
getCustomersData();