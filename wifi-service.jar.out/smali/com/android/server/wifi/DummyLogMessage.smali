.class public Lcom/android/server/wifi/DummyLogMessage;
.super Ljava/lang/Object;
.source "DummyLogMessage.java"

# interfaces
.implements Lcom/android/server/wifi/WifiLog$LogMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(C)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 0
    .param p1, "value"    # C

    .line 38
    return-object p0
.end method

.method public c(J)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 0
    .param p1, "value"    # J

    .line 33
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method public c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 0
    .param p1, "value"    # Z

    .line 43
    return-object p0
.end method

.method public flush()V
    .locals 0

    .line 49
    return-void
.end method

.method public r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 23
    return-object p0
.end method
