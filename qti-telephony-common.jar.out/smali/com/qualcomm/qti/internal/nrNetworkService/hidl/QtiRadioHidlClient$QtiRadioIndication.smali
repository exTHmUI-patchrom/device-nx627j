.class public Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;
.super Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;
.source "QtiRadioHidlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QtiRadioIndication"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "QtiRadioIndication"


# instance fields
.field mSlotId:I

.field final synthetic this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p2, "slotId"    # I

    .line 360
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;-><init>()V

    .line 361
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]Constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iput p2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    .line 363
    return-void
.end method


# virtual methods
.method public on5gConfigInfoChange(I)V
    .locals 6
    .param p1, "configType"    # I

    .line 420
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gConfigInfoChange: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$700(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/NrConfigType;

    move-result-object v0

    .line 422
    .local v0, "nrConfigType":Lorg/codeaurora/internal/NrConfigType;
    const-string v1, "QtiRadioIndication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on5gConfigInfoChange:  5gConfigType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$1000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    .line 425
    return-void
.end method

.method public on5gStatusChange(I)V
    .locals 6
    .param p1, "enableStatus"    # I

    .line 367
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gStatusChange: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 369
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 371
    .local v1, "enabled":Z
    :goto_0
    const-string v2, "QtiRadioIndication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on5gStatusChange: enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$1000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lorg/codeaurora/internal/Token;

    move-result-object v4

    new-instance v5, Lorg/codeaurora/internal/Status;

    invoke-direct {v5, v0}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 374
    .end local v1    # "enabled":Z
    :cond_1
    return-void
.end method

.method public onNrBearerAllocationChange(I)V
    .locals 0
    .param p1, "bearerStatus"    # I

    .line 395
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->onNrBearerAllocationChange_2_1(I)V

    .line 396
    return-void
.end method

.method public onNrBearerAllocationChange_2_1(I)V
    .locals 6
    .param p1, "bearerStatus"    # I

    .line 387
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrBearerAllocationChange: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$500(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/BearerAllocationStatus;

    move-result-object v0

    .line 389
    .local v0, "bStatus":Lorg/codeaurora/internal/BearerAllocationStatus;
    const-string v1, "QtiRadioIndication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNrBearerAllocationChange: bStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$1000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 391
    return-void
.end method

.method public onNrDcParamChange(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)V
    .locals 6
    .param p1, "dcParam"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    .line 379
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrDcParamChange: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$400(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lorg/codeaurora/internal/DcParam;

    move-result-object v0

    .line 381
    .local v0, "aidlDcParam":Lorg/codeaurora/internal/DcParam;
    const-string v1, "QtiRadioIndication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNrDcParamChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$1000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 383
    return-void
.end method

.method public onNrIconTypeChange(I)V
    .locals 6
    .param p1, "iconType"    # I

    .line 429
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrIconTypeChange: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$800(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/NrIconType;

    move-result-object v0

    .line 431
    .local v0, "nrIconType":Lorg/codeaurora/internal/NrIconType;
    const-string v1, "QtiRadioIndication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNrIconTypeChange:  NrIconType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$1000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 434
    return-void
.end method

.method public onSignalStrengthChange(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)V
    .locals 6
    .param p1, "signalStrength"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    .line 401
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthChange: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lorg/codeaurora/internal/SignalStrength;

    move-result-object v0

    .line 403
    .local v0, "aidlSignalStrength":Lorg/codeaurora/internal/SignalStrength;
    const-string v1, "QtiRadioIndication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalStrengthChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$1000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 406
    return-void
.end method

.method public onUpperLayerIndInfoChange(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)V
    .locals 6
    .param p1, "uliInfo"    # Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    .line 411
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpperLayerIndInfoChange: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$600(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lorg/codeaurora/internal/UpperLayerIndInfo;

    move-result-object v0

    .line 413
    .local v0, "upperLayerInfo":Lorg/codeaurora/internal/UpperLayerIndInfo;
    const-string v1, "QtiRadioIndication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpperLayerIndInfoChange:  upperLayerInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->mSlotId:I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->access$1000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 416
    return-void
.end method

.method public qtiRadioIndication(I)V
    .locals 2
    .param p1, "value"    # I

    .line 439
    const-string v0, "QtiRadioIndication"

    const-string v1, "qtiRadioIndication: NOP!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void
.end method
