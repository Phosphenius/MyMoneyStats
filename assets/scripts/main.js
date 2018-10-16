'use strict';

function instantiateTemplate(templateId)
{
    let template = document.querySelector(templateId);
    
    return template.content.cloneNode(true);
}

window.addEventListener("load", function(event) {
    var date = document.getElementById("date");

    if(date) {
        date.valueAsDate = new Date();
    }

    var filterButton = document.getElementById("filter-button");

    if(filterButton) {
        filterButton.addEventListener("click", function(event) {
            var form = document.getElementById("entry-filter");
            var formData = new FormData(form);

            var xhr = new XMLHttpRequest();

            xhr.onreadystatechange = function() {
                if(xhr.readyState === 4 && xhr.status === 200) {
                    var querySel = ".entry-table > tbody > tr";
                    var entries = document.querySelectorAll(querySel);

                    for (var i = 1; i < entries.length; i++) {
                        entries[i].remove();
                    }

                    var newEntries = JSON.parse(xhr.response);

                    for (var entry of newEntries) {
                        console.log(entry);
                        var row = document.createElement("tr");

                        for (var colName of ["amount", "date", "desc"]) {
                            var col = document.createElement("td");
                            var data = entry[colName];
                            col.appendChild(document.createTextNode(data));
                            row.appendChild(col);
                        }

                        var col = document.createElement("td");

                        for (var tag of entry.tags) {
                            var link = document.createElement("a");
                            var url = "/entries?tags=" + tag.uid;
                            link.setAttribute("href", url);
                            link.appendChild(document.createTextNode(tag.value));
                            col.appendChild(link);
                        }

                        row.appendChild(col);

                        var querySel = ".entry-table > tbody";
                        var table = document.querySelector(querySel);
                        table.appendChild(row);
                    }
                }
            };

            var queryStr = "/api/v1/entries?tags=" + formData.getAll("tag")
            xhr.open("GET", queryStr, true);

            xhr.send(null);
        });
    }
});

function selectTagClick(tag) {
    console.log(tag.checked);
}

