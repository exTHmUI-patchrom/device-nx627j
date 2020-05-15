.class public Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;
.super Ljava/lang/Object;
.source "TelephonyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/TelephonyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimAuthRequestData"
.end annotation


# instance fields
.field public data:[Ljava/lang/String;

.field public networkId:I

.field public protocol:I

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "networkId"    # I
    .param p2, "protocol"    # I
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "data"    # [Ljava/lang/String;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput p1, p0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    .line 418
    iput p2, p0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->protocol:I

    .line 419
    iput-object p3, p0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->ssid:Ljava/lang/String;

    .line 420
    iput-object p4, p0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->data:[Ljava/lang/String;

    .line 421
    return-void
.end method
