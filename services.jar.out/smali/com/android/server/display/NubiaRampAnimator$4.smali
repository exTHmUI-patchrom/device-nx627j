.class Lcom/android/server/display/NubiaRampAnimator$4;
.super Landroid/database/ContentObserver;
.source "NubiaRampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaRampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaRampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaRampAnimator;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 680
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator$4;, "Lcom/android/server/display/NubiaRampAnimator$4;"
    iput-object p1, p0, Lcom/android/server/display/NubiaRampAnimator$4;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 683
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator$4;, "Lcom/android/server/display/NubiaRampAnimator$4;"
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$4;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/NubiaRampAnimator;->access$800(Lcom/android/server/display/NubiaRampAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_set_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 684
    .local v0, "brightness":I
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator$4;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v1}, Lcom/android/server/display/NubiaRampAnimator;->access$800(Lcom/android/server/display/NubiaRampAnimator;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_set_brightness"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 685
    const/16 v1, 0x1000

    if-lt v0, v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator$4;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-virtual {v1, v0}, Lcom/android/server/display/NubiaRampAnimator;->setBackScreenBrightness(I)V

    .line 688
    :cond_0
    return-void
.end method
