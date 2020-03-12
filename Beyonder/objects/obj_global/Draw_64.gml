///ITEMS
draw_text(0,0,string(fps))
//draw_text(0,32,string(obj_char.x))

ui_scale = (window_get_height()*1.4)/1080

draw_sprite_ext(spr_item_ui,0,window_get_width()*0.41,window_get_height()*0.95,ui_scale*obj_char.item[0,2],ui_scale*obj_char.item[0,2],0,image_blend,1)
draw_sprite_ext(spr_item_ui,0,window_get_width()*0.47,window_get_height()*0.95,ui_scale*obj_char.item[1,2],ui_scale*obj_char.item[1,2],0,image_blend,1)
draw_sprite_ext(spr_item_ui,0,window_get_width()*0.53,window_get_height()*0.95,ui_scale*obj_char.item[2,2],ui_scale*obj_char.item[2,2],0,image_blend,1)
draw_sprite_ext(spr_item_ui,0,window_get_width()*0.59,window_get_height()*0.95,ui_scale*obj_char.item[3,2],ui_scale*obj_char.item[3,2],0,image_blend,1)

draw_sprite_ext(spr_items,obj_char.item[0,0],window_get_width()*0.41,window_get_height()*0.95,ui_scale*obj_char.item[0,2],ui_scale*obj_char.item[0,2],0,image_blend,1)
draw_sprite_ext(spr_items,obj_char.item[1,0],window_get_width()*0.47,window_get_height()*0.95,ui_scale*obj_char.item[1,2],ui_scale*obj_char.item[1,2],0,image_blend,1)
draw_sprite_ext(spr_items,obj_char.item[2,0],window_get_width()*0.53,window_get_height()*0.95,ui_scale*obj_char.item[2,2],ui_scale*obj_char.item[2,2],0,image_blend,1)
draw_sprite_ext(spr_items,obj_char.item[3,0],window_get_width()*0.59,window_get_height()*0.95,ui_scale*obj_char.item[3,2],ui_scale*obj_char.item[3,2],0,image_blend,1)

draw_set_font(global.font_numbers)
draw_text(window_get_width()*0.41,window_get_height()*0.95,string(obj_char.item[0,1]))
draw_text(window_get_width()*0.47,window_get_height()*0.95,string(obj_char.item[1,1]))
draw_text(window_get_width()*0.53,window_get_height()*0.95,string(obj_char.item[2,1]))
draw_text(window_get_width()*0.59,window_get_height()*0.95,string(obj_char.item[3,1]))