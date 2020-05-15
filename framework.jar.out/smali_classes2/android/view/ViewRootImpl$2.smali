.class Landroid/view/ViewRootImpl$2;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 1385
    iput-object p1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toViewScreenState(I)I
    .locals 1
    .param p1, "displayState"    # I

    .line 1422
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1423
    const/4 v0, 0x0

    nop

    .line 1422
    :cond_0
    return v0
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 1419
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 6
    .param p1, "displayId"    # I

    .line 1388
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1390
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$202(Landroid/view/ViewRootImpl;I)I

    .line 1392
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 1393
    .local v0, "oldDisplayState":I
    iget-object v1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 1394
    .local v1, "newDisplayState":I
    if-eq v0, v1, :cond_1

    .line 1395
    iget-object v2, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 1396
    iget-object v2, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 1397
    if-eqz v0, :cond_1

    .line 1398
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$2;->toViewScreenState(I)I

    move-result v2

    .line 1399
    .local v2, "oldScreenState":I
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl$2;->toViewScreenState(I)I

    move-result v3

    .line 1400
    .local v3, "newScreenState":I
    if-eq v2, v3, :cond_0

    .line 1401
    iget-object v4, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 1403
    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 1405
    iget-object v5, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v4, v5, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1406
    iget-object v4, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1411
    .end local v0    # "oldDisplayState":I
    .end local v1    # "newDisplayState":I
    .end local v2    # "oldScreenState":I
    .end local v3    # "newScreenState":I
    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 1415
    return-void
.end method
