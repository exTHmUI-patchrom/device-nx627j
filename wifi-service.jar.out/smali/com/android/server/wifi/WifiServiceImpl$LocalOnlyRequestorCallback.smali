.class public final Lcom/android/server/wifi/WifiServiceImpl$LocalOnlyRequestorCallback;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalOnlyRequestorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 260
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$LocalOnlyRequestorCallback;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalOnlyHotspotRequestorDeath(Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V
    .locals 1
    .param p1, "requestor"    # Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 267
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LocalOnlyRequestorCallback;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->access$000(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V

    .line 268
    return-void
.end method
