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

  In your `$HOME` create a symlink to the wallpaper and name it `.current_wallpaper`.
  
  
  ---
</details>

<details>
<summary> Hyprlock </summary>

  <h3> note that hyprlock only supports .png for now! </h3>

  Simply copy `hyprlock.conf` to your `~/.config/hypr/`

</details>

<details>
<summary> Swaync </summary>

  In order to make the blur work properly, you need to add these to your `hyprland.conf`
  ```console

layerrule = blur, swaync-control-center
layerrule = blur, swaync-notification-window

layerrule = ignorezero, swaync-control-center
layerrule = ignorezero, swaync-notification-window

layerrule = ignorealpha 0.5, swaync-control-center
layerrule = ignorealpha 0.5, swaync-notification-window
  ```

  
  Notifications theme go on swaync/themes/`theme`/notifications.css <br>
  Control center theme go on swaync/themes/`theme`/control_center.css

</details>

<details>
<summary> Wlogout </summary>

- How to blur Wlogout.

     In your hyprland.conf (or windows-rules.conf), set
      
    for new versions    
    ```console
    layerrule = blur, logout_dialog
    ```

    ---
    for old versions
    ```console
    layerrule = blur, gtk-layer-shell
    ```
    
</details>
