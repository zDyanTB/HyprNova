<h1 align=center>Documentation</h1>
<h3 align=center>for my dotfiles and how to configure them</h3>

## User apps

## Sys apps
- Wlogout
  
  There are two ways you can apply *blur* to Wlogout.
  
  * The simple way:
     
     In your hyprland.conf (or windowsrules.conf), set
    ```console
    layerrule = blur, gtk-layer-shell
    ```


  * The 'hard' way:

     In your wlogout/style.css, you can do
     ```css  
    window {
      background-image: url("/tmp/shot_blurred.png");
      background-repeat: no-repeat;
      background-position: center;
     ```  
     And set up a script like
    ```console
    grim - | convert - -scale 2.5% -resize 4000% /tmp/shot_blurred.png
    ```
    using [grim](https://github.com/emersion/grim).
 
    i.e: *TODO*

    This way, whenever you open wlogout, it will take a screenshot and 'blur' it.  
    I've tested and I noticed that it takes too much time to render, prefer method 1.
