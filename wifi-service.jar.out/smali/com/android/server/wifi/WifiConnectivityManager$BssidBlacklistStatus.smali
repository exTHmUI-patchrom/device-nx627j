.class Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BssidBlacklistStatus"
.end annotation


# instance fields
.field public blacklistedTimeStamp:J

.field public counter:I

.field public isBlacklisted:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->blacklistedTimeStamp:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager$1;

    .line 189
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;-><init>()V

    return-void
.end method
