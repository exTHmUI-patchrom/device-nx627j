.class Lcom/android/server/policy/SingleModeCtrl$4;
.super Landroid/content/BroadcastReceiver;
.source "SingleModeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SingleModeCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SingleModeCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 539
    iput-object p1, p0, Lcom/android/server/policy/SingleModeCtrl$4;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 542
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 543
    .local v0, "wallpaperManager":Landroid/app/WallpaperManager;
    if-nez v0, :cond_0

    .line 544
    const-string v1, "SingleModeCtrl"

    const-string v2, "WallpaperManager not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void

    .line 547
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl$4;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v2}, Lcom/android/server/policy/SingleModeCtrl;->access$1000(Lcom/android/server/policy/SingleModeCtrl;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 548
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl$4;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v2}, Lcom/android/server/policy/SingleModeCtrl;->access$1100(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    return-void
.end method
