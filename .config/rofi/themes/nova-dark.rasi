/* config - Launcher */

configuration {
	modi:                         "drun,calc";
    show-icons:                 true;
    display-calc:               " ";
    display-drun:               " ";
  	drun-display-format:        "{name}";
    font:                        "JetBrains Mono Nerd Font 12";
}

/* Config and colors ----------------------------------------------- */

@import "default.rasi"

/* Main Window ------------------------------------------------ */
window {
    width:                       100%;
    height:                      100%;
    margin:                      0px;
    padding:                     0px;
}

/* Main Box --------------------------------------------------- */
mainbox {

    children:                    [ "inputbar", "message", "listview", "mode-switcher" ];
    background-color:            transparent;

    spacing:                     24px;
    margin:                      0px;
    padding:                     100px 226px;
}

/* Inputbar --------------------------------------------------- */
inputbar {
    children:                    [ "prompt", "entry" ];

    border-radius:               12px;
    background-color:            @shade-bg;
    text-color:                  @text;

    spacing:                     12px;
    margin:                      0% 28%;
    padding:                     14px;
}

prompt {
    background-color:            transparent;
    text-color:                  inherit;
}

textbox-prompt-colon {
    expand:                      false;
    str:                         "::";
    background-color:            transparent;
    text-color:                  inherit;
}

/* Entry input ------------------------------------------------ */
entry {
    background-color:            transparent;
    text-color:                  inherit;
    cursor:                      inherit;
    placeholder:                 " ";
    placeholder-color:           inherit;
}

/* Listview --------------------------------------------------- */
listview {
    cursor:                      "default";
    columns:                     6;
    lines:                       4;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   false;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    background-color:            transparent;
    text-color:                  @text;

    spacing:                     0px;
    margin:                      0px;
    padding:                     0px;
}

/* ---- Mode Switcher ---- */
mode-switcher{
    background-color:            transparent;
    border:                      0px;

    margin: 0px;
    padding: 0px;
    spacing: 12px;
}
button {
    padding:                     12px 0px;
    border-radius:               12px;
    background-color:            @shade-shadow;
    text-color:                  @text;
    cursor:                      pointer;
}
button selected {
    background-color:            @shade-bg;
    border:                      1px solid;
    border-color:                @selected;
    text-color:                  white;
}

/* Elements --------------------------------------------------- */
element {
    cursor:                      pointer;
    border-radius:               24px;
    background-color:            transparent;
    text-color:                  @text;
    orientation:                 vertical;

    spacing:                     16px;
    margin:                      0px;
    padding:                     36px 0px;
}

element-icon {
    background-color:            transparent;
    text-color:                  inherit;
    size:                        72px;
    cursor:                      inherit;
}
