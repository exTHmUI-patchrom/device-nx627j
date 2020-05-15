.class Lcom/android/internal/widget/RecyclerView$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/RecyclerView;

    .line 470
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$2;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$2;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$2;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->runPendingAnimations()V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$2;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 477
    return-void
.end method
