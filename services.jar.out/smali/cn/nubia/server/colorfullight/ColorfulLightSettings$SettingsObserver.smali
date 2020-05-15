.class Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ColorfulLightSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/colorfullight/ColorfulLightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;


# direct methods
.method constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 281
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 282
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 283
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 287
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] onChange: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string/jumbo v0, "switch_main_lamp_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$300(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V

    goto/16 :goto_0

    .line 290
    :cond_0
    const-string/jumbo v0, "switch_color_lamp_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$400(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V

    goto/16 :goto_0

    .line 292
    :cond_1
    const-string/jumbo v0, "nubia_db_game_keys"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$500(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V

    goto/16 :goto_0

    .line 294
    :cond_2
    const-string/jumbo v0, "nubia_gamekeys_lamp"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$600(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V

    goto/16 :goto_0

    .line 296
    :cond_3
    const-string/jumbo v0, "led_light_call_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$700(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V

    goto/16 :goto_0

    .line 298
    :cond_4
    const-string/jumbo v0, "nubia_calling_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 299
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$800(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V

    goto/16 :goto_0

    .line 300
    :cond_5
    const-string/jumbo v0, "led_light_charge_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 301
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$900(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V

    goto :goto_0

    .line 302
    :cond_6
    const-string/jumbo v0, "led_light_notify_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 303
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$1000(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V

    goto :goto_0

    .line 304
    :cond_7
    const-string/jumbo v0, "switch_video_lamp_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 305
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$1100(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V

    goto :goto_0

    .line 306
    :cond_8
    const-string/jumbo v0, "nubia_media_lamp_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 307
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$1200(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V

    goto :goto_0

    .line 308
    :cond_9
    const-string/jumbo v0, "led_light_alarm_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 309
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$1300(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V

    goto :goto_0

    .line 310
    :cond_a
    const-string/jumbo v0, "nubia_alarm_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 311
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$1400(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V

    goto :goto_0

    .line 312
    :cond_b
    const-string/jumbo v0, "led_light_boot_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 313
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$1500(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V

    .line 315
    :cond_c
    :goto_0
    return-void
.end method
