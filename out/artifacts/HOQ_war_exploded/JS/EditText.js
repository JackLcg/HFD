/**
 * Created by Lcg on 2017/9/14.
 */
// 定义双击编辑文字函数
// 函数调用例子

// <body>
// <dl>
// <dt>你的用户名:</dt>
// <dd ondblclick="ShowElement(this)">三人行团队</dd>
//     <dt>你的个性档</dt>
//     <dd ondblclick="ShowElement(this)">我闪故我在</dd>
//     </dl>
//     </body>

function ShowElement(element)
{
    var oldhtml = element.innerHTML;//获取当前表单元素值
    var newobj = document.createElement('input'); //创建input元素
    newobj.type = 'text'; //为新增元素添加类型
    // 定义onblur事件，事件将在失去焦点时候发生
    newobj.onblur = function(){
        element.innerHTML = this.value ? this.value : oldhtml; //当触发时判断新增元素值是否为空，为空则不修改，并返回原有值
    }
   element.innerHTML = ''; //将当前的表单元素置为空
    element.appendChild(newobj);
    newobj.focus();
}