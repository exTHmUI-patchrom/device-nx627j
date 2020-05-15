.class public final Landroid/net/wifi/rtt/ResponderConfig;
.super Ljava/lang/Object;
.source "ResponderConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/ResponderConfig$PreambleType;,
        Landroid/net/wifi/rtt/ResponderConfig$ChannelWidth;,
        Landroid/net/wifi/rtt/ResponderConfig$ResponderType;
    }
.end annotation


# static fields
.field private static final AWARE_BAND_2_DISCOVERY_CHANNEL:I = 0x985

.field public static final CHANNEL_WIDTH_160MHZ:I = 0x3

.field public static final CHANNEL_WIDTH_20MHZ:I = 0x0

.field public static final CHANNEL_WIDTH_40MHZ:I = 0x1

.field public static final CHANNEL_WIDTH_80MHZ:I = 0x2

.field public static final CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREAMBLE_HT:I = 0x1

.field public static final PREAMBLE_LEGACY:I = 0x0

.field public static final PREAMBLE_VHT:I = 0x2

.field public static final RESPONDER_AP:I = 0x0

.field public static final RESPONDER_AWARE:I = 0x4

.field public static final RESPONDER_P2P_CLIENT:I = 0x3

.field public static final RESPONDER_P2P_GO:I = 0x2

.field public static final RESPONDER_STA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResponderConfig"


# instance fields
.field public final centerFreq0:I

.field public final centerFreq1:I

.field public final channelWidth:I

.field public final frequency:I

.field public final macAddress:Landroid/net/MacAddress;

.field public final peerHandle:Landroid/net/wifi/aware/PeerHandle;

.field public final preamble:I

.field public final responderType:I

.field public final supports80211mc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 409
    new-instance v0, Landroid/net/wifi/rtt/ResponderConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/ResponderConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/ResponderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/MacAddress;IZIIIII)V
    .locals 2
    .param p1, "macAddress"    # Landroid/net/MacAddress;
    .param p2, "responderType"    # I
    .param p3, "supports80211mc"    # Z
    .param p4, "channelWidth"    # I
    .param p5, "frequency"    # I
    .param p6, "centerFreq0"    # I
    .param p7, "centerFreq1"    # I
    .param p8, "preamble"    # I

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    if-eqz p1, :cond_0

    .line 207
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 209
    iput p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 210
    iput-boolean p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    .line 211
    iput p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    .line 212
    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 213
    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    .line 214
    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    .line 215
    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    .line 216
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ResponderConfig - must specify a MAC address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/net/MacAddress;Landroid/net/wifi/aware/PeerHandle;IZIIIII)V
    .locals 0
    .param p1, "macAddress"    # Landroid/net/MacAddress;
    .param p2, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p3, "responderType"    # I
    .param p4, "supports80211mc"    # Z
    .param p5, "channelWidth"    # I
    .param p6, "frequency"    # I
    .param p7, "centerFreq0"    # I
    .param p8, "centerFreq1"    # I
    .param p9, "preamble"    # I

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    .line 282
    iput-object p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 283
    iput p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 284
    iput-boolean p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    .line 285
    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    .line 286
    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 287
    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    .line 288
    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    .line 289
    iput p9, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/aware/PeerHandle;IZIIIII)V
    .locals 1
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "responderType"    # I
    .param p3, "supports80211mc"    # Z
    .param p4, "channelWidth"    # I
    .param p5, "frequency"    # I
    .param p6, "centerFreq0"    # I
    .param p7, "centerFreq1"    # I
    .param p8, "preamble"    # I

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    .line 243
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 244
    iput p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 245
    iput-boolean p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    .line 246
    iput p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    .line 247
    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 248
    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    .line 249
    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    .line 250
    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    .line 251
    return-void
.end method

.method public static fromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/ResponderConfig;
    .locals 18
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v1

    .line 298
    .local v1, "macAddress":Landroid/net/MacAddress;
    const/4 v11, 0x0

    .line 299
    .local v11, "responderType":I
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/ScanResult;->is80211mcResponder()Z

    move-result v12

    .line 300
    .local v12, "supports80211mc":Z
    iget v2, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-static {v2}, Landroid/net/wifi/rtt/ResponderConfig;->translateScanResultChannelWidth(I)I

    move-result v13

    .line 301
    .local v13, "channelWidth":I
    iget v14, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 302
    .local v14, "frequency":I
    iget v15, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 303
    .local v15, "centerFreq0":I
    iget v9, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 306
    .local v9, "centerFreq1":I
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v2, v2

    if-eqz v2, :cond_5

    .line 307
    const/4 v2, 0x0

    .line 308
    .local v2, "htCapabilitiesPresent":Z
    const/4 v3, 0x0

    .line 309
    .local v3, "vhtCapabilitiesPresent":Z
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v5, v4

    move v7, v2

    const/4 v2, 0x0

    .end local v2    # "htCapabilitiesPresent":Z
    .local v7, "htCapabilitiesPresent":Z
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v8, v4, v2

    .line 310
    .local v8, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iget v10, v8, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v6, 0x2d

    if-ne v10, v6, :cond_0

    .line 311
    const/4 v6, 0x1

    .line 309
    .end local v7    # "htCapabilitiesPresent":Z
    .local v6, "htCapabilitiesPresent":Z
    move v7, v6

    goto :goto_1

    .line 312
    .end local v6    # "htCapabilitiesPresent":Z
    .restart local v7    # "htCapabilitiesPresent":Z
    :cond_0
    iget v6, v8, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v10, 0xbf

    if-ne v6, v10, :cond_1

    .line 313
    const/4 v3, 0x1

    .line 309
    .end local v8    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_2
    if-eqz v3, :cond_3

    .line 317
    const/4 v6, 0x2

    .end local v3    # "vhtCapabilitiesPresent":Z
    .end local v7    # "htCapabilitiesPresent":Z
    .local v6, "preamble":I
    :goto_2
    goto :goto_3

    .line 318
    .end local v6    # "preamble":I
    .restart local v3    # "vhtCapabilitiesPresent":Z
    .restart local v7    # "htCapabilitiesPresent":Z
    :cond_3
    if-eqz v7, :cond_4

    .line 319
    const/4 v6, 0x1

    goto :goto_2

    .line 321
    :cond_4
    nop

    .end local v3    # "vhtCapabilitiesPresent":Z
    .end local v7    # "htCapabilitiesPresent":Z
    const/4 v6, 0x0

    .restart local v6    # "preamble":I
    :goto_3
    move v2, v6

    .line 323
    .end local v6    # "preamble":I
    .local v2, "preamble":I
    goto :goto_5

    .line 324
    .end local v2    # "preamble":I
    :cond_5
    const-string v2, "ResponderConfig"

    const-string v3, "Scan Results do not contain IEs - using backup method to select preamble"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v2, 0x2

    if-eq v13, v2, :cond_7

    const/4 v2, 0x3

    if-ne v13, v2, :cond_6

    goto :goto_4

    .line 328
    :cond_6
    const/4 v2, 0x1

    goto :goto_5

    .line 326
    :cond_7
    :goto_4
    const/4 v2, 0x2

    .line 328
    .local v10, "preamble":I
    :goto_5
    move v10, v2

    .line 332
    new-instance v16, Landroid/net/wifi/rtt/ResponderConfig;

    move-object/from16 v2, v16

    move-object v3, v1

    move v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v15

    move/from16 v17, v9

    .end local v9    # "centerFreq1":I
    .local v17, "centerFreq1":I
    invoke-direct/range {v2 .. v10}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/MacAddress;IZIIIII)V

    return-object v16
.end method

.method public static fromWifiAwarePeerHandleWithDefaults(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/ResponderConfig;
    .locals 10
    .param p0, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;

    .line 360
    new-instance v9, Landroid/net/wifi/rtt/ResponderConfig;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x985

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/wifi/aware/PeerHandle;IZIIIII)V

    return-object v9
.end method

.method public static fromWifiAwarePeerMacAddressWithDefaults(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/ResponderConfig;
    .locals 10
    .param p0, "macAddress"    # Landroid/net/MacAddress;

    .line 346
    new-instance v9, Landroid/net/wifi/rtt/ResponderConfig;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x985

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/MacAddress;IZIIIII)V

    return-object v9
.end method

.method static translateScanResultChannelWidth(I)I
    .locals 3
    .param p0, "scanResultChannelWidth"    # I

    .line 484
    packed-switch p0, :pswitch_data_0

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateScanResultChannelWidth: bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 492
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 490
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 488
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 486
    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 447
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 448
    return v0

    .line 451
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/rtt/ResponderConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 452
    return v2

    .line 455
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/rtt/ResponderConfig;

    .line 457
    .local v1, "lhs":Landroid/net/wifi/rtt/ResponderConfig;
    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget-object v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    iget-boolean v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 466
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 467
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 466
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid(Z)Z
    .locals 3
    .param p1, "awareSupported"    # Z

    .line 371
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v0, :cond_2

    .line 372
    :cond_1
    return v1

    .line 374
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 375
    return v1

    .line 378
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 473
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ResponderConfig: macAddress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", peerHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v1, :cond_0

    const-string v1, "<null>"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v1, v1, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", responderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", supports80211mc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", channelWidth="

    .line 476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", centerFreq0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", centerFreq1="

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", preamble="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 388
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 392
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, p1, p2}, Landroid/net/MacAddress;->writeToParcel(Landroid/os/Parcel;I)V

    .line 394
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v0, :cond_1

    .line 395
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    .line 397
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 398
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v0, v0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    :goto_1
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    return-void
.end method
