.class public Lcom/android/server/wifi/WifiNative$HiddenNetwork;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HiddenNetwork"
.end annotation


# instance fields
.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 2233
    if-ne p0, p1, :cond_0

    .line 2234
    const/4 v0, 0x1

    return v0

    .line 2235
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2238
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    .line 2239
    .local v0, "other":Lcom/android/server/wifi/WifiNative$HiddenNetwork;
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$HiddenNetwork;->ssid:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wifi/WifiNative$HiddenNetwork;->ssid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2236
    .end local v0    # "other":Lcom/android/server/wifi/WifiNative$HiddenNetwork;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 2244
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$HiddenNetwork;->ssid:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$HiddenNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
