<h1 align=center>Documentation</h1>
<h3 align=center>for my dotfiles and how to configure them</h3>

>   [!Note]
>   Some themes require that your wallpapers go on `~/Pictures/wallpapers`

## User apps

## Sys apps
  
  
<details>
  <summary> Waybar </summary>
  Your themes go on `waybar/themes` and your colors in `waybar/colors`<br>

  **Do not delete `config` and `style.css` files!**

  Use `WallpaperSelect` and `WallpaperRandom` scripts to change your wallpaper.

  ---   
</details>

<details>
  <summary> Rofi </summary>
  Your themes go on `rofi/themes` and your colors in `rofi/colors`
  
  Put the location of the main theme in the `rofi/config.rasi`, i.e:  
  

  ```console
    @theme "~/.config/rofi/themes/nova-dark.rasi"
  ```

  To use your wallpaper, you need to specify the path as well:

  In `rofi/` create a symlink to the wallpaper and name it `.current_wallpaper`.
  
  
  ---
</details>

<details>
<summary> Hyprlock </summary>

  <h3> note that hyprlock only supports .png for now! </h3>

  Simply copy `hyprlock.conf` to your `~/.config/hypr/`

</details>

<details>
<summary> Swaync </summary>
  Notifications theme go on swaync/themes/`theme`/notifications.css
  Control center theme go on swaync/themes/`theme`/control_center.css

</details>


<details>
<summary> Wlogout </summary>

  How to change the layout?

  Choose your layout between vertical(6x1) and horizontal(3x2).
  
  ```console
  ln -srf <layout>.css ~/.config/wlogout
  ```

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

    This way, whenever you open wlogout, it will take a screenshot and 'blur' it.  
    I've tested and I noticed that it takes too much time to render, prefer method 1.

  ---
</details>
