.class Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPhoneStateListenerStub"
.end annotation


# instance fields
.field private mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/telephony/PhoneStateListener;)V
    .locals 1
    .param p1, "phoneStateListener"    # Landroid/telephony/PhoneStateListener;

    .line 642
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    .line 643
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    .line 644
    return-void
.end method

.method private send(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 647
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 648
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    if-eqz v0, :cond_0

    .line 649
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 651
    :cond_0
    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 3
    .param p1, "cfi"    # Z

    .line 666
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 667
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 675
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 676
    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 3
    .param p1, "active"    # Z

    .line 733
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    invoke-direct {p0, v2, v1, v1, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 734
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 695
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 696
    return-void
.end method

.method public onCellLocationChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 670
    invoke-static {p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 671
    .local v0, "location":Landroid/telephony/CellLocation;
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {p0, v2, v1, v1, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 672
    return-void
.end method

.method public onDataActivationStateChanged(I)V
    .locals 3
    .param p1, "activationState"    # I

    .line 721
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000

    invoke-direct {p0, v2, v1, v1, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 722
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .line 683
    const/16 v0, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 684
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .line 709
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 710
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 679
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 680
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 3
    .param p1, "mwi"    # Z

    .line 662
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 663
    return-void
.end method

.method public onOemHookRawEvent([B)V
    .locals 2
    .param p1, "rawData"    # [B

    .line 729
    const/4 v0, 0x0

    const v1, 0x8000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 730
    return-void
.end method

.method public onOtaspChanged(I)V
    .locals 3
    .param p1, "otaspMode"    # I

    .line 691
    const/16 v0, 0x200

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 692
    return-void
.end method

.method public onPhysicalChannelConfigurationChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 737
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x100000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 738
    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 2
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 699
    const/4 v0, 0x0

    const/16 v1, 0x800

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 700
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 704
    const/4 v0, 0x0

    const/16 v1, 0x1000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 705
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 654
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 655
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 3
    .param p1, "asu"    # I

    .line 658
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 659
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 687
    const/4 v0, 0x0

    const/16 v1, 0x100

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 688
    return-void
.end method

.method public onUserMobileDataStateChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 725
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x80000

    invoke-direct {p0, v2, v1, v1, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 726
    return-void
.end method

.method public onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 2
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    .line 713
    const/4 v0, 0x0

    const/16 v1, 0x4000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 714
    return-void
.end method

.method public onVoiceActivationStateChanged(I)V
    .locals 3
    .param p1, "activationState"    # I

    .line 717
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x20000

    invoke-direct {p0, v2, v1, v1, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 718
    return-void
.end method
