<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="js/ie10-viewport-bug-workaround.js"></script>
<script src="js/arcdoc.js"></script>

<div id="search-content"></div>

<div id="search-result-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="search-result-title">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="search-result-title">Suchergebnis</h4>
            </div>
            <div class="modal-body">
                <ul id="search-result"></ul>
                <p id="not-found"></p>
            </div>
        </div>
    </div>
</div>