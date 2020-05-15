.class public final Lcom/android/server/wifi/WifiNative$TxFateReport;
.super Lcom/android/server/wifi/WifiNative$FateReport;
.source "WifiNative.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TxFateReport"
.end annotation


# direct methods
.method constructor <init>(BJB[B)V
    .locals 0
    .param p1, "fate"    # B
    .param p2, "driverTimestampUSec"    # J
    .param p4, "frameType"    # B
    .param p5, "frameBytes"    # [B

    .line 2785
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wifi/WifiNative$FateReport;-><init>(BJB[B)V

    .line 2786
    return-void
.end method


# virtual methods
.method protected directionToString()Ljava/lang/String;
    .locals 1

    .line 2790
    const-string v0, "TX"

    return-object v0
.end method

.method protected fateToString()Ljava/lang/String;
    .locals 1

    .line 2795
    iget-byte v0, p0, Lcom/android/server/wifi/WifiNative$TxFateReport;->mFate:B

    packed-switch v0, :pswitch_data_0

    .line 2817
    iget-byte v0, p0, Lcom/android/server/wifi/WifiNative$TxFateReport;->mFate:B

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2815
    :pswitch_0
    const-string v0, "driver dropped (other)"

    return-object v0

    .line 2813
    :pswitch_1
    const-string v0, "driver dropped (no bufs)"

    return-object v0

    .line 2811
    :pswitch_2
    const-string v0, "driver dropped (invalid frame)"

    return-object v0

    .line 2809
    :pswitch_3
    const-string v0, "driver queued"

    return-object v0

    .line 2807
    :pswitch_4
    const-string v0, "firmware dropped (other)"

    return-object v0

    .line 2805
    :pswitch_5
    const-string v0, "firmware dropped (no bufs)"

    return-object v0

    .line 2803
    :pswitch_6
    const-string v0, "firmware dropped (invalid frame)"

    return-object v0

    .line 2801
    :pswitch_7
    const-string v0, "firmware queued"

    return-object v0

    .line 2799
    :pswitch_8
    const-string v0, "sent"

    return-object v0

    .line 2797
    :pswitch_9
    const-string v0, "acked"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic toTableRowString()Ljava/lang/String;
    .locals 1

    .line 2782
    invoke-super {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->toTableRowString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toVerboseStringWithPiiAllowed()Ljava/lang/String;
    .locals 1

    .line 2782
    invoke-super {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->toVerboseStringWithPiiAllowed()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
