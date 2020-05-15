.class public Landroid/hardware/location/ContextHubClientCallback;
.super Ljava/lang/Object;
.source "ContextHubClientCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHubReset(Landroid/hardware/location/ContextHubClient;)V
    .locals 0
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;

    .line 57
    return-void
.end method

.method public onMessageFromNanoApp(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V
    .locals 0
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 50
    return-void
.end method

.method public onNanoAppAborted(Landroid/hardware/location/ContextHubClient;JI)V
    .locals 0
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J
    .param p4, "abortCode"    # I

    .line 66
    return-void
.end method

.method public onNanoAppDisabled(Landroid/hardware/location/ContextHubClient;J)V
    .locals 0
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 98
    return-void
.end method

.method public onNanoAppEnabled(Landroid/hardware/location/ContextHubClient;J)V
    .locals 0
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 90
    return-void
.end method

.method public onNanoAppLoaded(Landroid/hardware/location/ContextHubClient;J)V
    .locals 0
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 74
    return-void
.end method

.method public onNanoAppUnloaded(Landroid/hardware/location/ContextHubClient;J)V
    .locals 0
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 82
    return-void
.end method
