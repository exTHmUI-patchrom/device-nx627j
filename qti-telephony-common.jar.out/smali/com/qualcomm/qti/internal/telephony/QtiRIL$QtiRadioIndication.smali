.class public Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;
.super Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;
.source "QtiRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QtiRadioIndication"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "QtiRadioIndication"


# instance fields
.field mSlotId:I

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiRIL;
    .param p2, "slotId"    # I

    .line 649
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;-><init>()V

    .line 650
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

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->mSlotId:I

    .line 652
    return-void
.end method


# virtual methods
.method public on5gConfigInfoChange(I)V
    .locals 3
    .param p1, "confType"    # I

    .line 718
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gConfigInfoChange: ConfigType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->on5gConfigInfoChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 726
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public on5gStatusChange(I)V
    .locals 3
    .param p1, "enableStatus"    # I

    .line 656
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gStatusChange: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->on5gStatusChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 664
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNrBearerAllocationChange(I)V
    .locals 3
    .param p1, "bearerStatus"    # I

    .line 693
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrBearerAllocationChange: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->onNrBearerAllocationChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 701
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNrBearerAllocationChange_2_1(I)V
    .locals 3
    .param p1, "bearerStatus"    # I

    .line 681
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrBearerAllocationChange_2_1: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->onNrBearerAllocationChange_2_1(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 689
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNrDcParamChange(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)V
    .locals 3
    .param p1, "dcParam"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    .line 669
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrDcParamChange: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->onNrDcParamChange(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 677
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNrIconTypeChange(I)V
    .locals 3
    .param p1, "iconType"    # I

    .line 730
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrIconTypeChange: iconType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 733
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->onNrIconTypeChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    goto :goto_0

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 738
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onSignalStrengthChange(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    .line 743
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthChange: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->onSignalStrengthChange(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 751
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onUpperLayerIndInfoChange(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)V
    .locals 3
    .param p1, "uliInfo"    # Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    .line 706
    const-string v0, "QtiRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpperLayerIndInfoChange: UpperLayerIndInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 709
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->onUpperLayerIndInfoChange(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 714
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public qtiRadioIndication(I)V
    .locals 2
    .param p1, "value"    # I

    .line 755
    const-string v0, "QtiRadioIndication"

    const-string v1, "qtiRadioIndication: NOP!!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-void
.end method
