.class Lcom/android/server/display/AutomaticBrightnessBackController$2;
.super Landroid/database/ContentObserver;
.source "AutomaticBrightnessBackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessBackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessBackController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessBackController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/AutomaticBrightnessBackController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 1098
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .line 1101
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 1103
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$000(Lcom/android/server/display/AutomaticBrightnessBackController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode_back"

    .line 1102
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 1104
    .local v0, "isAutomaticMode":Z
    if-eqz v0, :cond_2

    .line 1105
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$600(Lcom/android/server/display/AutomaticBrightnessBackController;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$302(Lcom/android/server/display/AutomaticBrightnessBackController;I)I

    .line 1106
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1107
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$000(Lcom/android/server/display/AutomaticBrightnessBackController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "screen_auto_brightness_manual_mode_back"

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessBackController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$200(Lcom/android/server/display/AutomaticBrightnessBackController;)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    .line 1108
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-static {v1, v2}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$800(Lcom/android/server/display/AutomaticBrightnessBackController;Z)V

    .line 1111
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$900(Lcom/android/server/display/AutomaticBrightnessBackController;)V

    .line 1114
    :cond_2
    return-void
.end method
