.class public Lcom/android/server/connectivity/tethering/IControlsTethering;
.super Ljava/lang/Object;
.source "IControlsTethering.java"


# static fields
.field public static final STATE_AVAILABLE:I = 0x1

.field public static final STATE_LOCAL_ONLY:I = 0x3

.field public static final STATE_TETHERED:I = 0x2

.field public static final STATE_UNAVAILABLE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStateString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 37
    packed-switch p0, :pswitch_data_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :pswitch_0
    const-string v0, "LOCAL_ONLY"

    return-object v0

    .line 40
    :pswitch_1
    const-string v0, "TETHERED"

    return-object v0

    .line 39
    :pswitch_2
    const-string v0, "AVAILABLE"

    return-object v0

    .line 38
    :pswitch_3
    const-string v0, "UNAVAILABLE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public updateInterfaceState(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .locals 0
    .param p1, "who"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p2, "state"    # I
    .param p3, "lastError"    # I

    .line 55
    return-void
.end method

.method public updateLinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "who"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 65
    return-void
.end method
