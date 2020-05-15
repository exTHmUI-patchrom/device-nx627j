.class Lcom/android/internal/widget/DecorCaptionView$1;
.super Ljava/lang/Object;
.source "DecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/DecorCaptionView;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 415
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView$1;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 418
    const/4 v0, 0x1

    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->change4DNode(Z)V

    .line 419
    return-void
.end method
