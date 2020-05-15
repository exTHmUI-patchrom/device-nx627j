.class Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/DynamicsProcessing;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/DynamicsProcessing;)V
    .locals 0

    .line 2241
    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2243
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/DynamicsProcessing;Landroid/media/audiofx/DynamicsProcessing$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/audiofx/DynamicsProcessing;
    .param p2, "x1"    # Landroid/media/audiofx/DynamicsProcessing$1;

    .line 2240
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;-><init>(Landroid/media/audiofx/DynamicsProcessing;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 6
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .line 2246
    if-eqz p2, :cond_0

    .line 2247
    return-void

    .line 2249
    :cond_0
    const/4 v0, 0x0

    .line 2250
    .local v0, "l":Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-static {v1}, Landroid/media/audiofx/DynamicsProcessing;->access$200(Landroid/media/audiofx/DynamicsProcessing;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2251
    :try_start_0
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-static {v2}, Landroid/media/audiofx/DynamicsProcessing;->access$300(Landroid/media/audiofx/DynamicsProcessing;)Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2252
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-static {v2}, Landroid/media/audiofx/DynamicsProcessing;->access$300(Landroid/media/audiofx/DynamicsProcessing;)Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    move-result-object v2

    move-object v0, v2

    .line 2254
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2255
    if-eqz v0, :cond_4

    .line 2256
    const/4 v1, -0x1

    .line 2257
    .local v1, "p":I
    const/high16 v2, -0x80000000

    .line 2259
    .local v2, "v":I
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    .line 2260
    invoke-static {p3, v4}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v1

    .line 2262
    :cond_2
    array-length v3, p4

    if-ne v3, v5, :cond_3

    .line 2263
    invoke-static {p4, v4}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v2

    .line 2265
    :cond_3
    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_4

    .line 2266
    iget-object v3, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-interface {v0, v3, v1, v2}, Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/DynamicsProcessing;II)V

    .line 2269
    .end local v1    # "p":I
    .end local v2    # "v":I
    :cond_4
    return-void

    .line 2254
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
