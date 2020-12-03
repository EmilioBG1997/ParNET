    $(function () {
    $.ajax({
        type: "POST",
        url: "../controller/productoController.php",
        data: {
            flag:1
        },
        dataType: "JSON",
        success: function (response) {
            let dataPie=[];
            response.data.forEach(element => {
                dataPie.push({
                    "name":element.NOMBRE,
                    "y":element.CANTIDAD_ACTUAL
                })
            });
            Highcharts.chart('chartPie', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie'
                },
                series:dataPie
            });
        }
    });
});