.class Lcn/nubia/server/breathinglight/BreathingLightSettings$1;
.super Landroid/database/ContentObserver;
.source "BreathingLightSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 62
    const-string/jumbo v0, "led_light_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$000(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    goto :goto_0

    .line 65
    :cond_0
    const-string/jumbo v0, "led_light_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$100(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    goto :goto_0

    .line 68
    :cond_1
    const-string/jumbo v0, "notificationsettings"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$200(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    goto :goto_0

    .line 71
    :cond_2
    const-string/jumbo v0, "led_no_disturb_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$300(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    goto :goto_0

    .line 74
    :cond_3
    const-string/jumbo v0, "switch_main_lamp_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$400(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    goto :goto_0

    .line 77
    :cond_4
    const-string/jumbo v0, "switch_symbol_lamp_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$500(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    goto :goto_0

    .line 80
    :cond_5
    const-string/jumbo v0, "nubia_symbol_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$600(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    .line 84
    :cond_6
    :goto_0
    return-void
.end method
