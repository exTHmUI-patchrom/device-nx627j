.class Lcom/android/server/display/AutomaticBrightnessBackController$1;
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

    .line 1076
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .line 1079
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$000(Lcom/android/server/display/AutomaticBrightnessBackController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1080
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    const-string/jumbo v2, "screen_auto_brightness_manual_mode_back"

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 1081
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$200(Lcom/android/server/display/AutomaticBrightnessBackController;)I

    move-result v3

    .line 1080
    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$102(Lcom/android/server/display/AutomaticBrightnessBackController;Z)Z

    .line 1082
    if-nez p1, :cond_1

    .line 1083
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$100(Lcom/android/server/display/AutomaticBrightnessBackController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1084
    const-string/jumbo v1, "screen_last_auto_brightness_back"

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 1085
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$300(Lcom/android/server/display/AutomaticBrightnessBackController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$200(Lcom/android/server/display/AutomaticBrightnessBackController;)I

    move-result v3

    .line 1084
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1088
    :cond_1
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$400()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1089
    const-string v1, "AutoBrightnessBackController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ScreenAutoBrightness] onChange: selfChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsManualMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 1090
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$100(Lcom/android/server/display/AutomaticBrightnessBackController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", lastAutoBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 1091
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$500(Lcom/android/server/display/AutomaticBrightnessBackController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ScreenAutoBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 1092
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$300(Lcom/android/server/display/AutomaticBrightnessBackController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 1089
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    :cond_2
    return-void
.end method
