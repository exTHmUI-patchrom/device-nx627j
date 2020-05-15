.class Landroid/app/ActivityView$TaskStackListenerImpl;
.super Landroid/app/TaskStackListener;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityView;


# direct methods
.method private constructor <init>(Landroid/app/ActivityView;)V
    .locals 0

    .line 440
    iput-object p1, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityView;Landroid/app/ActivityView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ActivityView;
    .param p2, "x1"    # Landroid/app/ActivityView$1;

    .line 440
    invoke-direct {p0, p1}, Landroid/app/ActivityView$TaskStackListenerImpl;-><init>(Landroid/app/ActivityView;)V

    return-void
.end method

.method private getTopMostStackInfo()Landroid/app/ActivityManager$StackInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 477
    .local v0, "displayId":I
    iget-object v1, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v1}, Landroid/app/ActivityView;->access$1000(Landroid/app/ActivityView;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v1

    .line 480
    .local v1, "stackInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 481
    .local v2, "stackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 482
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$StackInfo;

    .line 484
    .local v4, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    iget v5, v4, Landroid/app/ActivityManager$StackInfo;->displayId:I

    if-eq v5, v0, :cond_0

    .line 485
    nop

    .line 481
    .end local v4    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    .restart local v4    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    return-object v4

    .line 490
    .end local v3    # "i":I
    .end local v4    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    .line 446
    return-void

    .line 449
    :cond_0
    invoke-direct {p0}, Landroid/app/ActivityView$TaskStackListenerImpl;->getTopMostStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 450
    .local v0, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-nez v0, :cond_1

    .line 451
    return-void

    .line 455
    :cond_1
    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ne p1, v1, :cond_2

    .line 456
    iget-object v1, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v1}, Landroid/app/ActivityView;->access$200(Landroid/app/ActivityView;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setResizeBackgroundColor(I)V

    .line 458
    :cond_2
    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 3
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Landroid/app/ActivityView$TaskStackListenerImpl;->getTopMostStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 466
    .local v0, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ne p1, v1, :cond_0

    .line 468
    iget-object v1, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v1}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityView$StateCallback;->onTaskMovedToFront(Landroid/app/ActivityManager$StackInfo;)V

    .line 471
    .end local v0    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    return-void
.end method
