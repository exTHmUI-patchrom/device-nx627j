.class Lcom/android/server/wm/SurfaceAnimator$TransactionApplyListener;
.super Ljava/lang/Object;
.source "SurfaceAnimator.java"

# interfaces
.implements Landroid/view/SurfaceControl$ApplyDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SurfaceAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransactionApplyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SurfaceAnimator;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/SurfaceAnimator;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator$TransactionApplyListener;->this$0:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/SurfaceAnimator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/SurfaceAnimator;
    .param p2, "x1"    # Lcom/android/server/wm/SurfaceAnimator$1;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/wm/SurfaceAnimator$TransactionApplyListener;-><init>(Lcom/android/server/wm/SurfaceAnimator;)V

    return-void
.end method


# virtual methods
.method public onApplyDone()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator$TransactionApplyListener;->this$0:Lcom/android/server/wm/SurfaceAnimator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mPendingDestory:Landroid/view/SurfaceControl;

    .line 104
    return-void
.end method
