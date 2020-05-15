.class public final Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RequestQueueEntry"
.end annotation


# instance fields
.field private final mBurstHolder:Landroid/hardware/camera2/legacy/BurstHolder;

.field private final mFrameNumber:Ljava/lang/Long;

.field private final mQueueEmpty:Z

.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/RequestQueue;Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/RequestQueue;
    .param p2, "burstHolder"    # Landroid/hardware/camera2/legacy/BurstHolder;
    .param p3, "frameNumber"    # Ljava/lang/Long;
    .param p4, "queueEmpty"    # Z

    .line 58
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->this$0:Landroid/hardware/camera2/legacy/RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->mBurstHolder:Landroid/hardware/camera2/legacy/BurstHolder;

    .line 60
    iput-object p3, p0, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->mFrameNumber:Ljava/lang/Long;

    .line 61
    iput-boolean p4, p0, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->mQueueEmpty:Z

    .line 62
    return-void
.end method


# virtual methods
.method public getBurstHolder()Landroid/hardware/camera2/legacy/BurstHolder;
    .locals 1

    .line 49
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->mBurstHolder:Landroid/hardware/camera2/legacy/BurstHolder;

    return-object v0
.end method

.method public getFrameNumber()Ljava/lang/Long;
    .locals 1

    .line 52
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->mFrameNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public isQueueEmpty()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->mQueueEmpty:Z

    return v0
.end method
