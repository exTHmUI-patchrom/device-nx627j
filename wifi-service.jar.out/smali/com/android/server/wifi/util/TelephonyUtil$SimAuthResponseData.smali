.class public Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;
.super Ljava/lang/Object;
.source "TelephonyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/TelephonyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimAuthResponseData"
.end annotation


# instance fields
.field public response:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;->type:Ljava/lang/String;

    .line 437
    iput-object p2, p0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;->response:Ljava/lang/String;

    .line 438
    return-void
.end method
