.class Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;
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
    name = "NoteResumingActivityRunnable"
.end annotation


# instance fields
.field private mResumingHomeActivity:Z

.field private mResumingPackage:Ljava/lang/String;

.field private mStackId:I

.field final synthetic this$0:Lcom/android/server/BSPCABCController;


# direct methods
.method public constructor <init>(Lcom/android/server/BSPCABCController;ILjava/lang/String;Z)V
    .locals 0
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isHomeActivity"    # Z

    .line 533
    iput-object p1, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput p2, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->mStackId:I

    .line 535
    iput-object p3, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    .line 536
    iput-boolean p4, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->mResumingHomeActivity:Z

    .line 537
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 541
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->mResumingHomeActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$200(Lcom/android/server/BSPCABCController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$200(Lcom/android/server/BSPCABCController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$300(Lcom/android/server/BSPCABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$300(Lcom/android/server/BSPCABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 546
    .local v0, "resumedPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    return-void

    .line 549
    .end local v0    # "resumedPackage":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$300(Lcom/android/server/BSPCABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    return-void
.end method
