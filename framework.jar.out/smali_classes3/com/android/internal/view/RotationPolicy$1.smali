.class Lcom/android/internal/view/RotationPolicy$1;
.super Ljava/lang/Object;
.source "RotationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 154
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 155
    .local v0, "wm":Landroid/view/IWindowManager;
    iget-boolean v1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    if-eqz v1, :cond_0

    .line 161
    const-string v1, "persist.panel.orientation"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0x5a

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :goto_0
    goto :goto_1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v1, "RotationPolicy"

    const-string v2, "Unable to save auto-rotate setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0    # "exc":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
