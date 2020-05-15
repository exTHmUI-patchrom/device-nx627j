.class public Lcom/android/server/wifi/hotspot2/WnmData;
.super Ljava/lang/Object;
.source "WnmData.java"


# static fields
.field public static final ESS:I = 0x1


# instance fields
.field private final mBssid:J

.field private final mDeauthEvent:Z

.field private final mDelay:I

.field private final mEss:Z

.field private final mMethod:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 2
    .param p1, "bssid"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "method"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mBssid:J

    .line 35
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mUrl:Ljava/lang/String;

    .line 36
    iput p4, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mMethod:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mEss:Z

    .line 38
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mDelay:I

    .line 39
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mDeauthEvent:Z

    .line 40
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ZI)V
    .locals 1
    .param p1, "bssid"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "ess"    # Z
    .param p5, "delay"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mBssid:J

    .line 44
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mUrl:Ljava/lang/String;

    .line 45
    iput-boolean p4, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mEss:Z

    .line 46
    iput p5, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mDelay:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mMethod:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mDeauthEvent:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getBssid()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mBssid:J

    return-wide v0
.end method

.method public getDelay()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mDelay:I

    return v0
.end method

.method public getMethod()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mMethod:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDeauthEvent()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mDeauthEvent:Z

    return v0
.end method

.method public isEss()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mEss:Z

    return v0
.end method
