/**
 * Created by Lcg on 2017/9/21.
 */
// 此函数用来移除行列标题，可以用来手动改变其大小：链接：https://docs.handsontable.com/0.34.4/demo-custom-buttons.html
function removeRow() {
    var eventManager = new Handsontable.EventManager(this);

    function bindMouseEvents() {
        var instance = this;

        eventManager.addEventListener(instance.rootElement, 'mouseover', function(e) {
            if (checkRowHeader(e.target)) {
                var element = getElementFromTargetElement(e.target);

                if (element) {
                    var btn = getButton(element);

                    if (btn) {
                        btn.style.display = 'block';
                    }
                }
            }
        });

        eventManager.addEventListener(instance.rootElement, 'mouseout', function(e) {
            if (checkRowHeader(e.target)) {
                var element = getElementFromTargetElement(e.target);

                if (element) {
                    var btn = getButton(element);

                    if (btn) {
                        btn.style.display = 'none';
                    }
                }
            }
        });
    }

    var getElementFromTargetElement = function(element) {
        if (element.tagName != 'TABLE') {
            if (element.tagName == 'TH' || element.tagName == 'TD') {
                return element;
            } else {
                return getElementFromTargetElement(element.parentNode);
            }
        }

        return null;
    };

    var checkRowHeader = function(element) {
        if (element.tagName != 'BODY') {
            if (element.parentNode.tagName == 'TBODY') {
                return true;
            } else {
                element = element.parentNode;

                return checkRowHeader(element);
            }
        }

        return false;
    };

    function unbindMouseEvents() {
        eventManager.clear();
    }

    function getButton(td) {
        var btn = td.querySelector('.removeRowBtn');

        if (!btn) {
            var parent = td.parentNode.querySelector('th.htRemoveRow');

            if (parent) {
                btn = parent.querySelector('.removeRowBtn');
            }
        }

        return btn;
    }

    this.init = function() {
        var instance = this;
        var pluginEnabled = !! (instance.getSettings().removeRowPlugin);

        if (pluginEnabled) {
            bindMouseEvents.call(this);
            Handsontable.dom.addClass(instance.rootElement, 'htRemoveRow');
        } else {
            unbindMouseEvents.call(this);
            Handsontable.dom.removeClass(instance.rootElement, 'htRemoveRow');
        }
    };

    this.beforeInitWalkontable = function(walkontableConfig) {
        var instance = this;

        /**
         * rowHeaders is a function, so to alter the actual value we need to alter the result returned by this function
         */
        var baseRowHeaders = walkontableConfig.rowHeaders;
        walkontableConfig.rowHeaders = function() {
            var pluginEnabled = !! (instance.getSettings().removeRowPlugin);

            var newRowHeader = function(row, elem) {
                var child, div;

                while (child = elem.lastChild) {
                    elem.removeChild(child);
                }
                elem.className = 'htNoFrame htRemoveRow';

                if (row > -1) {
                    div = document.createElement('div');
                    div.className = 'removeRowBtn';
                    div.appendChild(document.createTextNode('x'));
                    elem.appendChild(div);

                    eventManager.addEventListener(div, 'mouseup', function() {
                        instance.alter('remove_row', row);
                    });
                }
            };

            return pluginEnabled ? Array.prototype.concat.call([], newRowHeader, baseRowHeaders()) : baseRowHeaders();
        };
    }
}

var htRemoveRow = new removeRow();

Handsontable.hooks.add('beforeInitWalkontable', function(walkontableConfig) {
    htRemoveRow.beforeInitWalkontable.call(this, walkontableConfig);
});

Handsontable.hooks.add('beforeInit', function() {
    htRemoveRow.init.call(this)
});

Handsontable.hooks.add('afterUpdateSettings', function() {
    htRemoveRow.init.call(this)
});

var
    data = [
        ['', 'Tesla', 'Nissan', 'Toyota', 'Honda', 'Mazda', 'Ford'],
        ['2017', 10, 11, 12, 13, 15, 16],
        ['2018', 10, 11, 12, 13, 15, 16],
        ['2019', 10, 11, 12, 13, 15, 16],
        ['2020', 10, 11, 12, 13, 15, 16],
        ['2021', 10, 11, 12, 13, 15, 16]
    ],
    container = document.getElementById('example1'),
    selectFirst = document.getElementById('selectFirst'),
    rowHeaders = document.getElementById('rowHeaders'),
    colHeaders = document.getElementById('colHeaders'),
    hot;

hot = new Handsontable(container, {
    rowHeaders: true,
    colHeaders: true,
    outsideClickDeselects: false,
    removeRowPlugin: true
});
hot.loadData(data);

Handsontable.dom.addEvent(selectFirst, 'click', function () {
    hot.selectCell(0,0);
});
Handsontable.dom.addEvent(rowHeaders, 'click', function () {
    hot.updateSettings({
        rowHeaders: this.checked
    });
});
Handsontable.dom.addEvent(colHeaders, 'click', function () {
    hot.updateSettings({
        colHeaders: this.checked
    });
});

