<#macro bodycontent>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Welcome to Insense Application</h5>
                    </div>
                    <div class="ibox-content">
                        Dashboard Content Goes Here...
                    </div>
                </div>
            </div>
        </div>
    </div>
</#macro>

<#assign bodycontent = bodycontent in page/>
<@page.layout pagetitle="Insense | Dashboard"/>