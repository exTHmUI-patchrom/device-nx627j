.class public Landroid/net/wifi/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ScanResult$InformationElement;,
        Landroid/net/wifi/ScanResult$RadioChainInfo;
    }
.end annotation


# static fields
.field public static final CHANNEL_WIDTH_160MHZ:I = 0x3

.field public static final CHANNEL_WIDTH_20MHZ:I = 0x0

.field public static final CHANNEL_WIDTH_40MHZ:I = 0x1

.field public static final CHANNEL_WIDTH_80MHZ:I = 0x2

.field public static final CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x4

.field public static final CIPHER_CCMP:I = 0x3

.field public static final CIPHER_GCMP:I = 0x4

.field public static final CIPHER_NONE:I = 0x0

.field public static final CIPHER_NO_GROUP_ADDRESSED:I = 0x1

.field public static final CIPHER_SMS4:I = 0x5

.field public static final CIPHER_TKIP:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_80211mc_RESPONDER:J = 0x2L

.field public static final FLAG_PASSPOINT_NETWORK:J = 0x1L

.field public static final KEY_MGMT_DPP:I = 0xa

.field public static final KEY_MGMT_EAP:I = 0x2

.field public static final KEY_MGMT_EAP_SHA256:I = 0x6

.field public static final KEY_MGMT_EAP_SUITE_B_192:I = 0xd

.field public static final KEY_MGMT_FILS_SHA256:I = 0x8

.field public static final KEY_MGMT_FILS_SHA384:I = 0x9

.field public static final KEY_MGMT_FT_EAP:I = 0x4

.field public static final KEY_MGMT_FT_PSK:I = 0x3

.field public static final KEY_MGMT_NONE:I = 0x0

.field public static final KEY_MGMT_OSEN:I = 0x7

.field public static final KEY_MGMT_OWE:I = 0xc

.field public static final KEY_MGMT_PSK:I = 0x1

.field public static final KEY_MGMT_PSK_SHA256:I = 0x5

.field public static final KEY_MGMT_SAE:I = 0xb

.field public static final KEY_MGMT_WAPI_CERT:I = 0xf

.field public static final KEY_MGMT_WAPI_PSK:I = 0xe

.field public static final PROTOCOL_NONE:I = 0x0

.field public static final PROTOCOL_OSEN:I = 0x3

.field public static final PROTOCOL_WAPI:I = 0x4

.field public static final PROTOCOL_WPA:I = 0x1

.field public static final PROTOCOL_WPA2:I = 0x2

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public anqpDomainId:I

.field public anqpElements:[Landroid/net/wifi/AnqpInformationElement;

.field public anqpLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public capabilities:Ljava/lang/String;

.field public carrierApEapType:I

.field public carrierName:Ljava/lang/String;

.field public centerFreq0:I

.field public centerFreq1:I

.field public channelWidth:I

.field public distanceCm:I

.field public distanceSdCm:I

.field public flags:J

.field public frequency:I

.field public hessid:J

.field public informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

.field public is80211McRTTResponder:Z

.field public isCarrierAp:Z

.field public level:I

.field public numUsage:I

.field public operatorFriendlyName:Ljava/lang/CharSequence;

.field public radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

.field public seen:J

.field public timestamp:J

.field public untrusted:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public venueName:Ljava/lang/CharSequence;

.field public wifiSsid:Landroid/net/wifi/WifiSsid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 774
    new-instance v0, Landroid/net/wifi/ScanResult$1;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/ScanResult;

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    if-eqz p1, :cond_0

    .line 621
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 622
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 623
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 624
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->hessid:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->hessid:J

    .line 625
    iget v0, p1, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    .line 626
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 627
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 628
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 629
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 630
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 631
    iget v0, p1, Landroid/net/wifi/ScanResult;->channelWidth:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 632
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 633
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 634
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 635
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceCm:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 636
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 637
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->seen:J

    .line 638
    iget-boolean v0, p1, Landroid/net/wifi/ScanResult;->untrusted:Z

    iput-boolean v0, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 639
    iget v0, p1, Landroid/net/wifi/ScanResult;->numUsage:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 640
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    .line 641
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 642
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->flags:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 643
    iget-boolean v0, p1, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    .line 644
    iget v0, p1, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    .line 645
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    .line 646
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 648
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V
    .locals 16
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "osuProviders"    # [B
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 529
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 531
    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "<unknown ssid>"

    :goto_0
    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 532
    move-object/from16 v3, p2

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 533
    move-wide/from16 v4, p3

    iput-wide v4, v0, Landroid/net/wifi/ScanResult;->hessid:J

    .line 534
    move/from16 v6, p5

    iput v6, v0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    .line 535
    const/4 v7, 0x0

    if-eqz v2, :cond_1

    .line 536
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/net/wifi/AnqpInformationElement;

    iput-object v8, v0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 537
    iget-object v8, v0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    new-instance v9, Landroid/net/wifi/AnqpInformationElement;

    const v10, 0x506f9a

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v2}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    aput-object v9, v8, v7

    .line 541
    :cond_1
    move-object/from16 v8, p7

    iput-object v8, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 542
    move/from16 v9, p8

    iput v9, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 543
    move/from16 v10, p9

    iput v10, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 544
    move-wide/from16 v11, p10

    iput-wide v11, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 545
    const/4 v13, -0x1

    iput v13, v0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 546
    iput v13, v0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 547
    iput v13, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 548
    iput v13, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 549
    iput v13, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 550
    const-wide/16 v14, 0x0

    iput-wide v14, v0, Landroid/net/wifi/ScanResult;->flags:J

    .line 551
    iput-boolean v7, v0, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    .line 552
    iput v13, v0, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    .line 553
    const/4 v7, 0x0

    iput-object v7, v0, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    .line 554
    iput-object v7, v0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 555
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V
    .locals 3
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 561
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown ssid>"

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 562
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 563
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 564
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 565
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 566
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 567
    iput p8, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 568
    iput p9, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 569
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 570
    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 571
    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 572
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 573
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    .line 574
    iput v0, p0, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    .line 576
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 577
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 17
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "Ssid"    # Ljava/lang/String;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "hessid"    # J
    .param p6, "anqpDomainId"    # I
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J
    .param p12, "distCm"    # I
    .param p13, "distSdCm"    # I
    .param p14, "channelWidth"    # I
    .param p15, "centerFreq0"    # I
    .param p16, "centerFreq1"    # I
    .param p17, "is80211McRTTResponder"    # Z

    .line 613
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-wide/from16 v9, p10

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    move/from16 v16, p17

    invoke-direct/range {v0 .. v16}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    .line 615
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 616
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 17
    .param p1, "Ssid"    # Ljava/lang/String;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "caps"    # Ljava/lang/String;
    .param p7, "level"    # I
    .param p8, "frequency"    # I
    .param p9, "tsf"    # J
    .param p11, "distCm"    # I
    .param p12, "distSdCm"    # I
    .param p13, "channelWidth"    # I
    .param p14, "centerFreq0"    # I
    .param p15, "centerFreq1"    # I
    .param p16, "is80211McRTTResponder"    # Z

    move-object/from16 v0, p0

    .line 583
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 584
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 585
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 586
    move-wide/from16 v3, p3

    iput-wide v3, v0, Landroid/net/wifi/ScanResult;->hessid:J

    .line 587
    move/from16 v5, p5

    iput v5, v0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    .line 588
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 589
    move/from16 v7, p7

    iput v7, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 590
    move/from16 v8, p8

    iput v8, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 591
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 592
    move/from16 v11, p11

    iput v11, v0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 593
    move/from16 v12, p12

    iput v12, v0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 594
    move/from16 v13, p13

    iput v13, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 595
    move/from16 v14, p14

    iput v14, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 596
    move/from16 v15, p15

    iput v15, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 597
    if-eqz p16, :cond_0

    .line 598
    const-wide/16 v1, 0x2

    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->flags:J

    goto :goto_0

    .line 600
    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->flags:J

    .line 602
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    .line 603
    const/4 v1, -0x1

    iput v1, v0, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    .line 604
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    .line 605
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 606
    return-void
.end method

.method public static is24GHz(I)Z
    .locals 1
    .param p0, "freq"    # I

    .line 436
    const/16 v0, 0x960

    if-le p0, v0, :cond_0

    const/16 v0, 0x9c4

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is5GHz(I)Z
    .locals 1
    .param p0, "freq"    # I

    .line 451
    const/16 v0, 0x1324

    if-le p0, v0, :cond_0

    const/16 v0, 0x170c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clearFlag(J)V
    .locals 4
    .param p1, "flag"    # J

    .line 398
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    not-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 399
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 696
    const/4 v0, 0x0

    return v0
.end method

.method public is24GHz()Z
    .locals 1

    .line 428
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public is5GHz()Z
    .locals 1

    .line 443
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public is80211mcResponder()Z
    .locals 4

    .line 402
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPasspointNetwork()Z
    .locals 4

    .line 406
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFlag(J)V
    .locals 2
    .param p1, "flag"    # J

    .line 389
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 390
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 659
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 660
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "<none>"

    .line 662
    .local v1, "none":Ljava/lang/String;
    const-string v2, "SSID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v2, :cond_0

    const-string v2, "<unknown ssid>"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", BSSID: "

    .line 664
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", capabilities: "

    .line 666
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", level: "

    .line 668
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 669
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", frequency: "

    .line 670
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 671
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", timestamp: "

    .line 672
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 673
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 675
    const-string v2, ", distance: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_3
    const-string v2, "?"

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "(cm)"

    .line 676
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 677
    const-string v2, ", distanceSd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    :cond_4
    const-string v2, "?"

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "(cm)"

    .line 678
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    const-string v2, ", passpoint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 681
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const-string/jumbo v2, "yes"

    goto :goto_5

    :cond_5
    const-string/jumbo v2, "no"

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    const-string v2, ", ChannelBandwidth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 683
    const-string v2, ", centerFreq0: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 684
    const-string v2, ", centerFreq1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 685
    const-string v2, ", 80211mcResponder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 686
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v6, 0x2

    and-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    const-string v2, "is supported"

    goto :goto_6

    :cond_6
    const-string v2, "is not supported"

    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 687
    const-string v2, ", Carrier AP: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "yes"

    goto :goto_7

    :cond_7
    const-string/jumbo v2, "no"

    :goto_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 688
    const-string v2, ", Carrier AP EAP Type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 689
    const-string v2, ", Carrier name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    const-string v2, ", Radio Chain Infos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 701
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 702
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 709
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->hessid:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 710
    iget v0, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 712
    iget v0, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 715
    iget v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    iget v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    iget v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    iget v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    iget v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->seen:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 721
    iget-boolean v0, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    iget v0, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 725
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 727
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    if-eqz v0, :cond_3

    .line 728
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    move v0, v1

    .local v0, "i":I
    :goto_3
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 730
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 735
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 739
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    move v0, v1

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 741
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 745
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    if-eqz v0, :cond_7

    .line 748
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    array-length v2, v0

    move v3, v1

    :goto_5
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    .line 750
    .local v4, "element":Landroid/net/wifi/AnqpInformationElement;
    invoke-virtual {v4}, Landroid/net/wifi/AnqpInformationElement;->getVendorId()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    invoke-virtual {v4}, Landroid/net/wifi/AnqpInformationElement;->getElementId()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    invoke-virtual {v4}, Landroid/net/wifi/AnqpInformationElement;->getPayload()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    invoke-virtual {v4}, Landroid/net/wifi/AnqpInformationElement;->getPayload()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 749
    .end local v4    # "element":Landroid/net/wifi/AnqpInformationElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 756
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    :cond_8
    iget-boolean v0, p0, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    iget v0, p0, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    if-eqz v0, :cond_9

    .line 763
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    nop

    .local v1, "i":I
    :goto_6
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    .line 765
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_6

    .line 769
    .end local v1    # "i":I
    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    :cond_a
    return-void
.end method
