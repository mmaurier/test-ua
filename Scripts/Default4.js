$(function () {
    var createAllErrors = function () {
        var form = $(this);
        var errorList = $('ul.errorMessages', form);

        var showAllErrorMessages = function () {
            errorList.empty();

            //Find all invalid fields within the form.
            form.find(':invalid').each(function (index, node) {

                //Find the field's corresponding label
                var label = $('label[for=' + node.id + ']');

                //Opera incorrectly does not fill the validationMessage property.
                var message = node.validationMessage || 'Invalid value.';
                errorList
                    .show()
                    .append('<li><span>' + label.html() + '</span> ' + message + '</li>');
            });
        };

        $('input[type=submit], button', form).on('click', showAllErrorMessages);
        $('input[type=text]', form).on('keypress', function (event) {
            //keyCode 13 is Enter
            if (event.keyCode == 13) {
                showAllErrorMessages();
            }
        });
    };

    $('form').each(createAllErrors);
});