import { createAsyncThunk } from '@reduxjs/toolkit';

const getGreetings = createAsyncThunk('Countries-Of-The-World/getCountries', async () => {
  try {
    const response = await fetch('http://127.0.0.1:3000/api/v1/greetings/index')
      .then((data) => data.json());
    return response;
  } catch (error) {
    return error;
  }
});

export default getGreetings;