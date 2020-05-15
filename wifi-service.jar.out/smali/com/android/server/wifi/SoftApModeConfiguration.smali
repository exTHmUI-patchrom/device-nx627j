.class public Lcom/android/server/wifi/SoftApModeConfiguration;
.super Ljava/lang/Object;
.source "SoftApModeConfiguration.java"


# instance fields
.field final mConfig:Landroid/net/wifi/WifiConfiguration;

.field final mTargetMode:I


# direct methods
.method constructor <init>(ILandroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "targetMode"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/server/wifi/SoftApModeConfiguration;->mTargetMode:I

    .line 32
    iput-object p2, p0, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 33
    return-void
.end method


# virtual methods
.method public getTargetMode()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/android/server/wifi/SoftApModeConfiguration;->mTargetMode:I

    return v0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method
