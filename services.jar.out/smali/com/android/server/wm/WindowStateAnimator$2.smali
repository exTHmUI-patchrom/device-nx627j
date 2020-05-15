.class Lcom/android/server/wm/WindowStateAnimator$2;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowStateAnimator;

.field final synthetic val$w:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowStateAnimator;Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowStateAnimator;

    .line 1271
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator$2;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iput-object p2, p0, Lcom/android/server/wm/WindowStateAnimator$2;->val$w:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1274
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$2;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$2;->val$w:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifySurfaceFirstShown(Ljava/lang/String;)V

    .line 1275
    return-void
.end method
