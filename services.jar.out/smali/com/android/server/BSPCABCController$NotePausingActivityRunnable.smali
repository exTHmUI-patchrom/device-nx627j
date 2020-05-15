.class Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;
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
    name = "NotePausingActivityRunnable"
.end annotation


# instance fields
.field private mPausingPackage:Ljava/lang/String;

.field private mStackId:I

.field final synthetic this$0:Lcom/android/server/BSPCABCController;


# direct methods
.method public constructor <init>(Lcom/android/server/BSPCABCController;ILjava/lang/String;)V
    .locals 0
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 557
    iput-object p1, p0, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput p2, p0, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;->mStackId:I

    .line 559
    iput-object p3, p0, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;->mPausingPackage:Ljava/lang/String;

    .line 560
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$300(Lcom/android/server/BSPCABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$300(Lcom/android/server/BSPCABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 566
    .local v0, "resumedPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;->mPausingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    return-void

    .line 570
    .end local v0    # "resumedPackage":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$300(Lcom/android/server/BSPCABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v0, p0, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$400(Lcom/android/server/BSPCABCController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$500(Lcom/android/server/BSPCABCController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    const-string v0, "BSPCABCController"

    const-string v1, "activity paused and screen off. re-adjust CABC mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_1
    return-void
.end method
