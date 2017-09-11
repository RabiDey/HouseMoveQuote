draw = function (propertyTypeCharge, storage, packing) {
    
    if (propertyTypeCharge === "0" && storage === "0" && packing === "0") {
        document.getElementById("chartPlaceholder").style.display = "none";
        document.getElementById("noDataPlaceholder").textContent = "Not enough data to draw chart";
    } else {
        var chart = new CanvasJS.Chart("chartContainer", {
            backgroundColor: "rgba(160, 32, 240, 0)",
            title: {
                fontColor: "#fff",
                
            },
            animationEnabled: true, //disable here

            data: [
        {
            // Change type to "doughnut", "line", "splineArea", etc.
            type: "doughnut",
            dataPoints: [
                    { label: "propertyTypeCharge", y: parseFloat(propertyTypeCharge), indexLabelFontColor: "#fff" },
                    { label: "storage", y: parseFloat(storage), indexLabelFontColor: "#fff" },
                    { label: "packing", y: parseFloat(packing), indexLabelFontColor: "#fff" },
                    
            ]
        }
            ]
        });

        chart.render();
    }
}