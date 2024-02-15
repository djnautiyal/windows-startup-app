const ExcelJS = require("exceljs");
const fs = require("fs");
const filename = "C:\\Users\\dhann\\OneDrive\\Documents\\dsa-ledger.xlsx";
const workbook = new ExcelJS.Workbook();

workbook.xlsx.readFile(filename);

window.addEventListener("DOMContentLoaded", (event) => {
  const el = document.getElementById('game');
  console.log("game button connected? Let's see.")
  if (el) {
      el.addEventListener('click', () => {
          console.log("Trying to open game related stuff.")
          readFile()
          
      });
  }
  else {
      console.log("Oops, button was not found.");
  }
})

function readFile(){
    const worksheet = workbook.getWorksheet("Striver's SDE - 191");

    // worksheet.eachRow({ includeEmpty: true }, function(row, rowNumber) {
    //     console.log('Row ' + rowNumber + ' = ' + JSON.stringify(row.values));
    //   });

    const rowCount = worksheet.rowCount;

    do{
        randomRow = Math.floor(Math.random() * rowCount);
        console.log("Row number testing: " + randomRow)
    }while(worksheet.getRow(randomRow).actualCellCount!=4);

    worksheet.getRow(randomRow).eachCell(function(cell, colNumber){
        console.log(cell.value);
    });

}