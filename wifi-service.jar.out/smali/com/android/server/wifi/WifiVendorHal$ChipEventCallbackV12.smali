.class Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;
.super Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$Stub;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChipEventCallbackV12"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0

    .line 3151
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiVendorHal;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiVendorHal$1;

    .line 3151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    return-void
.end method

.method private areSameIfaceNames(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;",
            ">;)Z"
        }
    .end annotation

    .line 3184
    .local p1, "ifaceList1":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;>;"
    .local p2, "ifaceList2":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;>;"
    nop

    .line 3185
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallbackV12$SrMSOw3LUVF_Z64G_aL0Tguwt3A;->INSTANCE:Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallbackV12$SrMSOw3LUVF_Z64G_aL0Tguwt3A;

    .line 3186
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 3187
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3188
    .local v0, "ifaceNamesList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 3189
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallbackV12$nAuRYe8SQ_MJ2XaULMZNtUE0izo;->INSTANCE:Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallbackV12$nAuRYe8SQ_MJ2XaULMZNtUE0izo;

    .line 3190
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3191
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3192
    .local v1, "ifaceNamesList2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method private areSameIfaces(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;",
            ">;)Z"
        }
    .end annotation

    .line 3196
    .local p1, "ifaceList1":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;>;"
    .local p2, "ifaceList2":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$areSameIfaceNames$0(Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;

    .line 3186
    iget-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$areSameIfaceNames$1(Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;

    .line 3190
    iget-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onChipReconfigureFailure(Landroid/hardware/wifi/V1_0/WifiStatus;)V
    .locals 1
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 3160
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->access$1600(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->onChipReconfigureFailure(Landroid/hardware/wifi/V1_0/WifiStatus;)V

    .line 3161
    return-void
.end method

.method public onChipReconfigured(I)V
    .locals 1
    .param p1, "modeId"    # I

    .line 3155
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->access$1600(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->onChipReconfigured(I)V

    .line 3156
    return-void
.end method

.method public onDebugErrorAlert(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 3180
    .local p2, "debugData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->access$1600(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->onDebugErrorAlert(ILjava/util/ArrayList;)V

    .line 3181
    return-void
.end method

.method public onDebugRingBufferDataAvailable(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;Ljava/util/ArrayList;)V
    .locals 1
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

    .line 3175
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->access$1600(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->onDebugRingBufferDataAvailable(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;Ljava/util/ArrayList;)V

    .line 3176
    return-void
.end method

.method public onIfaceAdded(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 3164
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->access$1600(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->onIfaceAdded(ILjava/lang/String;)V

    .line 3165
    return-void
.end method

.method public onIfaceRemoved(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 3169
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->access$1600(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->onIfaceRemoved(ILjava/lang/String;)V

    .line 3170
    return-void
.end method

.method public onRadioModeChange(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;",
            ">;)V"
        }
    .end annotation

    .line 3201
    .local p1, "radioModeInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioModeChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 3203
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3204
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->access$1700(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;

    move-result-object v1

    if-eqz v1, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 3205
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->access$1700(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;

    move-result-object v1

    .line 3206
    .local v1, "handler":Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3208
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    goto/16 :goto_3

    .line 3212
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;

    .line 3214
    .local v3, "radioModeInfo0":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v2, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 3216
    .local v4, "radioModeInfo1":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;
    :goto_0
    if-eqz v4, :cond_3

    iget-object v6, v3, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    .line 3217
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, v4, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 3218
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected number of iface info in list "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    .line 3219
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    .line 3220
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3218
    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->e(Ljava/lang/String;)V

    .line 3221
    return-void

    .line 3223
    :cond_3
    iget-object v6, v3, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3225
    .local v6, "numIfacesOnEachRadio":I
    if-eqz v6, :cond_a

    if-le v6, v2, :cond_4

    goto :goto_2

    .line 3230
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v2, :cond_7

    if-ne v6, v5, :cond_7

    .line 3232
    iget-object v0, v3, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    iget-object v2, v4, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->areSameIfaceNames(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3233
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Unexpected for both radio infos to have same iface"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->e(Ljava/lang/String;)V

    .line 3234
    return-void

    .line 3236
    :cond_5
    iget v0, v3, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    iget v2, v4, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    if-eq v0, v2, :cond_6

    .line 3237
    invoke-interface {v1}, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;->onDbs()V

    goto :goto_1

    .line 3239
    :cond_6
    iget v0, v3, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;->onSbs(I)V

    goto :goto_1

    .line 3242
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v5, :cond_9

    if-ne v6, v2, :cond_9

    .line 3243
    iget-object v2, v3, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;

    .line 3244
    .local v0, "ifaceInfo0":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;
    iget-object v2, v3, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;

    .line 3245
    .local v2, "ifaceInfo1":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;
    iget v5, v0, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->channel:I

    iget v7, v2, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->channel:I

    if-eq v5, v7, :cond_8

    .line 3246
    iget v5, v3, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    invoke-interface {v1, v5}, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;->onMcc(I)V

    goto :goto_1

    .line 3248
    :cond_8
    iget v5, v3, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    invoke-interface {v1, v5}, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;->onScc(I)V

    .line 3253
    .end local v0    # "ifaceInfo0":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;
    .end local v2    # "ifaceInfo1":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;
    :cond_9
    :goto_1
    return-void

    .line 3226
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected number of iface info in list "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->e(Ljava/lang/String;)V

    .line 3227
    return-void

    .line 3209
    .end local v3    # "radioModeInfo0":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;
    .end local v4    # "radioModeInfo1":Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;
    .end local v6    # "numIfacesOnEachRadio":I
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected number of radio info in list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->e(Ljava/lang/String;)V

    .line 3210
    return-void

    .line 3204
    .end local v1    # "handler":Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;
    :cond_c
    :goto_4
    :try_start_1
    monitor-exit v0

    return-void

    .line 3206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
