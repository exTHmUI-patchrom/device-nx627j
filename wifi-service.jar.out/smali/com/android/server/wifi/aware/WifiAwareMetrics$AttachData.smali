.class Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;
.super Ljava/lang/Object;
.source "WifiAwareMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachData"
.end annotation


# instance fields
.field mMaxConcurrentAttaches:I

.field mUsesIdentityCallback:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/aware/WifiAwareMetrics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/aware/WifiAwareMetrics$1;

    .line 84
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;-><init>()V

    return-void
.end method
