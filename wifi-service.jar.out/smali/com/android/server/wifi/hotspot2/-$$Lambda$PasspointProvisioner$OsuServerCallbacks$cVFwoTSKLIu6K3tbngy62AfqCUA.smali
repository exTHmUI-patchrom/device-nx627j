.class public final synthetic Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$OsuServerCallbacks$cVFwoTSKLIu6K3tbngy62AfqCUA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$OsuServerCallbacks$cVFwoTSKLIu6K3tbngy62AfqCUA;->f$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;

    iput p2, p0, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$OsuServerCallbacks$cVFwoTSKLIu6K3tbngy62AfqCUA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$OsuServerCallbacks$cVFwoTSKLIu6K3tbngy62AfqCUA;->f$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$OsuServerCallbacks$cVFwoTSKLIu6K3tbngy62AfqCUA;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;->lambda$onServerValidationStatus$1(Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;I)V

    return-void
.end method
