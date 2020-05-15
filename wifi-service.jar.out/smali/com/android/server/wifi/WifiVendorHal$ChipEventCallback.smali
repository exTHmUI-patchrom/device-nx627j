.class Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;
.super Landroid/hardware/wifi/V1_0/IWifiChipEventCallback$Stub;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChipEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0

    .line 3062
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Landroid/hardware/wifi/V1_0/IWifiChipEventCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiVendorHal;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiVendorHal$1;

    .line 3062
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    return-void
.end method

.method public static synthetic lambda$onDebugErrorAlert$1(Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "debugData"    # Ljava/util/ArrayList;
    .param p2, "errorCode"    # I

    .line 3136
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3137
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->access$1400(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3138
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->access$1400(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    move-result-object v1

    .line 3139
    .local v1, "eventHandler":Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3142
    nop

    .line 3143
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 3142
    invoke-interface {v1, p2, v0}, Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;->onWifiAlert(I[B)V

    .line 3144
    return-void

    .line 3137
    .end local v1    # "eventHandler":Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 3139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$onDebugRingBufferDataAvailable$0(Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;
    .param p2, "data"    # Ljava/util/ArrayList;

    .line 3089
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3090
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->access$1400(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 3091
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->access$1400(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    move-result-object v1

    .line 3092
    .local v1, "eventHandler":Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3109
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3110
    .local v0, "sizeBefore":I
    const/4 v2, 0x0

    .line 3112
    .local v2, "conversionFailure":Z
    nop

    .line 3113
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wifi/WifiVendorHal;->access$1500(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v4

    .line 3112
    invoke-interface {v1, v3, v4}, Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;->onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V

    .line 3114
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3115
    .local v3, "sizeAfter":I
    if-eq v3, v0, :cond_1

    .line 3116
    const/4 v2, 0x1

    .line 3120
    .end local v3    # "sizeAfter":I
    :cond_1
    goto :goto_0

    .line 3118
    :catch_0
    move-exception v3

    .line 3119
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v2, 0x1

    .line 3121
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_0
    if-eqz v2, :cond_2

    .line 3122
    const-string v3, "WifiVendorHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversion failure detected in onDebugRingBufferDataAvailable. The input ArrayList |data| is potentially corrupted. Starting size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", final size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3126
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3122
    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    :cond_2
    return-void

    .line 3090
    .end local v0    # "sizeBefore":I
    .end local v1    # "eventHandler":Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    .end local v2    # "conversionFailure":Z
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    .line 3092
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public onChipReconfigureFailure(Landroid/hardware/wifi/V1_0/WifiStatus;)V
    .locals 3
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 3070
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChipReconfigureFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 3071
    return-void
.end method

.method public onChipReconfigured(I)V
    .locals 3
    .param p1, "modeId"    # I

    .line 3065
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChipReconfigured "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 3066
    return-void
.end method

.method public onDebugErrorAlert(ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 3133
    .local p2, "debugData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDebugErrorAlert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->w(Ljava/lang/String;)V

    .line 3134
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->access$1300(Lcom/android/server/wifi/WifiVendorHal;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$opFP1g0mCa0rIEtg63LvzlqySHc;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$opFP1g0mCa0rIEtg63LvzlqySHc;-><init>(Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3145
    return-void
.end method

.method public onDebugRingBufferDataAvailable(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 3087
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->access$1300(Lcom/android/server/wifi/WifiVendorHal;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$AqzJie2OoFIziDRxaXrZoSkKfNw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$AqzJie2OoFIziDRxaXrZoSkKfNw;-><init>(Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3129
    return-void
.end method

.method public onIfaceAdded(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 3074
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIfaceAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 3075
    return-void
.end method

.method public onIfaceRemoved(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 3079
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIfaceRemoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 3080
    return-void
.end method
