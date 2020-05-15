.class public Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedCapabilities"
.end annotation


# static fields
.field private static final RTT_RESP_ENABLE_BIT:I = 0x46

.field private static final SSID_UTF8_BIT:I = 0x30


# instance fields
.field public capabilitiesBitSet:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->capabilitiesBitSet:Ljava/util/BitSet;

    .line 372
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iget-object v0, p1, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->capabilitiesBitSet:Ljava/util/BitSet;

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->capabilitiesBitSet:Ljava/util/BitSet;

    .line 376
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 1
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 384
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->capabilitiesBitSet:Ljava/util/BitSet;

    .line 385
    return-void
.end method

.method public is80211McRTTResponder()Z
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->capabilitiesBitSet:Ljava/util/BitSet;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isStrictUtf8()Z
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->capabilitiesBitSet:Ljava/util/BitSet;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method
