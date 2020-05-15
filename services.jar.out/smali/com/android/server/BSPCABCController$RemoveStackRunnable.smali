.class Lcom/android/server/BSPCABCController$RemoveStackRunnable;
.super Ljava/lang/Object;
.source "BSPCABCController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BSPCABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveStackRunnable"
.end annotation


# instance fields
.field private mStackId:I

.field final synthetic this$0:Lcom/android/server/BSPCABCController;


# direct methods
.method public constructor <init>(Lcom/android/server/BSPCABCController;I)V
    .locals 0
    .param p2, "stackId"    # I

    .line 586
    iput-object p1, p0, Lcom/android/server/BSPCABCController$RemoveStackRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput p2, p0, Lcom/android/server/BSPCABCController$RemoveStackRunnable;->mStackId:I

    .line 588
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/android/server/BSPCABCController$RemoveStackRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$300(Lcom/android/server/BSPCABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BSPCABCController$RemoveStackRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object v0, p0, Lcom/android/server/BSPCABCController$RemoveStackRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$600(Lcom/android/server/BSPCABCController;)V

    .line 594
    return-void
.end method
