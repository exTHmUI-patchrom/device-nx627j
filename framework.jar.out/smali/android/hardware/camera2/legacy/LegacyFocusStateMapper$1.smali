.class Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;
.super Ljava/lang/Object;
.source "LegacyFocusStateMapper.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

.field final synthetic val$afMode:Ljava/lang/String;

.field final synthetic val$currentAfRun:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .line 117
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    iput p2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "start"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 120
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$000(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$100(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I

    move-result v1

    .line 130
    .local v1, "latestAfRun":I
    iget v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    if-eq v2, v1, :cond_0

    .line 131
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAutoFocusMoving - ignoring move callbacks from old af run"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    monitor-exit v0

    return-void

    .line 138
    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 139
    nop

    .line 140
    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    .line 143
    .local v3, "newAfState":I
    :goto_0
    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0xb99cbc3

    if-eq v6, v7, :cond_3

    const v2, 0x363d9440

    if-eq v6, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "continuous-picture"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const-string v6, "continuous-video"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v5

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 149
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$200()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 146
    :pswitch_0
    goto :goto_4

    .line 149
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAutoFocus - got unexpected onAutoFocus in mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_4
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    invoke-static {v2, v3}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$302(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I

    .line 155
    .end local v1    # "latestAfRun":I
    .end local v3    # "newAfState":I
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
