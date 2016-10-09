## Sqlatch Core

This is the backend for [Sqlatch App](https://github.com/aabreuglez/Sqlatch), made in JavaEE. 

This app is built for learning Sql in a visual way. This backend just processes 
the queries and test them against a local database using the JDBC connector.

The user has limited permissions and is only able to read.

| Path    | Method | Parameter | Parameter format | Return |
| ------- | ------ | --------- | ---------------- | ------ |
| /query  | GET    | query     |  String          | Array of Objects |


`query?query=select * from DEPT`

```
[
  {
    "deptno": "10",
    "loc": "NEW YORK",
    "dname": "ACCOUNTING"
  },
  {
    "deptno": "20",
    "loc": "DALLAS",
    "dname": "RESEARCH"
  },
  {
    "deptno": "30",
    "loc": "CHICAGO",
    "dname": "SALES"
  },
  {
    "deptno": "40",
    "loc": "BOSTON",
    "dname": "OPERATIONS"
  }
]
``` 