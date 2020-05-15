.class public final synthetic Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$GTqDpkw3tIstQq22m_peruc6pA4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

.field private final synthetic f$1:Landroid/net/wifi/hotspot2/OsuProvider;

.field private final synthetic f$2:Landroid/net/wifi/hotspot2/IProvisioningCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$GTqDpkw3tIstQq22m_peruc6pA4;->f$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$GTqDpkw3tIstQq22m_peruc6pA4;->f$1:Landroid/net/wifi/hotspot2/OsuProvider;

    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$GTqDpkw3tIstQq22m_peruc6pA4;->f$2:Landroid/net/wifi/hotspot2/IProvisioningCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$GTqDpkw3tIstQq22m_peruc6pA4;->f$0:Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$GTqDpkw3tIstQq22m_peruc6pA4;->f$1:Landroid/net/wifi/hotspot2/OsuProvider;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$GTqDpkw3tIstQq22m_peruc6pA4;->f$2:Landroid/net/wifi/hotspot2/IProvisioningCallback;

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->lambda$startSubscriptionProvisioning$1(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V

    return-void
.end method
